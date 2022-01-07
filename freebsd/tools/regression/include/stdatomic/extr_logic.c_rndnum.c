
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v ;
typedef int intmax_t ;


 int arc4random_buf (int *,int) ;

__attribute__((used)) static inline intmax_t
rndnum(void)
{
 intmax_t v;

 arc4random_buf(&v, sizeof(v));
 return (v);
}
