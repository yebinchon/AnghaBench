
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int ptr; } ;
struct TYPE_4__ {int ofs; int fd; } ;
struct TYPE_6__ {TYPE_2__ mem; TYPE_1__ file; } ;
struct chunk {scalar_t__ ch_block; size_t ch_size; int ch_type; TYPE_3__ ch_u; } ;
typedef scalar_t__ lba_t ;





 int EINVAL ;
 int assert (int ) ;
 struct chunk* image_chunk_find (scalar_t__) ;
 int image_copyout_file (int,size_t,int ,int ) ;
 int image_copyout_memory (int,size_t,int ) ;
 int image_copyout_zeroes (int,size_t) ;
 scalar_t__ secsz ;

int
image_copyout_region(int fd, lba_t blk, lba_t size)
{
 struct chunk *ch;
 size_t ofs, sz;
 int error;

 size *= secsz;

 error = 0;
 while (!error && size > 0) {
  ch = image_chunk_find(blk);
  if (ch == ((void*)0)) {
   error = EINVAL;
   break;
  }
  ofs = (blk - ch->ch_block) * secsz;
  sz = ch->ch_size - ofs;
  sz = ((lba_t)sz < size) ? sz : (size_t)size;
  switch (ch->ch_type) {
  case 128:
   error = image_copyout_zeroes(fd, sz);
   break;
  case 130:
   error = image_copyout_file(fd, sz, ch->ch_u.file.fd,
       ch->ch_u.file.ofs + ofs);
   break;
  case 129:
   error = image_copyout_memory(fd, sz, ch->ch_u.mem.ptr);
   break;
  default:
   assert(0);
  }
  size -= sz;
  blk += sz / secsz;
 }
 return (error);
}
