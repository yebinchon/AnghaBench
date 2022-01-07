
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_resource {int direct; int res; } ;
typedef int device_t ;


 int BUS_DEACTIVATE_RESOURCE (int ,int ,int,int,int ) ;
 int KASSERT (int,char*) ;
 int RF_ACTIVE ;
 int rman_get_flags (int ) ;

__attribute__((used)) static int
bhndb_deactivate_bhnd_resource(device_t dev, device_t child,
    int type, int rid, struct bhnd_resource *r)
{
 int error;


 if (!r->direct)
  return (0);

 KASSERT(rman_get_flags(r->res) & RF_ACTIVE,
     ("RF_ACTIVE not set on direct resource"));


 error = BUS_DEACTIVATE_RESOURCE(dev, child, type, rid, r->res);
 if (!error)
  r->direct = 0;

 return (error);
}
