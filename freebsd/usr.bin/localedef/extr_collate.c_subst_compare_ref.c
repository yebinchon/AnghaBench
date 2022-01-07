
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_2__ {int * ref; } ;
typedef TYPE_1__ subst_t ;


 int wcscmp (int const*,int const*) ;

__attribute__((used)) static int
subst_compare_ref(const void *n1, const void *n2)
{
 const wchar_t *c1 = ((const subst_t *)n1)->ref;
 const wchar_t *c2 = ((const subst_t *)n2)->ref;
 int rv;

 rv = wcscmp(c1, c2);
 return ((rv < 0) ? -1 : (rv > 0) ? 1 : 0);
}
