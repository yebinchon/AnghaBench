
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t int32_t ;
typedef int collpri_t ;


 int INTERR ;
 size_t numpri ;
 int * prilist ;

__attribute__((used)) static collpri_t *
get_pri(int32_t ref)
{
 if ((ref < 0) || (ref > numpri)) {
  INTERR;
  return (((void*)0));
 }
 return (&prilist[ref]);
}
