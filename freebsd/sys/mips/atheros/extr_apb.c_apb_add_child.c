
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct apb_ivar {int resources; } ;
typedef int * device_t ;


 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int * device_add_child_ordered (int *,int ,char const*,int) ;
 int device_set_ivars (int *,struct apb_ivar*) ;
 struct apb_ivar* malloc (int,int ,int) ;
 int printf (char*,char const*,int) ;
 int resource_list_init (int *) ;

__attribute__((used)) static device_t
apb_add_child(device_t bus, u_int order, const char *name, int unit)
{
 device_t child;
 struct apb_ivar *ivar;

 ivar = malloc(sizeof(struct apb_ivar), M_DEVBUF, M_WAITOK | M_ZERO);
 resource_list_init(&ivar->resources);

 child = device_add_child_ordered(bus, order, name, unit);
 if (child == ((void*)0)) {
  printf("Can't add child %s%d ordered\n", name, unit);
  return (0);
 }

 device_set_ivars(child, ivar);

 return (child);
}
