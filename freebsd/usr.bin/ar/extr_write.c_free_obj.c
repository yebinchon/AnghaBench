
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bsdar {int dummy; } ;
struct ar_obj {int fd; struct ar_obj* name; int size; struct ar_obj* maddr; } ;


 int bsdar_warnc (struct bsdar*,int ,char*,struct ar_obj*) ;
 int errno ;
 int free (struct ar_obj*) ;
 scalar_t__ munmap (struct ar_obj*,int ) ;

__attribute__((used)) static void
free_obj(struct bsdar *bsdar, struct ar_obj *obj)
{
 if (obj->fd == -1)
  free(obj->maddr);
 else
  if (obj->maddr != ((void*)0) && munmap(obj->maddr, obj->size))
   bsdar_warnc(bsdar, errno,
       "can't munmap file: %s", obj->name);
 free(obj->name);
 free(obj);
}
