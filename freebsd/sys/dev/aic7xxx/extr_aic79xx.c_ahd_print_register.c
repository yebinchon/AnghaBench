
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct TYPE_3__ {scalar_t__ mask; scalar_t__ value; int name; } ;
typedef TYPE_1__ ahd_reg_parse_entry_t ;


 int printf (char*,...) ;

int
ahd_print_register(ahd_reg_parse_entry_t *table, u_int num_entries,
     const char *name, u_int address, u_int value,
     u_int *cur_column, u_int wrap_point)
{
 int printed;
 u_int printed_mask;
 u_int dummy_column;

 if (cur_column == ((void*)0)) {
  dummy_column = 0;
  cur_column = &dummy_column;
 }

 if (cur_column != ((void*)0) && *cur_column >= wrap_point) {
  printf("\n");
  *cur_column = 0;
 }
 printed = printf("%s[0x%x]", name, value);
 if (table == ((void*)0)) {
  printed += printf(" ");
  *cur_column += printed;
  return (printed);
 }
 printed_mask = 0;
 while (printed_mask != 0xFF) {
  int entry;

  for (entry = 0; entry < num_entries; entry++) {
   if (((value & table[entry].mask)
     != table[entry].value)
    || ((printed_mask & table[entry].mask)
     == table[entry].mask))
    continue;

   printed += printf("%s%s",
       printed_mask == 0 ? ":(" : "|",
       table[entry].name);
   printed_mask |= table[entry].mask;

   break;
  }
  if (entry >= num_entries)
   break;
 }
 if (printed_mask != 0)
  printed += printf(") ");
 else
  printed += printf(" ");
 *cur_column += printed;
 return (printed);
}
