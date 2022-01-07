
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRANSP ;
 int f_print (int ,char*,...) ;
 int fout ;
 int open_log_file (char const*,char*) ;
 int print_pmapunset (char*) ;
 int write_rpc_svc_fg (char const*,char*) ;

__attribute__((used)) static void
write_inetmost(const char *infile)
{
 f_print(fout, "\tregister SVCXPRT *%s;\n", TRANSP);
 f_print(fout, "\tint sock;\n");
 f_print(fout, "\tint proto;\n");
 f_print(fout, "\tstruct sockaddr_in saddr;\n");
 f_print(fout, "\tsocklen_t asize = sizeof (saddr);\n");
 f_print(fout, "\n");
 f_print(fout,
 "\tif (getsockname(0, (struct sockaddr *)&saddr, &asize) == 0) {\n");
 f_print(fout, "\t\tsocklen_t ssize = sizeof (int);\n\n");
 f_print(fout, "\t\tif (saddr.sin_family != AF_INET)\n");
 f_print(fout, "\t\t\texit(1);\n");
 f_print(fout, "\t\tif (getsockopt(0, SOL_SOCKET, SO_TYPE,\n");
 f_print(fout, "\t\t\t\t(char *)&_rpcfdtype, &ssize) == -1)\n");
 f_print(fout, "\t\t\texit(1);\n");
 f_print(fout, "\t\tsock = 0;\n");
 f_print(fout, "\t\t_rpcpmstart = 1;\n");
 f_print(fout, "\t\tproto = 0;\n");
 open_log_file(infile, "\t\t");
 f_print(fout, "\t} else {\n");
 write_rpc_svc_fg(infile, "\t\t");
 f_print(fout, "\t\tsock = RPC_ANYSOCK;\n");
 print_pmapunset("\t\t");
 f_print(fout, "\t}\n");
}
