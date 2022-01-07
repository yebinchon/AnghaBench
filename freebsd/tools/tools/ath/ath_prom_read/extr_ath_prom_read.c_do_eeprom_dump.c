
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
typedef int int32_t ;
typedef int FILE ;


 int NUM_PER_LINE ;
 int err (int,char*) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int *,char*,...) ;

__attribute__((used)) static void
do_eeprom_dump(const char *dumpfile, uint16_t *eebuf, int eelen)
{
 FILE *fp;
 int i;

 fp = fopen(dumpfile, "w");
 if (!fp) {
  err(1, "fopen");
 }


 for (i = 0; i < eelen / 2; i++) {
  if (i % NUM_PER_LINE == 0)
   fprintf(fp, "%.4x: ", i);
  fprintf(fp, "%.4x%s", (int32_t)(eebuf[i]), i % NUM_PER_LINE == (NUM_PER_LINE - 1) ? "\n" : " ");
 }
 fprintf(fp, "\n");
 fclose(fp);
}
