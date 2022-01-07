
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct resource {scalar_t__ size; scalar_t__ ofs; void* ptr; int fd; } ;
typedef scalar_t__ ssize_t ;
typedef scalar_t__ off_t ;


 int EIO ;
 int ESPIPE ;
 void* MAP_FAILED ;
 int SEEK_SET ;
 int errno ;
 scalar_t__ lseek (int ,scalar_t__,int ) ;
 struct resource* rid_lookup (int) ;
 scalar_t__ write (int ,void*,scalar_t__) ;

int
bs_write(int rid, off_t ofs, void *buf, ssize_t bufsz)
{
 struct resource *r;
 volatile void *ptr;
 off_t o;
 ssize_t s;

 r = rid_lookup(rid);
 if (r == ((void*)0))
  return (0);
 if (ofs < 0 || ofs > r->size - bufsz) {
  errno = ESPIPE;
  return (0);
 }
 ofs += r->ofs;
 if (r->ptr != MAP_FAILED) {
  ptr = r->ptr + ofs;
  switch (bufsz) {
  case 1:
   *((volatile uint8_t *)ptr) = *((uint8_t *)buf);
   break;
  case 2:
   *((volatile uint16_t *)ptr) = *((uint16_t *)buf);
   break;
  case 4:
   *((volatile uint32_t *)ptr) = *((uint32_t *)buf);
   break;
  default:
   errno = EIO;
   return (0);
  }
 } else {
  o = lseek(r->fd, ofs, SEEK_SET);
  if (o != ofs)
   return (0);
  s = write(r->fd, buf, bufsz);
  if (s != bufsz)
   return (0);
 }
 return (1);
}
