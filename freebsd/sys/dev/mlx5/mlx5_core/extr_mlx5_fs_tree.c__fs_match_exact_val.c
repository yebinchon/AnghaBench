
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static bool _fs_match_exact_val(void *mask, void *val1, void *val2, size_t size)
{
 unsigned int i;


 for (i = 0; i < size; i++, mask++, val1++, val2++)
  if ((*((u8 *)val1) & (*(u8 *)mask)) !=
      ((*(u8 *)val2) & (*(u8 *)mask)))
   return 0;

 return 1;
}
