
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_mfilter {int dummy; } ;


 int M_INMFILTER ;
 int imf_init (struct in_mfilter*,int const,int const) ;
 struct in_mfilter* malloc (int,int ,int const) ;

struct in_mfilter *
ip_mfilter_alloc(const int mflags, const int st0, const int st1)
{
 struct in_mfilter *imf;

 imf = malloc(sizeof(*imf), M_INMFILTER, mflags);
 if (imf != ((void*)0))
  imf_init(imf, st0, st1);

 return (imf);
}
