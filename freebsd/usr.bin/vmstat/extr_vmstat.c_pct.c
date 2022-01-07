
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int quad_t ;



__attribute__((used)) static long
pct(long top, long bot)
{
 long ans;

 if (bot == 0)
  return(0);
 ans = (quad_t)top * 100 / bot;
 return (ans);
}
