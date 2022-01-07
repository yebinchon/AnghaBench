
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_mfilter {int* im6f_st; int im6f_sources; } ;


 int RB_INIT (int *) ;
 int memset (struct in6_mfilter*,int ,int) ;

__attribute__((used)) static __inline void
im6f_init(struct in6_mfilter *imf, const int st0, const int st1)
{
 memset(imf, 0, sizeof(struct in6_mfilter));
 RB_INIT(&imf->im6f_sources);
 imf->im6f_st[0] = st0;
 imf->im6f_st[1] = st1;
}
