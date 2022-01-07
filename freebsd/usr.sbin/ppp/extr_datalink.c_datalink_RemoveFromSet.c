
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct datalink {int physical; } ;
typedef int fd_set ;


 int physical_RemoveFromSet (int ,int *,int *,int *) ;

int
datalink_RemoveFromSet(struct datalink *dl, fd_set *r, fd_set *w, fd_set *e)
{
  return physical_RemoveFromSet(dl->physical, r, w, e);
}
