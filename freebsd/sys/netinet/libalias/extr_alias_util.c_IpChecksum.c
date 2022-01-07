
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
struct ip {int ip_hl; } ;


 int LibAliasInternetChecksum (int *,int *,int) ;

u_short
IpChecksum(struct ip *pip)
{
 return (LibAliasInternetChecksum(((void*)0), (u_short *) pip,
     (pip->ip_hl << 2)));

}
