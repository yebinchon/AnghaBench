
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
typedef int bus_space_tag_t ;
typedef int bus_space_handle_t ;
typedef uintptr_t bhnd_size_t ;


 int bus_space_subregion (int ,int ,uintptr_t,uintptr_t,int *) ;
 int rman_get_bushandle (struct resource*) ;
 int rman_get_bustag (struct resource*) ;
 scalar_t__ rman_get_virtual (struct resource*) ;
 int rman_set_bushandle (struct resource*,int ) ;
 int rman_set_bustag (struct resource*,int ) ;
 int rman_set_virtual (struct resource*,void*) ;

int
chipc_init_child_resource(struct resource *r,
    struct resource *parent, bhnd_size_t offset, bhnd_size_t size)
{
 bus_space_handle_t bh, child_bh;
 bus_space_tag_t bt;
 uintptr_t vaddr;
 int error;


 vaddr = (uintptr_t) rman_get_virtual(parent);
 bt = rman_get_bustag(parent);
 bh = rman_get_bushandle(parent);


 vaddr += offset;
 error = bus_space_subregion(bt, bh, offset, size, &child_bh);
 if (error)
  return (error);

 rman_set_virtual(r, (void *) vaddr);
 rman_set_bustag(r, bt);
 rman_set_bushandle(r, child_bh);

 return (0);
}
