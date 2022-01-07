
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRANSP ;
 int f_print (int ,char*,...) ;
 int fout ;
 scalar_t__ inetdflag ;
 scalar_t__ logflag ;
 int mtflag ;
 int open_log_file (char const*,char*) ;
 scalar_t__ pmflag ;
 int print_pmapunset (char*) ;
 int timerflag ;
 scalar_t__ tirpc_socket ;
 scalar_t__ tirpcflag ;
 int write_inetmost (char const*) ;
 int write_pm_most (char const*,int) ;
 int write_programs (char*) ;
 int write_rpc_svc_fg (char const*,char*) ;
 int write_svc_aux (int) ;

void
write_most(const char *infile, int netflag, int nomain)
{
 if (inetdflag || pmflag) {
  const char *var_type;
  var_type = (nomain? "extern" : "static");
  f_print(fout, "%s int _rpcpmstart;", var_type);
  f_print(fout, "\t\t/* Started by a port monitor ? */\n");
  if (!tirpcflag || tirpc_socket) {
   f_print(fout, "%s int _rpcfdtype;", var_type);
   f_print(fout, "\n\t\t /* Whether Stream or Datagram ? */\n");

  }

  if (timerflag) {
   f_print(fout, "	/* States a server can be in wrt request */\n\n");

   f_print(fout, "#define\t_IDLE 0\n");
   f_print(fout, "#define\t_SERVED 1\n");
   f_print(fout, "#define\t_SERVING 2\n\n");
   f_print(fout, "static int _rpcsvcstate = _IDLE;");
   f_print(fout, "\t /* Set when a request is serviced */\n");


   if (mtflag) {
    f_print(fout, "pthread_mutex_t _svcstate_lock;");
    f_print(fout, "\t\t\t/* Mutex lock for variable _rpcsvcstate */\n");

   }

  }

  write_svc_aux(nomain);
 }

 write_programs((char *)((void*)0));

 if (nomain)
  return;

 f_print(fout, "\nint\n");
 f_print(fout, "main()\n");
 f_print(fout, "{\n");
 if (inetdflag) {
  write_inetmost(infile);

 } else {
  if (tirpcflag) {
   if (netflag) {
    f_print(fout,
     "\tregister SVCXPRT *%s;\n", TRANSP);
    f_print(fout,
     "\tstruct netconfig *nconf = NULL;\n");
   }
   f_print(fout, "\tpid_t pid;\n");
   f_print(fout, "\tint i;\n");
   if (pmflag) {
    if (tirpc_socket) {
     f_print(fout, "\tstruct sockaddr_storage saddr;\n");
     f_print(fout, "\tsocklen_t asize = sizeof (saddr);\n\n");
    } else
     f_print(fout, "\tchar mname[FMNAMESZ + 1];\n\n");
   }

   if (mtflag & timerflag)
    f_print(fout, "\tmutex_init(&_svcstate_lock, USYNC_THREAD, NULL);\n");
   if (pmflag) {
    write_pm_most(infile, netflag);
    f_print(fout, "\telse {\n");
    write_rpc_svc_fg(infile, "\t\t");
    f_print(fout, "\t}\n");
   } else
    write_rpc_svc_fg(infile, "\t\t");

  } else {
   f_print(fout, "\tregister SVCXPRT *%s;\n", TRANSP);
   f_print(fout, "\n");
   print_pmapunset("\t");
  }
 }

 if (logflag && !inetdflag) {
  open_log_file(infile, "\t");
 }
}
