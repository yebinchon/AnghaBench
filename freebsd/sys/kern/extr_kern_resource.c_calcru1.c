
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int uint64_t ;
struct timeval {int tv_sec; int tv_usec; } ;
struct rusage_ext {int rux_uticks; int rux_sticks; int rux_iticks; int rux_tu; int rux_uu; int rux_su; int rux_runtime; } ;
struct proc {int p_comm; int p_pid; } ;
typedef int intmax_t ;
typedef scalar_t__ int64_t ;


 scalar_t__ __predict_true (int) ;
 int cputick2usec (int ) ;
 int mul64_by_fraction (int,int,int) ;
 int printf (char*,int ,int ,int ,...) ;

__attribute__((used)) static void
calcru1(struct proc *p, struct rusage_ext *ruxp, struct timeval *up,
    struct timeval *sp)
{

 uint64_t ut, uu, st, su, it, tt, tu;

 ut = ruxp->rux_uticks;
 st = ruxp->rux_sticks;
 it = ruxp->rux_iticks;
 tt = ut + st + it;
 if (tt == 0) {

  st = 1;
  tt = 1;
 }
 tu = cputick2usec(ruxp->rux_runtime);
 if ((int64_t)tu < 0) {

  printf("calcru: negative runtime of %jd usec for pid %d (%s)\n",
      (intmax_t)tu, p->p_pid, p->p_comm);
  tu = ruxp->rux_tu;
 }


 if (__predict_true(tu <= ((uint64_t)1 << 38) && tt <= (1 << 26))) {

  uu = (tu * ut) / tt;
  su = (tu * st) / tt;
 } else {
  uu = mul64_by_fraction(tu, ut, tt);
  su = mul64_by_fraction(tu, st, tt);
 }

 if (tu >= ruxp->rux_tu) {




  if (uu < ruxp->rux_uu)
   uu = ruxp->rux_uu;
  if (su < ruxp->rux_su)
   su = ruxp->rux_su;
 } else if (tu + 3 > ruxp->rux_tu || 101 * tu > 100 * ruxp->rux_tu) {
  uu = ruxp->rux_uu;
  su = ruxp->rux_su;
  tu = ruxp->rux_tu;
 } else {
  printf("calcru: runtime went backwards from %ju usec "
      "to %ju usec for pid %d (%s)\n",
      (uintmax_t)ruxp->rux_tu, (uintmax_t)tu,
      p->p_pid, p->p_comm);
 }

 ruxp->rux_uu = uu;
 ruxp->rux_su = su;
 ruxp->rux_tu = tu;

 up->tv_sec = uu / 1000000;
 up->tv_usec = uu % 1000000;
 sp->tv_sec = su / 1000000;
 sp->tv_usec = su % 1000000;
}
