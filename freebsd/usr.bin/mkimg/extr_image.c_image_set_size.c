
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lba_t ;


 int image_chunk_skipto (int ) ;
 int image_size ;

int
image_set_size(lba_t blk)
{
 int error;

 error = image_chunk_skipto(blk);
 if (!error)
  image_size = blk;
 return (error);
}
