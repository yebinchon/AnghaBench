
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int nr; } ;
struct column_options {char* indent; char* nl; int padding; int width; } ;
typedef int nopts ;


 int BUG (char*,int) ;
 unsigned int COL_AUTO ;

 unsigned int COL_ENABLE_MASK ;
 int COL_LAYOUT (unsigned int) ;


 int assert (int) ;
 int column_active (unsigned int) ;
 int display_plain (struct string_list const*,char*,char*) ;
 int display_table (struct string_list const*,unsigned int,struct column_options*) ;
 int memset (struct column_options*,int ,int) ;
 int term_columns () ;

void print_columns(const struct string_list *list, unsigned int colopts,
     const struct column_options *opts)
{
 struct column_options nopts;

 if (!list->nr)
  return;
 assert((colopts & COL_ENABLE_MASK) != COL_AUTO);

 memset(&nopts, 0, sizeof(nopts));
 nopts.indent = opts && opts->indent ? opts->indent : "";
 nopts.nl = opts && opts->nl ? opts->nl : "\n";
 nopts.padding = opts ? opts->padding : 1;
 nopts.width = opts && opts->width ? opts->width : term_columns() - 1;
 if (!column_active(colopts)) {
  display_plain(list, "", "\n");
  return;
 }
 switch (COL_LAYOUT(colopts)) {
 case 129:
  display_plain(list, nopts.indent, nopts.nl);
  break;
 case 128:
 case 130:
  display_table(list, colopts, &nopts);
  break;
 default:
  BUG("invalid layout mode %d", COL_LAYOUT(colopts));
 }
}
