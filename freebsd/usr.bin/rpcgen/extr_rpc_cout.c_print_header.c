
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int rel; int old_type; } ;
struct TYPE_6__ {TYPE_1__ ty; } ;
struct TYPE_7__ {scalar_t__ def_kind; TYPE_2__ def; int def_name; } ;
typedef TYPE_3__ definition ;


 scalar_t__ DEF_TYPEDEF ;
 int f_print (int ,char*) ;
 int fout ;
 scalar_t__ inline_size ;
 int isvectordef (int ,int ) ;
 int print_generic_header (int ,int) ;

__attribute__((used)) static void
print_header(definition *def)
{
 print_generic_header(def->def_name,
       def->def_kind != DEF_TYPEDEF ||
       !isvectordef(def->def.ty.old_type,
      def->def.ty.rel));


 if (inline_size == 0)
  return;

 f_print(fout, "\tregister long *buf;\n\n");
}
