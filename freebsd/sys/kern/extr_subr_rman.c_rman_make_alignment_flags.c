
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int RF_ALIGNMENT_LOG2 (int) ;

uint32_t
rman_make_alignment_flags(uint32_t size)
{
 int i;





 for (i = 31; i > 0; i--)
  if ((1 << i) & size)
   break;
 if (~(1 << i) & size)
  i++;

 return(RF_ALIGNMENT_LOG2(i));
}
