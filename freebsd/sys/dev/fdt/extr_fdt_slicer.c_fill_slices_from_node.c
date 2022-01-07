
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
struct flash_slice {char* label; int flags; scalar_t__ size; scalar_t__ base; } ;
typedef scalar_t__ ssize_t ;
typedef scalar_t__ phandle_t ;


 int FLASH_SLICES_FLAG_NONE ;
 int FLASH_SLICES_FLAG_RO ;
 int FLASH_SLICES_MAX_NUM ;
 scalar_t__ OF_child (scalar_t__) ;
 scalar_t__ OF_getprop_alloc (scalar_t__,char*,void**) ;
 scalar_t__ OF_hasprop (scalar_t__,char*) ;
 scalar_t__ OF_peer (scalar_t__) ;
 int debugf (char*,int) ;
 scalar_t__ fdt_regsize (scalar_t__,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static int
fill_slices_from_node(phandle_t node, struct flash_slice *slices, int *count)
{
 char *label;
 phandle_t child;
 u_long base, size;
 int flags, i;
 ssize_t nmlen;

 i = 0;
 for (child = OF_child(node); child != 0; child = OF_peer(child)) {
  flags = FLASH_SLICES_FLAG_NONE;


  if (OF_hasprop(child, "compatible"))
   continue;

  if (i == FLASH_SLICES_MAX_NUM) {
   debugf("not enough buffer for slice i=%d\n", i);
   break;
  }


  if (fdt_regsize(child, &base, &size) != 0) {
   debugf("error during processing reg property, i=%d\n",
       i);
   continue;
  }

  if (size == 0) {
   debugf("slice i=%d with no size\n", i);
   continue;
  }


  nmlen = OF_getprop_alloc(child, "label", (void **)&label);
  if (nmlen <= 0) {

   nmlen = OF_getprop_alloc(child, "name", (void **)&label);
   if (nmlen <= 0) {
    debugf("slice i=%d with no name\n", i);
    label = ((void*)0);
   }
  }

  if (OF_hasprop(child, "read-only"))
   flags |= FLASH_SLICES_FLAG_RO;


  slices[i].base = base;
  slices[i].size = size;
  slices[i].label = label;
  slices[i].flags = flags;
  i++;
 }

 *count = i;
 return (0);
}
