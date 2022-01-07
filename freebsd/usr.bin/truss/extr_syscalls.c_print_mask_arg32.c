
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int FILE ;


 int fprintf (int *,char*,int) ;

__attribute__((used)) static void
print_mask_arg32(bool (*decoder)(FILE *, uint32_t, uint32_t *), FILE *fp,
    uint32_t value)
{
 uint32_t rem;

 if (!decoder(fp, value, &rem))
  fprintf(fp, "0x%x", rem);
 else if (rem != 0)
  fprintf(fp, "|0x%x", rem);
}
