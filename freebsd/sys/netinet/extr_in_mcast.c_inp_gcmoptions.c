
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_moptions {int imo_head; } ;
struct in_multi {struct ifnet* inm_ifp; } ;
struct in_mfilter {struct in_multi* imf_inm; } ;
struct ifnet {int if_vnet; } ;


 int CURVNET_RESTORE () ;
 int CURVNET_SET (int ) ;
 int M_IPMOPTS ;
 int free (struct ip_moptions*,int ) ;
 int imf_leave (struct in_mfilter*) ;
 int in_leavegroup (struct in_multi*,struct in_mfilter*) ;
 struct in_mfilter* ip_mfilter_first (int *) ;
 int ip_mfilter_free (struct in_mfilter*) ;
 int ip_mfilter_remove (int *,struct in_mfilter*) ;

__attribute__((used)) static void
inp_gcmoptions(struct ip_moptions *imo)
{
 struct in_mfilter *imf;
 struct in_multi *inm;
 struct ifnet *ifp;

 while ((imf = ip_mfilter_first(&imo->imo_head)) != ((void*)0)) {
  ip_mfilter_remove(&imo->imo_head, imf);

  imf_leave(imf);
  if ((inm = imf->imf_inm) != ((void*)0)) {
   if ((ifp = inm->inm_ifp) != ((void*)0)) {
    CURVNET_SET(ifp->if_vnet);
    (void)in_leavegroup(inm, imf);
    CURVNET_RESTORE();
   } else {
    (void)in_leavegroup(inm, imf);
   }
  }
  ip_mfilter_free(imf);
 }
 free(imo, M_IPMOPTS);
}
