
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int fls (int) ;
 scalar_t__ powerof2 (int) ;

__attribute__((used)) static u_int
clp2(u_int v)
{

 return (powerof2(v) ? v : 1 << fls(v));
}
