
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uintmax_t ;
typedef scalar_t__ ssize_t ;
typedef TYPE_1__* elf_file_t ;
struct TYPE_4__ {int ef_fd; int ef_name; scalar_t__ ef_verbose; } ;
typedef scalar_t__ Elf_Off ;


 int EFAULT ;
 scalar_t__ ef_get_offset (TYPE_1__*,scalar_t__) ;
 int errno ;
 scalar_t__ pread (int ,char*,size_t,scalar_t__) ;
 size_t strnlen (char*,size_t) ;
 int warnx (char*,int ,int ,int ) ;

__attribute__((used)) static int
ef_seg_read_string(elf_file_t ef, Elf_Off offset, size_t len, char *dest)
{
 Elf_Off ofs;
 ssize_t r;

 ofs = ef_get_offset(ef, offset);
 if (ofs == 0 || ofs == (Elf_Off)-1) {
  if (ef->ef_verbose)
   warnx("ef_seg_read_string(%s): bad offset (%jx:%ju)",
       ef->ef_name, (uintmax_t)offset, (uintmax_t)ofs);
  return (EFAULT);
 }

 r = pread(ef->ef_fd, dest, len, ofs);
 if (r < 0)
  return (errno);
 if (strnlen(dest, len) == len)
  return (EFAULT);

 return (0);
}
