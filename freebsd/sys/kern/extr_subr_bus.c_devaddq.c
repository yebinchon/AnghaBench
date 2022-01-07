
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int M_BUS ;
 int M_NOWAIT ;
 int bus_child_location_str (int ,char*,int) ;
 int bus_child_pnpinfo_str (int ,char*,int) ;
 int devctl_queue_data (char*) ;
 int devctl_queue_length ;
 char* device_get_nameunit (int *) ;
 int * device_get_parent (int ) ;
 int free (char*,int ) ;
 char* malloc (int,int ,int ) ;
 int snprintf (char*,int,char*,char const*,char const*,char*,char*,char const*) ;

__attribute__((used)) static void
devaddq(const char *type, const char *what, device_t dev)
{
 char *data = ((void*)0);
 char *loc = ((void*)0);
 char *pnp = ((void*)0);
 const char *parstr;

 if (!devctl_queue_length)
  return;
 data = malloc(1024, M_BUS, M_NOWAIT);
 if (data == ((void*)0))
  goto bad;


 loc = malloc(1024, M_BUS, M_NOWAIT);
 if (loc == ((void*)0))
  goto bad;
 *loc = '\0';
 bus_child_location_str(dev, loc, 1024);


 pnp = malloc(1024, M_BUS, M_NOWAIT);
 if (pnp == ((void*)0))
  goto bad;
 *pnp = '\0';
 bus_child_pnpinfo_str(dev, pnp, 1024);


 if (device_get_parent(dev) == ((void*)0))
  parstr = ".";
 else
  parstr = device_get_nameunit(device_get_parent(dev));

 snprintf(data, 1024, "%s%s at %s %s on %s\n", type, what, loc, pnp,
   parstr);
 free(loc, M_BUS);
 free(pnp, M_BUS);
 devctl_queue_data(data);
 return;
bad:
 free(pnp, M_BUS);
 free(loc, M_BUS);
 free(data, M_BUS);
 return;
}
