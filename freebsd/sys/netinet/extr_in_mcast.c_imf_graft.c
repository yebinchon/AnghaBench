
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct ip_msource {int dummy; } ;
struct in_msource {int * imsl_st; int ims_haddr; } ;
struct in_mfilter {int imf_nsrc; int imf_sources; } ;


 int MCAST_UNDEFINED ;
 int M_INMFILTER ;
 int M_NOWAIT ;
 int M_ZERO ;
 int RB_INSERT (int ,int *,struct ip_msource*) ;
 int ip_msource_tree ;
 struct ip_msource* malloc (int,int ,int) ;
 int ntohl (int ) ;

__attribute__((used)) static struct in_msource *
imf_graft(struct in_mfilter *imf, const uint8_t st1,
    const struct sockaddr_in *psin)
{
 struct ip_msource *nims;
 struct in_msource *lims;

 nims = malloc(sizeof(struct in_msource), M_INMFILTER,
     M_NOWAIT | M_ZERO);
 if (nims == ((void*)0))
  return (((void*)0));
 lims = (struct in_msource *)nims;
 lims->ims_haddr = ntohl(psin->sin_addr.s_addr);
 lims->imsl_st[0] = MCAST_UNDEFINED;
 lims->imsl_st[1] = st1;
 RB_INSERT(ip_msource_tree, &imf->imf_sources, nims);
 ++imf->imf_nsrc;

 return (lims);
}
