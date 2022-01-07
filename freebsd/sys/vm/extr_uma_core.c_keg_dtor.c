
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* uma_keg_t ;
struct TYPE_5__ {scalar_t__ uk_free; char* uk_name; int uk_pages; int uk_hash; } ;


 int KEG_LOCK (TYPE_1__*) ;
 int KEG_LOCK_FINI (TYPE_1__*) ;
 int KEG_UNLOCK (TYPE_1__*) ;
 int hash_free (int *) ;
 int printf (char*,char*,scalar_t__,int) ;

__attribute__((used)) static void
keg_dtor(void *arg, int size, void *udata)
{
 uma_keg_t keg;

 keg = (uma_keg_t)arg;
 KEG_LOCK(keg);
 if (keg->uk_free != 0) {
  printf("Freed UMA keg (%s) was not empty (%d items). "
      " Lost %d pages of memory.\n",
      keg->uk_name ? keg->uk_name : "",
      keg->uk_free, keg->uk_pages);
 }
 KEG_UNLOCK(keg);

 hash_free(&keg->uk_hash);

 KEG_LOCK_FINI(keg);
}
