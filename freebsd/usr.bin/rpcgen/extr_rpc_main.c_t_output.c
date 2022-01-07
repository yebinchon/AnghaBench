
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ def_kind; } ;
typedef TYPE_1__ definition ;


 scalar_t__ DEF_PROGRAM ;
 int add_warning () ;
 char const* extendfile (char const*,char const*) ;
 TYPE_1__* get_definition () ;
 int open_input (char const*,char const*) ;
 int open_output (char const*,char const*) ;
 int unlink (char const*) ;
 int write_tables () ;

__attribute__((used)) static void
t_output(const char *infile, const char *define, int extend, const char *outfile)
{
 definition *def;
 int foundprogram = 0;
 const char *outfilename;

 open_input(infile, define);
 outfilename = extend ? extendfile(infile, outfile) : outfile;
 open_output(infile, outfilename);
 add_warning();
 while ( (def = get_definition()) ) {
  foundprogram |= (def->def_kind == DEF_PROGRAM);
 }
 if (extend && !foundprogram) {
  (void) unlink(outfilename);
  return;
 }
 write_tables();
}
