
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int time_t ;
struct TYPE_2__ {int tv_sec; } ;
struct utmpx {int ut_type; TYPE_1__ ut_tv; int ut_host; int ut_line; int ut_user; } ;
struct tm {int dummy; } ;
struct idtab {int logout; } ;
typedef int ct ;







 int crmsg ;
 int ctf (char*) ;
 scalar_t__ d_first ;
 int exit (int ) ;
 struct tm* gmtime (int*) ;
 struct tm* localtime (int*) ;
 int maxrec ;
 scalar_t__ sflag ;
 int strftime (char*,int,char*,struct tm*) ;
 int width ;
 int xo_attr (char*,char*,long) ;
 int xo_close_instance (char*) ;
 int xo_emit (char*,...) ;
 int xo_open_instance (char*) ;
 scalar_t__ yflag ;

__attribute__((used)) static void
printentry(struct utmpx *bp, struct idtab *tt)
{
 char ct[80];
 struct tm *tm;
 time_t delta;
 time_t t;

 if (maxrec != -1 && !maxrec--)
  exit(0);
 xo_open_instance("last");
 t = bp->ut_tv.tv_sec;
 tm = localtime(&t);
 (void) strftime(ct, sizeof(ct), d_first ?
     (yflag ? "%a %e %b %Y %R" : "%a %e %b %R") :
     (yflag ? "%a %b %e %Y %R" : "%a %b %e %R"), tm);
 switch (bp->ut_type) {
 case 132:
  xo_emit("{:user/%-42s/%s}", "boot time");
  break;
 case 129:
  xo_emit("{:user/%-42s/%s}", "shutdown time");
  break;
 case 130:
  xo_emit("{:user/%-42s/%s}", "old time");
  break;
 case 131:
  xo_emit("{:user/%-42s/%s}", "new time");
  break;
 case 128:
  xo_emit("{:user/%-10s/%s} {:tty/%-8s/%s} {:from/%-22.22s/%s}",
      bp->ut_user, bp->ut_line, bp->ut_host);
  break;
 }
 xo_attr("seconds", "%lu", (unsigned long)t);
 xo_emit(ctf(" {:login-time/%s%c/%s}"), ct, tt == ((void*)0) ? '\n' : ' ');
 if (tt == ((void*)0))
  goto end;
 if (!tt->logout) {
  xo_emit("  {:logout-time/still logged in}\n");
  goto end;
 }
 if (tt->logout < 0) {
  tt->logout = -tt->logout;
  xo_emit("- {:logout-reason/%s}", crmsg);
 } else {
  tm = localtime(&tt->logout);
  (void) strftime(ct, sizeof(ct), "%R", tm);
  xo_attr("seconds", "%lu", (unsigned long)tt->logout);
  xo_emit(ctf("- {:logout-time/%s}"), ct);
 }
 delta = tt->logout - bp->ut_tv.tv_sec;
 xo_attr("seconds", "%ld", (long)delta);
 if (sflag) {
  xo_emit("  ({:session-length/%8ld})\n", (long)delta);
 } else {
  tm = gmtime(&delta);
  (void) strftime(ct, sizeof(ct), width >= 8 ? "%T" : "%R", tm);
  if (delta < 86400)
   xo_emit(ctf("  ({:session-length/%s})\n"), ct);
  else
   xo_emit(ctf(" ({:session-length/%ld+%s})\n"),
       (long)delta / 86400, ct);
 }

end:
 xo_close_instance("last");
}
