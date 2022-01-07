
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_2__ {int blkno; int len; scalar_t__ offset; } ;
struct mkuz_blk {TYPE_1__ info; int data; } ;
typedef scalar_t__ off_t ;


 struct mkuz_blk* MKUZ_BLK_EOF ;
 int SEEK_CUR ;
 int err (int,char*) ;
 int free (struct mkuz_blk*) ;
 scalar_t__ lseek (int,int ,int ) ;
 struct mkuz_blk* mkuz_blk_ctor (int ) ;
 int read (int,int ,int ) ;

__attribute__((used)) static struct mkuz_blk *
readblock(int fd, u_int32_t clstsize)
{
 int numread;
 struct mkuz_blk *rval;
 static int blockcnt;
 off_t cpos;

 rval = mkuz_blk_ctor(clstsize);

 rval->info.blkno = blockcnt;
 blockcnt += 1;
 cpos = lseek(fd, 0, SEEK_CUR);
 if (cpos < 0) {
  err(1, "readblock: lseek() failed");

 }
 rval->info.offset = cpos;

 numread = read(fd, rval->data, clstsize);
 if (numread < 0) {
  err(1, "readblock: read() failed");

 }
 if (numread == 0) {
  free(rval);
  return MKUZ_BLK_EOF;
 }
 rval->info.len = numread;
 return rval;
}
