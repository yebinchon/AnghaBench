
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uintmax_t ;
struct bhnd_erom_io {int dummy; } ;
struct bhnd_chipid {scalar_t__ enum_addr; } ;
typedef int kobj_t ;
typedef int kobj_class_t ;
typedef int bhnd_erom_t ;
struct TYPE_3__ {char* name; } ;
typedef TYPE_1__ bhnd_erom_class_t ;


 int BHND_EROM_INIT (int *,struct bhnd_chipid const*,struct bhnd_erom_io*) ;
 int M_BHND ;
 int M_WAITOK ;
 int M_ZERO ;
 scalar_t__ kobj_create (int ,int ,int) ;
 int kobj_delete (int ,int ) ;
 int printf (char*,char*,int ,int) ;

bhnd_erom_t *
bhnd_erom_alloc(bhnd_erom_class_t *cls, const struct bhnd_chipid *cid,
    struct bhnd_erom_io *eio)
{
 bhnd_erom_t *erom;
 int error;

 erom = (bhnd_erom_t *)kobj_create((kobj_class_t)cls, M_BHND,
     M_WAITOK|M_ZERO);

 if ((error = BHND_EROM_INIT(erom, cid, eio))) {
  printf("error initializing %s parser at %#jx: %d\n", cls->name,
      (uintmax_t)cid->enum_addr, error);

  kobj_delete((kobj_t)erom, M_BHND);
  return (((void*)0));
 }

 return (erom);
}
