
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ nz_strx; } ;


 int assert (int) ;
 char const* rtstr_base ;
 TYPE_1__* rtsym_base ;
 unsigned long rtsym_count ;

__attribute__((used)) static const char *
rtsym_name(unsigned long n)
{
    assert(n < rtsym_count);
    if (rtsym_base[n].nz_strx == 0)
 return "";
    return rtstr_base + rtsym_base[n].nz_strx;
}
