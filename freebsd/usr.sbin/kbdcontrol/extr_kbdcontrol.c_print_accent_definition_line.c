
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acc_t {scalar_t__ accchar; int** map; } ;
typedef int FILE ;


 int NUM_ACCENTCHARS ;
 char** acc_names ;
 int fprintf (int *,char*,...) ;
 scalar_t__ hex ;
 scalar_t__ isascii (int) ;
 scalar_t__ isprint (int) ;

__attribute__((used)) static void
print_accent_definition_line(FILE *fp, int accent, struct acc_t *key)
{
 int c;
 int i;

 if (key->accchar == 0)
  return;


 fprintf(fp, "  %-6s", acc_names[accent]);
 if (isascii(key->accchar) && isprint(key->accchar))
  fprintf(fp, "'%c'  ", key->accchar);
 else if (hex)
  fprintf(fp, "0x%02x ", key->accchar);
 else
  fprintf(fp, "%03d  ", key->accchar);

 for (i = 0; i < NUM_ACCENTCHARS; ++i) {
  c = key->map[i][0];
  if (c == 0)
   break;
  if ((i > 0) && ((i % 4) == 0))
   fprintf(fp, "\n             ");
  if (isascii(c) && isprint(c))
   fprintf(fp, "( '%c' ", c);
  else if (hex)
   fprintf(fp, "(0x%02x ", c);
  else
   fprintf(fp, "( %03d ", c);
  c = key->map[i][1];
  if (isascii(c) && isprint(c))
   fprintf(fp, "'%c' ) ", c);
  else if (hex)
   fprintf(fp, "0x%02x) ", c);
  else
   fprintf(fp, "%03d ) ", c);
 }
 fprintf(fp, "\n");
}
