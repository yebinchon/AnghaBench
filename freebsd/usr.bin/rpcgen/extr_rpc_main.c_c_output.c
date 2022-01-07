
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int definition ;


 int add_warning () ;
 int c_initialize () ;
 int emit (int *) ;
 char const* extendfile (char const*,char const*) ;
 int f_print (int ,char*,...) ;
 int fout ;
 int free (char*) ;
 long ftell (int ) ;
 int * get_definition () ;
 int open_input (char const*,char const*) ;
 int open_output (char const*,char const*) ;
 int unlink (char const*) ;

__attribute__((used)) static void
c_output(const char *infile, const char *define, int extend, const char *outfile)
{
 definition *def;
 char *include;
 const char *outfilename;
 long tell;

 c_initialize();
 open_input(infile, define);
 outfilename = extend ? extendfile(infile, outfile) : outfile;
 open_output(infile, outfilename);
 add_warning();
 if (infile && (include = extendfile(infile, ".h"))) {
  f_print(fout, "#include \"%s\"\n", include);
  free(include);

 } else
  f_print(fout, "#include <rpc/rpc.h>\n");
 tell = ftell(fout);
 while ( (def = get_definition()) ) {
  emit(def);
 }
 if (extend && tell == ftell(fout)) {
  (void) unlink(outfilename);
 }
}
