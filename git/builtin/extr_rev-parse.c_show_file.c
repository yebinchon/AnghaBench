
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* prefix; } ;


 int DO_NONFLAGS ;
 int DO_NOREV ;
 int filter ;
 int free (char*) ;
 char* prefix_filename (char const*,char const*) ;
 int show (char const*) ;
 int show_default () ;
 TYPE_1__* startup_info ;

__attribute__((used)) static int show_file(const char *arg, int output_prefix)
{
 show_default();
 if ((filter & (DO_NONFLAGS|DO_NOREV)) == (DO_NONFLAGS|DO_NOREV)) {
  if (output_prefix) {
   const char *prefix = startup_info->prefix;
   char *fname = prefix_filename(prefix, arg);
   show(fname);
   free(fname);
  } else
   show(arg);
  return 1;
 }
 return 0;
}
