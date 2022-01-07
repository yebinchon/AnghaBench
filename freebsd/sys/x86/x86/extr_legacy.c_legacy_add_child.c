
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct legacy_device {int lg_pcibus; int lg_pcislot; int lg_pcifunc; } ;
typedef int * device_t ;


 int M_LEGACYDEV ;
 int M_NOWAIT ;
 int M_ZERO ;
 int * device_add_child_ordered (int *,int ,char const*,int) ;
 int device_set_ivars (int *,struct legacy_device*) ;
 int free (struct legacy_device*,int ) ;
 struct legacy_device* malloc (int,int ,int) ;

__attribute__((used)) static device_t
legacy_add_child(device_t bus, u_int order, const char *name, int unit)
{
 device_t child;
 struct legacy_device *atdev;

 atdev = malloc(sizeof(struct legacy_device), M_LEGACYDEV,
     M_NOWAIT | M_ZERO);
 if (atdev == ((void*)0))
  return(((void*)0));
 atdev->lg_pcibus = -1;
 atdev->lg_pcislot = -1;
 atdev->lg_pcifunc = -1;

 child = device_add_child_ordered(bus, order, name, unit);
 if (child == ((void*)0))
  free(atdev, M_LEGACYDEV);
 else

  device_set_ivars(child, atdev);

 return (child);
}
