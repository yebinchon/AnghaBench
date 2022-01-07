
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_mfilter {int dummy; } ;


 int M_IN6MFILTER ;
 int im6f_init (struct in6_mfilter*,int const,int const) ;
 struct in6_mfilter* malloc (int,int ,int const) ;

struct in6_mfilter *
ip6_mfilter_alloc(const int mflags, const int st0, const int st1)
{
 struct in6_mfilter *imf;

 imf = malloc(sizeof(*imf), M_IN6MFILTER, mflags);

 if (imf != ((void*)0))
  im6f_init(imf, st0, st1);

 return (imf);
}
