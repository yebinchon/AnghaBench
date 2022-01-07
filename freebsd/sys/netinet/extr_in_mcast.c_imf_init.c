
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_mfilter {int* imf_st; int imf_sources; } ;


 int RB_INIT (int *) ;
 int memset (struct in_mfilter*,int ,int) ;

__attribute__((used)) static __inline void
imf_init(struct in_mfilter *imf, const int st0, const int st1)
{
 memset(imf, 0, sizeof(struct in_mfilter));
 RB_INIT(&imf->imf_sources);
 imf->imf_st[0] = st0;
 imf->imf_st[1] = st1;
}
