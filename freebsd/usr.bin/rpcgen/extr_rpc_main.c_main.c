
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct commandline {int makefileflag; char* outfile; int infile; scalar_t__ nflag; scalar_t__ mflag; scalar_t__ hflag; scalar_t__ Scflag; scalar_t__ Ssflag; scalar_t__ tflag; scalar_t__ sflag; scalar_t__ lflag; scalar_t__ cflag; } ;


 int DONT_EXTEND ;
 int EXTEND ;
 int allc ;
 scalar_t__ allfiles ;
 int allnc ;
 char const** allnv ;
 char const** allv ;
 int c_output (int ,char*,int ,char*) ;
 int checkfiles (int ,char*) ;
 int clnt_output (int ,char*,int ,char*) ;
 int exit (int ) ;
 int h_output (int ,char*,int ,char*,scalar_t__) ;
 scalar_t__ inetdflag ;
 int l_output (int ,char*,int ,char*) ;
 int memset (char*,int ,int) ;
 int mkfile_output (struct commandline*) ;
 int nonfatalerrors ;
 int parseargs (int,char const**,struct commandline*) ;
 int reinitialize () ;
 int s_output (int,char const**,int ,char*,int ,char*,scalar_t__,scalar_t__) ;
 int svc_output (int ,char*,int ,char*) ;
 int t_output (int ,char*,int ,char*) ;
 scalar_t__ tblflag ;
 int tirpcflag ;
 int usage () ;

int
main(int argc, const char *argv[])
{
 struct commandline cmd;

 (void) memset((char *)&cmd, 0, sizeof (struct commandline));
 if (!parseargs(argc, argv, &cmd))
  usage();





 if (cmd.Ssflag || cmd.Scflag || cmd.makefileflag) {
  checkfiles(cmd.infile, cmd.outfile);
 }
 else
  checkfiles(cmd.infile, ((void*)0));

 if (cmd.cflag) {
  c_output(cmd.infile, "-DRPC_XDR", DONT_EXTEND, cmd.outfile);
 } else if (cmd.hflag) {
  h_output(cmd.infile, "-DRPC_HDR", DONT_EXTEND, cmd.outfile,
      cmd.hflag);
 } else if (cmd.lflag) {
  l_output(cmd.infile, "-DRPC_CLNT", DONT_EXTEND, cmd.outfile);
 } else if (cmd.sflag || cmd.mflag || (cmd.nflag)) {
  s_output(argc, argv, cmd.infile, "-DRPC_SVC", DONT_EXTEND,
   cmd.outfile, cmd.mflag, cmd.nflag);
 } else if (cmd.tflag) {
  t_output(cmd.infile, "-DRPC_TBL", DONT_EXTEND, cmd.outfile);
 } else if (cmd.Ssflag) {
  svc_output(cmd.infile, "-DRPC_SERVER", DONT_EXTEND,
   cmd.outfile);
 } else if (cmd.Scflag) {
  clnt_output(cmd.infile, "-DRPC_CLIENT", DONT_EXTEND,
       cmd.outfile);
 } else if (cmd.makefileflag) {
  mkfile_output(&cmd);
 } else {

  c_output(cmd.infile, "-DRPC_XDR", EXTEND, "_xdr.c");
  reinitialize();
  h_output(cmd.infile, "-DRPC_HDR", EXTEND, ".h", cmd.hflag);
  reinitialize();
  l_output(cmd.infile, "-DRPC_CLNT", EXTEND, "_clnt.c");
  reinitialize();
  if (inetdflag || !tirpcflag)
   s_output(allc, allv, cmd.infile, "-DRPC_SVC", EXTEND,
   "_svc.c", cmd.mflag, cmd.nflag);
  else
   s_output(allnc, allnv, cmd.infile, "-DRPC_SVC",
    EXTEND, "_svc.c", cmd.mflag, cmd.nflag);
  if (tblflag) {
   reinitialize();
   t_output(cmd.infile, "-DRPC_TBL", EXTEND, "_tbl.i");
  }

  if (allfiles) {
   reinitialize();
   svc_output(cmd.infile, "-DRPC_SERVER", EXTEND,
    "_server.c");
   reinitialize();
   clnt_output(cmd.infile, "-DRPC_CLIENT", EXTEND,
    "_client.c");

  }
  if (allfiles || (cmd.makefileflag == 1)){
   reinitialize();
   mkfile_output(&cmd);
  }

 }
 exit(nonfatalerrors);

}
