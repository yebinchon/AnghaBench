
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dumperinfo {int blocksize; int blockbuf; } ;


 int dump_append (struct dumperinfo*,int ,int ,int ) ;
 scalar_t__ fragsz ;

int
dumpsys_buf_flush(struct dumperinfo *di)
{
 int error;

 if (fragsz == 0)
  return (0);

 error = dump_append(di, di->blockbuf, 0, di->blocksize);
 fragsz = 0;
 return (error);
}
