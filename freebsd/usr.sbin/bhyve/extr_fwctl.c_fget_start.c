
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int E2BIG ;
 scalar_t__ FGET_STRSZ ;
 scalar_t__ fget_cnt ;

__attribute__((used)) static int
fget_start(uint32_t len)
{

 if (len > FGET_STRSZ)
  return(E2BIG);

 fget_cnt = 0;

 return (0);
}
