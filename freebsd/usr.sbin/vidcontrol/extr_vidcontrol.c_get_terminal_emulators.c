
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct term_info {char* ti_name; char* ti_desc; } ;


 scalar_t__ get_terminal_emulator (int,struct term_info*) ;
 int printf (char*,int,char*,char*,char*) ;

__attribute__((used)) static void
get_terminal_emulators(void)
{
 struct term_info ti;
 int i;

 for (i = 0; i < 10; i++) {
  if (get_terminal_emulator(i, &ti) == 0)
   break;
  printf("%d: %s (%s)%s\n", i, ti.ti_name, ti.ti_desc,
      i == 0 ? " (active)" : "");
 }
}
