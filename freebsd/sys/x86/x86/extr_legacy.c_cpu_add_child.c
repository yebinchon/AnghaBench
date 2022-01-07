
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct pcpu {int * pc_device; } ;
struct cpu_device {struct pcpu* cd_pcpu; int cd_rl; } ;
typedef int * device_t ;


 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int * device_add_child_ordered (int *,int ,char const*,int) ;
 int device_get_unit (int *) ;
 int device_set_ivars (int *,struct cpu_device*) ;
 int free (struct cpu_device*,int ) ;
 struct cpu_device* malloc (int,int ,int) ;
 struct pcpu* pcpu_find (int ) ;
 int resource_list_init (int *) ;

__attribute__((used)) static device_t
cpu_add_child(device_t bus, u_int order, const char *name, int unit)
{
 struct cpu_device *cd;
 device_t child;
 struct pcpu *pc;

 if ((cd = malloc(sizeof(*cd), M_DEVBUF, M_NOWAIT | M_ZERO)) == ((void*)0))
  return (((void*)0));

 resource_list_init(&cd->cd_rl);
 pc = pcpu_find(device_get_unit(bus));
 cd->cd_pcpu = pc;

 child = device_add_child_ordered(bus, order, name, unit);
 if (child != ((void*)0)) {
  pc->pc_device = child;
  device_set_ivars(child, cd);
 } else
  free(cd, M_DEVBUF);
 return (child);
}
