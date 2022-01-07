
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int kaddr ;
typedef int inamlen ;
struct TYPE_2__ {scalar_t__ n_type; } ;


 int X_INTRNAMES ;
 size_t X_NINTRCNT ;
 int X_SINTRNAMES ;
 unsigned long* calloc (unsigned int,int) ;
 int free (unsigned long*) ;
 long long getuptime () ;
 int * kd ;
 int kread (int ,...) ;
 int kreadptr (uintptr_t,char*,size_t) ;
 char* malloc (size_t) ;
 scalar_t__ mysysctl (char*,char*,size_t*) ;
 TYPE_1__* namelist ;
 int print_intrcnts (unsigned long*,unsigned long*,char*,unsigned int,size_t,long long) ;
 unsigned int read_intrcnts (unsigned long**) ;
 char* reallocf (char*,size_t) ;
 int strlen (char*) ;
 int usleep (unsigned int) ;
 int xo_close_container (char*) ;
 int xo_emit (char*,int,char*,char*,char*) ;
 int xo_err (int,char*) ;
 int xo_flush () ;
 int xo_open_container (char*) ;

__attribute__((used)) static void
dointr(unsigned int interval, int reps)
{
 unsigned long *intrcnts, *old_intrcnts;
 char *intrname, *intrnames;
 long long period_ms, old_uptime, uptime;
 size_t clen, inamlen, istrnamlen;
 uintptr_t kaddr;
 unsigned int nintr;

 old_intrcnts = ((void*)0);
 uptime = getuptime();


 if (kd != ((void*)0)) {
  kread(X_SINTRNAMES, &inamlen, sizeof(inamlen));
  if ((intrnames = malloc(inamlen)) == ((void*)0))
   xo_err(1, "malloc()");
  if (namelist[X_NINTRCNT].n_type == 0)
   kread(X_INTRNAMES, intrnames, inamlen);
  else {
   kread(X_INTRNAMES, &kaddr, sizeof(kaddr));
   kreadptr(kaddr, intrnames, inamlen);
  }
 } else {
  for (intrnames = ((void*)0), inamlen = 1024; ; inamlen *= 2) {
   if ((intrnames = reallocf(intrnames, inamlen)) == ((void*)0))
    xo_err(1, "reallocf()");
   if (mysysctl("hw.intrnames", intrnames, &inamlen) == 0)
    break;
  }
 }


 intrname = intrnames;
 istrnamlen = strlen("interrupt");
 while(*intrname != '\0') {
  clen = strlen(intrname);
  if (clen > istrnamlen)
   istrnamlen = clen;
  intrname += strlen(intrname) + 1;
 }
 xo_emit("{T:/%-*s} {T:/%20s} {T:/%10s}\n",
     (int)istrnamlen, "interrupt", "total", "rate");





 xo_open_container("interrupt-statistics");

 period_ms = uptime / 1000000;
 while(1) {
  nintr = read_intrcnts(&intrcnts);




  if (old_intrcnts == ((void*)0)) {
   old_intrcnts = calloc(nintr, sizeof(unsigned long));
   if (old_intrcnts == ((void*)0))
    xo_err(1, "calloc()");
  }

  print_intrcnts(intrcnts, old_intrcnts, intrnames, nintr,
      istrnamlen, period_ms);
  xo_flush();

  free(old_intrcnts);
  old_intrcnts = intrcnts;
  if (reps >= 0 && --reps <= 0)
   break;
  usleep(interval * 1000);
  old_uptime = uptime;
  uptime = getuptime();
  period_ms = (uptime - old_uptime) / 1000000;
 }

 xo_close_container("interrupt-statistics");
}
