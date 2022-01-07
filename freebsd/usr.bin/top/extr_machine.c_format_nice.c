
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pri_native; int pri_user; int pri_class; } ;
struct kinfo_proc {int ki_flag; int ki_nice; TYPE_1__ ki_pri; } ;
typedef int nicebuf ;


 int NZERO ;
 int PRI_BASE (int ) ;


 int PRI_MIN_IDLE ;
 int PRI_MIN_REALTIME ;
 scalar_t__ PRI_NEED_RR (int ) ;


 int P_KPROC ;
 int snprintf (char*,int,char*,...) ;

__attribute__((used)) static const char *
format_nice(const struct kinfo_proc *pp)
{
 const char *fifo, *kproc;
 int rtpri;
 static char nicebuf[4 + 1];

 fifo = PRI_NEED_RR(pp->ki_pri.pri_class) ? "" : "F";
 kproc = (pp->ki_flag & P_KPROC) ? "k" : "";
 switch (PRI_BASE(pp->ki_pri.pri_class)) {
 case 130:
  return ("-");
 case 129:
  rtpri = ((pp->ki_flag & P_KPROC) ? pp->ki_pri.pri_native :
      pp->ki_pri.pri_user) - PRI_MIN_REALTIME;
  snprintf(nicebuf, sizeof(nicebuf), "%sr%d%s",
      kproc, rtpri, fifo);
  break;
 case 128:
  if (pp->ki_flag & P_KPROC)
   return ("-");
  snprintf(nicebuf, sizeof(nicebuf), "%d", pp->ki_nice - NZERO);
  break;
 case 131:

  rtpri = ((pp->ki_flag & P_KPROC) ? pp->ki_pri.pri_native :
      pp->ki_pri.pri_user) - PRI_MIN_IDLE;
  snprintf(nicebuf, sizeof(nicebuf), "%si%d%s",
      kproc, rtpri, fifo);
  break;
 default:
  return ("?");
 }
 return (nicebuf);
}
