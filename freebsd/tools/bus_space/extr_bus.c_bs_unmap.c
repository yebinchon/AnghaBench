
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int rid; scalar_t__ ptr; int fd; int size; } ;


 scalar_t__ MAP_FAILED ;
 int close (int) ;
 int munmap (scalar_t__,int ) ;
 struct resource* rid_lookup (int) ;

int
bs_unmap(int rid)
{
 struct resource *r;

 r = rid_lookup(rid);
 if (r == ((void*)0))
  return (0);
 if (r->rid == -1) {
  if (r->ptr != MAP_FAILED)
   munmap(r->ptr, r->size);
  close(r->fd);
 }
 r->fd = -1;
 return (1);
}
