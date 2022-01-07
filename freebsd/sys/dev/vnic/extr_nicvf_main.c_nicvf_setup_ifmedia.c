
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nicvf {int if_media; } ;


 int IFM_1000_T ;
 int IFM_100_TX ;
 int IFM_10G_SR ;
 int IFM_10_T ;
 int IFM_40G_CR4 ;
 int IFM_AUTO ;
 int IFM_ETHER ;
 int IFM_FDX ;
 int IFM_IMASK ;
 int ifmedia_add (int *,int,int ,int *) ;
 int ifmedia_init (int *,int ,int ,int ) ;
 int ifmedia_set (int *,int) ;
 int nicvf_media_change ;
 int nicvf_media_status ;

__attribute__((used)) static int
nicvf_setup_ifmedia(struct nicvf *nic)
{

 ifmedia_init(&nic->if_media, IFM_IMASK, nicvf_media_change,
     nicvf_media_status);






 ifmedia_add(&nic->if_media, (IFM_ETHER | IFM_10_T | IFM_FDX),
     0, ((void*)0));
 ifmedia_add(&nic->if_media, (IFM_ETHER | IFM_100_TX | IFM_FDX),
     0, ((void*)0));
 ifmedia_add(&nic->if_media, (IFM_ETHER | IFM_1000_T | IFM_FDX),
     0, ((void*)0));
 ifmedia_add(&nic->if_media, (IFM_ETHER | IFM_10G_SR | IFM_FDX),
     0, ((void*)0));
 ifmedia_add(&nic->if_media, (IFM_ETHER | IFM_40G_CR4 | IFM_FDX),
     0, ((void*)0));
 ifmedia_add(&nic->if_media, (IFM_ETHER | IFM_AUTO | IFM_FDX),
     0, ((void*)0));

 ifmedia_set(&nic->if_media, (IFM_ETHER | IFM_AUTO | IFM_FDX));

 return (0);
}
