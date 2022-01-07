
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct bhnd_erom_io {int dummy; } ;
struct bhnd_chipid {int dummy; } ;
typedef int kobj_t ;
typedef TYPE_1__* kobj_class_t ;
typedef int bhnd_erom_t ;
typedef int bhnd_erom_class_t ;
struct TYPE_3__ {size_t size; } ;


 int BHND_EROM_INIT (int *,struct bhnd_chipid const*,struct bhnd_erom_io*) ;
 int ENOMEM ;
 int kobj_init_static (int ,TYPE_1__*) ;

int
bhnd_erom_init_static(bhnd_erom_class_t *cls, bhnd_erom_t *erom, size_t esize,
    const struct bhnd_chipid *cid, struct bhnd_erom_io *eio)
{
 kobj_class_t kcls;

 kcls = (kobj_class_t)cls;


 if (kcls->size > esize)
  return (ENOMEM);


 kobj_init_static((kobj_t)erom, kcls);
 return (BHND_EROM_INIT(erom, cid, eio));
}
