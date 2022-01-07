
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct ip_msource {int ims_haddr; } ;
struct in_msource {int * imsl_st; int ims_haddr; } ;
struct in_mfilter {scalar_t__ imf_nsrc; int imf_sources; } ;


 int ENOMEM ;
 int ENOSPC ;
 int MCAST_UNDEFINED ;
 int M_INMFILTER ;
 int M_NOWAIT ;
 int M_ZERO ;
 struct ip_msource* RB_FIND (int ,int *,struct ip_msource*) ;
 int RB_INSERT (int ,int *,struct ip_msource*) ;
 scalar_t__ in_mcast_maxsocksrc ;
 int ip_msource_tree ;
 struct ip_msource* malloc (int,int ,int) ;
 int ntohl (int ) ;

__attribute__((used)) static int
imf_get_source(struct in_mfilter *imf, const struct sockaddr_in *psin,
    struct in_msource **plims)
{
 struct ip_msource find;
 struct ip_msource *ims, *nims;
 struct in_msource *lims;
 int error;

 error = 0;
 ims = ((void*)0);
 lims = ((void*)0);


 find.ims_haddr = ntohl(psin->sin_addr.s_addr);
 ims = RB_FIND(ip_msource_tree, &imf->imf_sources, &find);
 lims = (struct in_msource *)ims;
 if (lims == ((void*)0)) {
  if (imf->imf_nsrc == in_mcast_maxsocksrc)
   return (ENOSPC);
  nims = malloc(sizeof(struct in_msource), M_INMFILTER,
      M_NOWAIT | M_ZERO);
  if (nims == ((void*)0))
   return (ENOMEM);
  lims = (struct in_msource *)nims;
  lims->ims_haddr = find.ims_haddr;
  lims->imsl_st[0] = MCAST_UNDEFINED;
  RB_INSERT(ip_msource_tree, &imf->imf_sources, nims);
  ++imf->imf_nsrc;
 }

 *plims = lims;

 return (error);
}
