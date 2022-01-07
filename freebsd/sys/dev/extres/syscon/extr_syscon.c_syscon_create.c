
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* syscon_class_t ;
struct syscon {int pdev; void* softc; } ;
typedef int kobj_t ;
typedef int kobj_class_t ;
typedef int device_t ;
struct TYPE_3__ {int size; } ;


 int M_SYSCON ;
 int M_WAITOK ;
 int M_ZERO ;
 int kobj_init (int ,int ) ;
 void* malloc (int,int ,int) ;

struct syscon *
syscon_create(device_t pdev, syscon_class_t syscon_class)
{
 struct syscon *syscon;


 syscon = malloc(sizeof(struct syscon), M_SYSCON,
     M_WAITOK | M_ZERO);
 kobj_init((kobj_t)syscon, (kobj_class_t)syscon_class);


 if (syscon_class->size > 0)
  syscon->softc = malloc(syscon_class->size, M_SYSCON,
      M_WAITOK | M_ZERO);


 syscon->pdev = pdev;
 return (syscon);
}
