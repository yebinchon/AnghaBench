
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ssize_t ;
typedef TYPE_1__* elf_file_t ;
struct TYPE_3__ {int ef_fd; } ;
typedef scalar_t__ Elf_Off ;


 int EIO ;
 int SEEK_SET ;
 int lseek (int ,scalar_t__,int ) ;
 int read (int ,void*,size_t) ;

__attribute__((used)) static int
ef_read(elf_file_t ef, Elf_Off offset, size_t len, void *dest)
{
 ssize_t r;

 if (offset != (Elf_Off)-1) {
  if (lseek(ef->ef_fd, offset, SEEK_SET) == -1)
   return (EIO);
 }

 r = read(ef->ef_fd, dest, len);
 if (r != -1 && (size_t)r == len)
  return (0);
 else
  return (EIO);
}
