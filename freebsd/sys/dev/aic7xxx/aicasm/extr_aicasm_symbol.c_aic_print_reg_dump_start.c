
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* symbol; } ;
typedef TYPE_2__ symbol_node_t ;
struct TYPE_4__ {char* name; } ;
typedef int FILE ;


 int fprintf (int *,char*,char*,char*) ;
 char* prefix ;

__attribute__((used)) static void
aic_print_reg_dump_start(FILE *dfile, symbol_node_t *regnode)
{
 if (dfile == ((void*)0))
  return;

 fprintf(dfile,
"static %sreg_parse_entry_t %s_parse_table[] = {\n",
  prefix,
  regnode->symbol->name);
}
