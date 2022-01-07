
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_dl {int sdl_data; } ;
struct ifmaddrs {TYPE_1__* ifma_addr; scalar_t__ ifma_name; struct ifmaddrs* ifma_next; } ;
typedef scalar_t__ sa_family_t ;
struct TYPE_2__ {scalar_t__ const sa_family; } ;


 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static struct ifmaddrs *
next_ifma(struct ifmaddrs *ifma, const char *name, const sa_family_t family)
{

 for(; ifma != ((void*)0); ifma = ifma->ifma_next) {
  struct sockaddr_dl *sdl;

  sdl = (struct sockaddr_dl *)ifma->ifma_name;
  if (ifma->ifma_addr->sa_family == family &&
      strcmp(sdl->sdl_data, name) == 0)
   break;
 }

 return (ifma);
}
