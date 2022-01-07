
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int ret ;


 int arc4rand (int *,int,int ) ;

uint32_t
arc4random(void)
{
 uint32_t ret;

 arc4rand(&ret, sizeof(ret), 0);
 return ret;
}
