
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arc4rand (void*,size_t,int ) ;

void
arc4random_buf(void *ptr, size_t len)
{

 arc4rand(ptr, len, 0);
}
