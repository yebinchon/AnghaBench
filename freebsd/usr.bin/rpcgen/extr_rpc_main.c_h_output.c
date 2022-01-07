
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; int pointerp; int name; } ;
typedef TYPE_1__ xdrfunc ;
struct TYPE_6__ {int val; struct TYPE_6__* next; } ;
typedef TYPE_2__ list ;
typedef int definition ;


 scalar_t__ CCflag ;
 int add_warning () ;
 TYPE_2__* defined ;
 char const* extendfile (char const*,char const*) ;
 int f_print (int ,char*,...) ;
 int fout ;
 int free (void*) ;
 long ftell (int ) ;
 void* generate_guard (char const*) ;
 int * get_definition () ;
 scalar_t__ mtflag ;
 int open_input (char const*,char const*) ;
 int open_output (char const*,char const*) ;
 int print_datadef (int *,int) ;
 int print_funcdef (int ,int) ;
 int print_xdr_func_def (int ,int ) ;
 int rpcgen_table_dcl ;
 scalar_t__ tblflag ;
 int unlink (char const*) ;
 TYPE_1__* xdrfunc_head ;

__attribute__((used)) static void
h_output(const char *infile, const char *define, int extend, const char *outfile, int headeronly)
{
 definition *def;
 const char *outfilename;
 long tell;
 const char *guard;
 list *l;
 xdrfunc *xdrfuncp;
 void *tmp = ((void*)0);

 open_input(infile, define);
 outfilename = extend ? extendfile(infile, outfile) : outfile;
 open_output(infile, outfilename);
 add_warning();
 if (outfilename || infile){
  guard = tmp = generate_guard(outfilename ? outfilename: infile);
 } else
  guard = "STDIN_";

 f_print(fout, "#ifndef _%s\n#define	_%s\n\n", guard,
  guard);

 f_print(fout, "#include <rpc/rpc.h>\n");

 if (mtflag)
  f_print(fout, "#include <pthread.h>\n");


 if (!CCflag) {
  f_print(fout, "\n#ifdef __cplusplus\n");
  f_print(fout, "extern \"C\" {\n");
  f_print(fout, "#endif\n\n");
 }



 tell = ftell(fout);


 while ( (def = get_definition()) ) {
  print_datadef(def, headeronly);
 }






 for (l = defined; l != ((void*)0); l = l->next) {
  print_funcdef(l->val, headeronly);
 }

 if (xdrfunc_head != ((void*)0)){

  f_print(fout,
   "\n/* the xdr functions */\n");

  if (CCflag){
   f_print(fout, "\n#ifdef __cplusplus\n");
   f_print(fout, "extern \"C\" {\n");
   f_print(fout, "#endif\n");
  }

  xdrfuncp = xdrfunc_head;
  while (xdrfuncp != ((void*)0)){
   print_xdr_func_def(xdrfuncp->name, xdrfuncp->pointerp);
   xdrfuncp = xdrfuncp->next;
  }
 }

 if (extend && tell == ftell(fout)) {
  (void) unlink(outfilename);
 } else if (tblflag) {
  f_print(fout, rpcgen_table_dcl);
 }

 f_print(fout, "\n#ifdef __cplusplus\n");
 f_print(fout, "}\n");
 f_print(fout, "#endif\n");

 f_print(fout, "\n#endif /* !_%s */\n", guard);
 free(tmp);
}
