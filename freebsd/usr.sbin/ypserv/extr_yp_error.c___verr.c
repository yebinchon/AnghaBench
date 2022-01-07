
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int LOG_NOTICE ;
 int _rpcpmstart ;
 scalar_t__ debug ;
 int fprintf (int ,char*,...) ;
 char* progname ;
 int stderr ;
 int vfprintf (int ,char const*,int ) ;
 int vsyslog (int ,char const*,int ) ;

__attribute__((used)) static void
__verr(const char *fmt, va_list ap)
{
 if (debug && !_rpcpmstart) {
  fprintf(stderr,"%s: ",progname);
  vfprintf(stderr, fmt, ap);
  fprintf(stderr, "\n");
 } else {
  vsyslog(LOG_NOTICE, fmt, ap);
 }
}
