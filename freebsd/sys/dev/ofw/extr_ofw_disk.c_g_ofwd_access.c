
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_provider {TYPE_1__* geom; } ;
struct TYPE_2__ {int * softc; } ;


 int ENXIO ;

__attribute__((used)) static int
g_ofwd_access(struct g_provider *pp, int r, int w, int e)
{

 if (pp->geom->softc == ((void*)0))
  return (ENXIO);
 return (0);
}
