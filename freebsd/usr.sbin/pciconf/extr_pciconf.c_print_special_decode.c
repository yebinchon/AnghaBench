
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,...) ;

__attribute__((used)) static void
print_special_decode(bool isa, bool vga, bool subtractive)
{
 bool comma;

 if (isa || vga || subtractive) {
  comma = 0;
  printf("    decode     = ");
  if (isa) {
   printf("ISA");
   comma = 1;
  }
  if (vga) {
   printf("%sVGA", comma ? ", " : "");
   comma = 1;
  }
  if (subtractive)
   printf("%ssubtractive", comma ? ", " : "");
  printf("\n");
 }
}
