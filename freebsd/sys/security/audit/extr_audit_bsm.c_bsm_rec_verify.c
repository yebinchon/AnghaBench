
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char AUT_HEADER32 ;
 char AUT_HEADER32_EX ;
 char AUT_HEADER64 ;
 char AUT_HEADER64_EX ;

int
bsm_rec_verify(void *rec)
{
 char c = *(char *)rec;
 if ((c != AUT_HEADER32) && (c != AUT_HEADER32_EX) &&
     (c != AUT_HEADER64) && (c != AUT_HEADER64_EX))
  return (0);
 return (1);
}
