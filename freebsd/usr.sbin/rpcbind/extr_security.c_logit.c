
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {scalar_t__ sa_family; int sa_len; } ;
struct rpcent {char* r_name; } ;
typedef scalar_t__ rpcprog_t ;
typedef int rpcproc_t ;
typedef int progbuf ;


 scalar_t__ AF_LOCAL ;
 int NI_MAXHOST ;
 int NI_NUMERICHOST ;
 int _exit (int ) ;
 scalar_t__ fork () ;
 int getnameinfo (struct sockaddr*,int ,char*,int,int *,int ,int ) ;
 struct rpcent* getrpcbynumber (int) ;
 int setproctitle (char*) ;
 int snprintf (char*,int,char*,unsigned int) ;
 int strcpy (char*,char*) ;
 int syslog (int,char*,char*,char const*,char*,char const*) ;

void
logit(int severity, struct sockaddr *addr, rpcproc_t procnum, rpcprog_t prognum,
      const char *text)
{
 const char *procname;
 char procbuf[32];
 char *progname;
 char progbuf[32];
 char fromname[NI_MAXHOST];
 struct rpcent *rpc;
 static const char *procmap[] = {
                      "null",
                     "set",
                       "unset",
                         "getport/addr",
                      "dump",
                        "callit",
                         "gettime",
                            "uaddr2taddr",
                            "taddr2uaddr",
                            "getversaddr",
                          "indirect",
                            "getaddrlist",
                         "getstat"
 };






 if (fork() == 0) {
  setproctitle("logit");



  if (prognum == 0) {
   progname = "";
  } else if ((rpc = getrpcbynumber((int) prognum))) {
   progname = rpc->r_name;
  } else {
   snprintf(progname = progbuf, sizeof(progbuf), "%u",
       (unsigned)prognum);
  }



  if (procnum >= (sizeof procmap / sizeof (char *))) {
   snprintf(procbuf, sizeof procbuf, "%u",
       (unsigned)procnum);
   procname = procbuf;
  } else
   procname = procmap[procnum];



  if (addr->sa_family == AF_LOCAL)
   strcpy(fromname, "local");
  else
   getnameinfo(addr, addr->sa_len, fromname,
       sizeof fromname, ((void*)0), 0, NI_NUMERICHOST);

  syslog(severity, "connect from %s to %s(%s)%s",
   fromname, procname, progname, text);
  _exit(0);
 }
}
