
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*,int) ;

__attribute__((used)) static void
print_mask_arg(bool (*decoder)(FILE *, int, int *), FILE *fp, int value)
{
 int rem;

 if (!decoder(fp, value, &rem))
  fprintf(fp, "0x%x", rem);
 else if (rem != 0)
  fprintf(fp, "|0x%x", rem);
}
