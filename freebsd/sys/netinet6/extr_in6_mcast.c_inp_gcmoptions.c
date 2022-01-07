
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip6_moptions {int im6o_head; } ;
struct in6_multi {struct ifnet* in6m_ifp; } ;
struct in6_mfilter {struct in6_multi* im6f_in6m; } ;
struct ifnet {int if_vnet; } ;


 int CURVNET_RESTORE () ;
 int CURVNET_SET (int ) ;
 int M_IP6MOPTS ;
 int free (struct ip6_moptions*,int ) ;
 int im6f_leave (struct in6_mfilter*) ;
 int in6_leavegroup (struct in6_multi*,struct in6_mfilter*) ;
 struct in6_mfilter* ip6_mfilter_first (int *) ;
 int ip6_mfilter_free (struct in6_mfilter*) ;
 int ip6_mfilter_remove (int *,struct in6_mfilter*) ;

__attribute__((used)) static void
inp_gcmoptions(struct ip6_moptions *imo)
{
 struct in6_mfilter *imf;
 struct in6_multi *inm;
 struct ifnet *ifp;

 while ((imf = ip6_mfilter_first(&imo->im6o_head)) != ((void*)0)) {
                ip6_mfilter_remove(&imo->im6o_head, imf);

                im6f_leave(imf);
                if ((inm = imf->im6f_in6m) != ((void*)0)) {
                        if ((ifp = inm->in6m_ifp) != ((void*)0)) {
                                CURVNET_SET(ifp->if_vnet);
                                (void)in6_leavegroup(inm, imf);
                                CURVNET_RESTORE();
                        } else {
                                (void)in6_leavegroup(inm, imf);
                        }
                }
                ip6_mfilter_free(imf);
        }
        free(imo, M_IP6MOPTS);
}
