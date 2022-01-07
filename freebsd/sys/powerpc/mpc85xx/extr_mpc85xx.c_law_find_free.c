
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int law_getmax () ;
 int law_read (int,int *,int*) ;

__attribute__((used)) static int
law_find_free(void)
{
 uint32_t i,sr;
 uint64_t bar;
 int law_max;

 law_max = law_getmax();

 for (i = 0; i < law_max; i++) {
  law_read(i, &bar, &sr);
  if ((sr & 0x80000000) == 0)
   break;
 }

 return (i);
}
