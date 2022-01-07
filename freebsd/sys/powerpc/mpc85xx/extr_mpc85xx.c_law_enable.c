
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;


 int ENOSPC ;
 scalar_t__ _LAW_SR (int,scalar_t__) ;
 int law_find_free () ;
 int law_getmax () ;
 int law_read (int,scalar_t__*,scalar_t__*) ;
 int law_write (int,scalar_t__,scalar_t__) ;

int
law_enable(int trgt, uint64_t bar, uint32_t size)
{
 uint64_t bar_tmp;
 uint32_t sr, sr_tmp;
 int i, law_max;

 if (size == 0)
  return (0);

 law_max = law_getmax();
 sr = _LAW_SR(trgt, size);


 for (i = 0; i < law_max; i++) {
  law_read(i, &bar_tmp, &sr_tmp);
  if (sr == sr_tmp && bar == bar_tmp)
   return (0);
 }


 i = law_find_free();

 if (i == law_max)
  return (ENOSPC);

 law_write(i, bar, sr);
 return (0);
}
