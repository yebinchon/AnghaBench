
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ linker_class_t ;
typedef TYPE_1__* kobj_class_t ;
struct TYPE_3__ {int refs; } ;


 int EPERM ;
 int TAILQ_INSERT_TAIL (int *,scalar_t__,int ) ;
 int classes ;
 int kobj_class_compile (TYPE_1__*) ;
 int link ;
 int linker_no_more_classes ;

int
linker_add_class(linker_class_t lc)
{






 if (linker_no_more_classes == 1)
  return (EPERM);
 kobj_class_compile((kobj_class_t) lc);
 ((kobj_class_t)lc)->refs++;
 TAILQ_INSERT_TAIL(&classes, lc, link);
 return (0);
}
