
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int ;


 int PAGE_SIZE ;
 int bzero (void*,int) ;

__attribute__((used)) static u_long
allocpages(u_int cnt, u_long *physfree)
{
 u_long res;

 res = *physfree;
 *physfree += PAGE_SIZE * cnt;
 bzero((void *)res, PAGE_SIZE * cnt);
 return (res);
}
