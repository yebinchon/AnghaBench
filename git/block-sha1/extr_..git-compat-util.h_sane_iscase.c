
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_ALPHA ;
 int sane_istest (int,int ) ;

__attribute__((used)) static inline int sane_iscase(int x, int is_lower)
{
 if (!sane_istest(x, GIT_ALPHA))
  return 0;

 if (is_lower)
  return (x & 0x20) != 0;
 else
  return (x & 0x20) == 0;
}
