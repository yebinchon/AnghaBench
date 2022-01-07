
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nitems (int const*) ;

__attribute__((used)) static __inline int
mwl_cvtlegacyrix(int rix)
{
 static const int ieeerates[] =
     { 2, 4, 11, 22, 44, 12, 18, 24, 36, 48, 72, 96, 108 };
 return (rix < nitems(ieeerates) ? ieeerates[rix] : 0);
}
