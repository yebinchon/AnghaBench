
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u8 ;
struct sockaddr_dl {int dummy; } ;
struct ixl_vsi {int dummy; } ;


 scalar_t__ LLADDR (struct sockaddr_dl*) ;
 int ixl_add_mc_filter (struct ixl_vsi*,int *) ;

__attribute__((used)) static u_int
ixl_add_maddr(void *arg, struct sockaddr_dl *sdl, u_int cnt)
{
 struct ixl_vsi *vsi = arg;

 ixl_add_mc_filter(vsi, (u8*)LLADDR(sdl));

 return (1);
}
