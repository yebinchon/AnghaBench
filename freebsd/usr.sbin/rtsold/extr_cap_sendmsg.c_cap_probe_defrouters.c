
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifinfo {int linkid; TYPE_1__* sdl; } ;
typedef int nvlist_t ;
typedef int cap_channel_t ;
struct TYPE_2__ {int sdl_index; } ;


 int * cap_xfer_nvlist (int *,int *) ;
 scalar_t__ dnvlist_get_number (int *,char*,int ) ;
 int errno ;
 int nvlist_add_number (int *,char*,int ) ;
 int nvlist_add_string (int *,char*,char*) ;
 int * nvlist_create (int ) ;
 int nvlist_destroy (int *) ;
 int probe_defrouters (int ,int ) ;

int
cap_probe_defrouters(cap_channel_t *cap, struct ifinfo *ifinfo)
{
 (void)cap;
 return (probe_defrouters(ifinfo->sdl->sdl_index, ifinfo->linkid));

}
