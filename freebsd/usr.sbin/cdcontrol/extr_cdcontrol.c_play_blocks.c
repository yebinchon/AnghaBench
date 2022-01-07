
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioc_play_blocks {int blk; int len; } ;


 int CDIOCPLAYBLOCKS ;
 int fd ;
 int ioctl (int ,int ,struct ioc_play_blocks*) ;

__attribute__((used)) static int
play_blocks(int blk, int len)
{
 struct ioc_play_blocks t;

 t.blk = blk;
 t.len = len;

 return ioctl (fd, CDIOCPLAYBLOCKS, &t);
}
