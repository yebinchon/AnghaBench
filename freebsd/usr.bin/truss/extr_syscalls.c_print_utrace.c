
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*,...) ;
 scalar_t__ sysdecode_utrace (int *,void*,size_t) ;

__attribute__((used)) static void
print_utrace(FILE *fp, void *utrace_addr, size_t len)
{
 unsigned char *utrace_buffer;

 fprintf(fp, "{ ");
 if (sysdecode_utrace(fp, utrace_addr, len)) {
  fprintf(fp, " }");
  return;
 }

 utrace_buffer = utrace_addr;
 fprintf(fp, "%zu:", len);
 while (len--)
  fprintf(fp, " %02x", *utrace_buffer++);
 fprintf(fp, " }");
}
