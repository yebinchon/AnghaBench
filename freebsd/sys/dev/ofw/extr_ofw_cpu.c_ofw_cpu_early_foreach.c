
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int status ;
typedef int phandle_t ;
typedef int pcell_t ;
typedef scalar_t__ (* ofw_cpu_foreach_cb ) (int,int,int,int*) ;
typedef int device_type ;
typedef int cell_t ;
typedef scalar_t__ boolean_t ;
typedef int addr_cells ;


 int OF_child (int) ;
 int OF_finddevice (char*) ;
 int OF_getencprop (int,char*,int*,int) ;
 int OF_getprop (int,char*,char*,int) ;
 int OF_hasprop (int,char*) ;
 int OF_peer (int) ;
 int memset (char*,int ,int) ;
 scalar_t__ strcmp (char*,char*) ;

int
ofw_cpu_early_foreach(ofw_cpu_foreach_cb callback, boolean_t only_runnable)
{
 phandle_t node, child;
 pcell_t addr_cells, reg[2];
 char status[16];
 char device_type[16];
 u_int id, next_id;
 int count, rv;

 count = 0;
 id = 0;
 next_id = 0;

 node = OF_finddevice("/cpus");
 if (node == -1)
  return (-1);


 if (OF_getencprop(node, "#address-cells", &addr_cells,
     sizeof(addr_cells)) < 0)
  return (-1);

 for (child = OF_child(node); child != 0; child = OF_peer(child),
     id = next_id) {


  memset(device_type, 0, sizeof(device_type));
  rv = OF_getprop(child, "device_type", device_type,
      sizeof(device_type) - 1);
  if (rv < 0)
   continue;
  if (strcmp(device_type, "cpu") != 0)
   continue;


  next_id++;






  if (only_runnable) {
   status[0] = '\0';
   OF_getprop(child, "status", status, sizeof(status));
   if (status[0] != '\0' && strcmp(status, "okay") != 0 &&
    strcmp(status, "ok") != 0 &&
    !OF_hasprop(child, "enable-method"))
     continue;
  }




  rv = OF_getencprop(child, "reg", reg,
      addr_cells * sizeof(cell_t));
  if (rv != addr_cells * sizeof(cell_t))
   continue;

  if (callback == ((void*)0) || callback(id, child, addr_cells, reg))
   count++;
 }

 return (only_runnable ? count : id);
}
