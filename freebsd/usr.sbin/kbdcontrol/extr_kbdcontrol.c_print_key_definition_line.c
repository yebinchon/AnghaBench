
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keyent_t {int spcl; int* map; int flgs; } ;
typedef int FILE ;


 int NUM_STATES ;
 int SPECIAL ;
 int fprintf (int *,char*,...) ;
 scalar_t__ hex ;
 int print_entry (int *,int) ;

__attribute__((used)) static void
print_key_definition_line(FILE *fp, int scancode, struct keyent_t *key)
{
 int i;


 if (hex)
  fprintf(fp, " 0x%02x  ", scancode);
 else
  fprintf(fp, "  %03d  ", scancode);


 for (i=0; i<NUM_STATES; i++) {
  if (key->spcl & (0x80 >> i))
   print_entry(fp, key->map[i] | SPECIAL);
  else
   print_entry(fp, key->map[i]);
 }


 switch (key->flgs) {
 case 0:
  fprintf(fp, "  O\n");
  break;
 case 1:
  fprintf(fp, "  C\n");
  break;
 case 2:
  fprintf(fp, "  N\n");
  break;
 case 3:
  fprintf(fp, "  B\n");
  break;
 }
}
