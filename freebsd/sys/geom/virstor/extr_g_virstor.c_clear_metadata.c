
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct g_virstor_component {TYPE_2__* gcons; } ;
struct TYPE_5__ {TYPE_1__* provider; } ;
struct TYPE_4__ {scalar_t__ sectorsize; scalar_t__ mediasize; int name; } ;


 int LOG_MSG (int ,char*,int ) ;
 int LVL_INFO ;
 int M_GVIRSTOR ;
 int M_WAITOK ;
 int M_ZERO ;
 int free (char*,int ) ;
 int g_access (TYPE_2__*,int ,int,int ) ;
 int g_topology_assert () ;
 int g_write_data (TYPE_2__*,scalar_t__,char*,scalar_t__) ;
 char* malloc (scalar_t__,int ,int) ;

__attribute__((used)) static int
clear_metadata(struct g_virstor_component *comp)
{
 char *buf;
 int error;

 LOG_MSG(LVL_INFO, "Clearing metadata on %s",
     comp->gcons->provider->name);
 g_topology_assert();
 error = g_access(comp->gcons, 0, 1, 0);
 if (error != 0)
  return (error);
 buf = malloc(comp->gcons->provider->sectorsize, M_GVIRSTOR,
     M_WAITOK | M_ZERO);
 error = g_write_data(comp->gcons,
     comp->gcons->provider->mediasize -
     comp->gcons->provider->sectorsize,
     buf,
     comp->gcons->provider->sectorsize);
 free(buf, M_GVIRSTOR);
 g_access(comp->gcons, 0, -1, 0);
 return (error);
}
