
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRANSP ;
 int _errbuf ;
 int f_print (int ,char*,...) ;
 int fout ;
 scalar_t__ inetdflag ;
 int print_err_message (char*) ;
 int sprintf (int ,char*) ;
 scalar_t__ timerflag ;

void
write_rest(void)
{
 f_print(fout, "\n");
 if (inetdflag) {
  f_print(fout, "\tif (%s == (SVCXPRT *)NULL) {\n", TRANSP);
  (void) sprintf(_errbuf, "could not create a handle");
  print_err_message("\t\t");
  f_print(fout, "\t\texit(1);\n");
  f_print(fout, "\t}\n");
  if (timerflag) {
   f_print(fout, "\tif (_rpcpmstart) {\n");
   f_print(fout,
    "\t\t(void) signal(SIGALRM, closedown);\n");
   f_print(fout, "\t\t(void) alarm(_RPCSVC_CLOSEDOWN/2);\n");

   f_print(fout, "\t}\n");
  }
 }
 f_print(fout, "\tsvc_run();\n");
 (void) sprintf(_errbuf, "svc_run returned");
 print_err_message("\t");
 f_print(fout, "\texit(1);\n");
 f_print(fout, "\t/* NOTREACHED */\n");
 f_print(fout, "}\n");
}
