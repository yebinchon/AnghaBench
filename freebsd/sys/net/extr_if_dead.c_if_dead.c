
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_ratelimit_query; int if_snd_tag_free; int if_snd_tag_query; int if_snd_tag_modify; int if_snd_tag_alloc; int if_get_counter; int if_transmit; int if_qflush; int if_resolvemulti; int if_ioctl; int if_start; int if_input; int if_output; } ;


 int ifdead_get_counter ;
 int ifdead_input ;
 int ifdead_ioctl ;
 int ifdead_output ;
 int ifdead_qflush ;
 int ifdead_ratelimit_query ;
 int ifdead_resolvemulti ;
 int ifdead_snd_tag_alloc ;
 int ifdead_snd_tag_free ;
 int ifdead_snd_tag_modify ;
 int ifdead_snd_tag_query ;
 int ifdead_start ;
 int ifdead_transmit ;

void
if_dead(struct ifnet *ifp)
{

 ifp->if_output = ifdead_output;
 ifp->if_input = ifdead_input;
 ifp->if_start = ifdead_start;
 ifp->if_ioctl = ifdead_ioctl;
 ifp->if_resolvemulti = ifdead_resolvemulti;
 ifp->if_qflush = ifdead_qflush;
 ifp->if_transmit = ifdead_transmit;
 ifp->if_get_counter = ifdead_get_counter;
 ifp->if_snd_tag_alloc = ifdead_snd_tag_alloc;
 ifp->if_snd_tag_modify = ifdead_snd_tag_modify;
 ifp->if_snd_tag_query = ifdead_snd_tag_query;
 ifp->if_snd_tag_free = ifdead_snd_tag_free;
 ifp->if_ratelimit_query = ifdead_ratelimit_query;
}
