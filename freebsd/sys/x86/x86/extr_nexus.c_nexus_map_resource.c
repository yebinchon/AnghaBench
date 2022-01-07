
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_map_request {scalar_t__ offset; scalar_t__ length; int memattr; int size; } ;
struct resource_map {int * r_vaddr; scalar_t__ r_bushandle; scalar_t__ r_size; int r_bustag; } ;
struct resource {int dummy; } ;
typedef scalar_t__ rman_res_t ;
typedef int device_t ;
typedef scalar_t__ bus_space_handle_t ;


 int EINVAL ;
 int ENXIO ;
 int RF_ACTIVE ;


 int X86_BUS_SPACE_IO ;
 int X86_BUS_SPACE_MEM ;
 int bcopy (struct resource_map_request*,struct resource_map_request*,int ) ;
 int imin (int ,int ) ;
 int * pmap_mapdev_attr (scalar_t__,scalar_t__,int ) ;
 int resource_init_map_request (struct resource_map_request*) ;
 scalar_t__ rman_get_end (struct resource*) ;
 int rman_get_flags (struct resource*) ;
 scalar_t__ rman_get_size (struct resource*) ;
 scalar_t__ rman_get_start (struct resource*) ;

__attribute__((used)) static int
nexus_map_resource(device_t bus, device_t child, int type, struct resource *r,
    struct resource_map_request *argsp, struct resource_map *map)
{
 struct resource_map_request args;
 rman_res_t end, length, start;


 if (!(rman_get_flags(r) & RF_ACTIVE))
  return (ENXIO);


 switch (type) {
 case 129:
 case 128:
  break;
 default:
  return (EINVAL);
 }

 resource_init_map_request(&args);
 if (argsp != ((void*)0))
  bcopy(argsp, &args, imin(argsp->size, args.size));
 start = rman_get_start(r) + args.offset;
 if (args.length == 0)
  length = rman_get_size(r);
 else
  length = args.length;
 end = start + length - 1;
 if (start > rman_get_end(r) || start < rman_get_start(r))
  return (EINVAL);
 if (end > rman_get_end(r) || end < start)
  return (EINVAL);




 switch (type) {
 case 129:
  map->r_bushandle = start;
  map->r_bustag = X86_BUS_SPACE_IO;
  map->r_size = length;
  map->r_vaddr = ((void*)0);
  break;
 case 128:
  map->r_vaddr = pmap_mapdev_attr(start, length, args.memattr);
  map->r_bustag = X86_BUS_SPACE_MEM;
  map->r_size = length;




  map->r_bushandle = (bus_space_handle_t)map->r_vaddr;
  break;
 }
 return (0);
}
