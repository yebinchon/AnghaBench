
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int definition ;


 int add_sample_msg () ;
 int checkfiles (char const*,char const*) ;
 char const* extendfile (char const*,char const*) ;
 int f_print (int ,char*,...) ;
 int fout ;
 int free (char*) ;
 long ftell (int ) ;
 int * get_definition () ;
 int open_input (char const*,char const*) ;
 int open_output (char const*,char const*) ;
 int unlink (char const*) ;
 scalar_t__ write_sample_clnt (int *) ;
 int write_sample_clnt_main () ;

__attribute__((used)) static void
clnt_output(const char *infile, const char *define, int extend, const char *outfile)
{
 definition *def;
 char *include;
 const char *outfilename;
 long tell;
 int has_program = 0;

 open_input(infile, define);
 outfilename = extend ? extendfile(infile, outfile) : outfile;
 checkfiles(infile, outfilename);





 open_output(infile, outfilename);
 add_sample_msg();
 if (infile && (include = extendfile(infile, ".h"))) {
  f_print(fout, "#include \"%s\"\n", include);
  free(include);
 } else
  f_print(fout, "#include <rpc/rpc.h>\n");
 f_print(fout, "#include <stdio.h>\n");
 f_print(fout, "#include <stdlib.h>\n");
 tell = ftell(fout);
 while ( (def = get_definition()) ) {
  has_program += write_sample_clnt(def);
 }

 if (has_program)
  write_sample_clnt_main();

 if (extend && tell == ftell(fout)) {
  (void) unlink(outfilename);
 }
}
