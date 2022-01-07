
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
typedef int u_long ;


 int arc4random_buf (int *,int) ;

u_long
key_random()
{
 u_long value;

 arc4random_buf(&value, sizeof(value));
 return value;
}
