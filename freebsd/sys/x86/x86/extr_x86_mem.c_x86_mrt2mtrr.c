
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int x86_mtrrtype (int) ;

__attribute__((used)) static int
x86_mrt2mtrr(int flags, int oldval)
{
 int val;

 if ((val = x86_mtrrtype(flags)) == -1)
  return (oldval & 0xff);
 return (val & 0xff);
}
