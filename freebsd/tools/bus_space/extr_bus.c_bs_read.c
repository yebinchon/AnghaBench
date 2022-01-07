
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
 scalar_t__ read (int ,void*,scalar_t__) ;
 struct resource* rid_lookup (int) ;

int
bs_read(int rid, off_t ofs, void *buf, ssize_t bufsz)
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
   *((uint8_t *)buf) = *((volatile uint8_t *)ptr);
   break;
  case 2:
   *((uint16_t *)buf) = *((volatile uint16_t *)ptr);
   break;
  case 4:
   *((uint32_t *)buf) = *((volatile uint32_t *)ptr);
   break;
  default:
   errno = EIO;
   return (0);
  }
 } else {
  o = lseek(r->fd, ofs, SEEK_SET);
  if (o != ofs)
   return (0);
  s = read(r->fd, buf, bufsz);
  if (s != bufsz)
   return (0);
 }
 return (1);
}
