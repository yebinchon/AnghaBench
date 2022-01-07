
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dumperinfo {int blocksize; scalar_t__ blockbuf; } ;


 int dump_append (struct dumperinfo*,scalar_t__,int ,int) ;
 int fragsz ;
 int memcpy (char*,char*,size_t) ;

int
dumpsys_buf_write(struct dumperinfo *di, char *ptr, size_t sz)
{
 size_t len;
 int error;

 while (sz) {
  len = di->blocksize - fragsz;
  if (len > sz)
   len = sz;
  memcpy((char *)di->blockbuf + fragsz, ptr, len);
  fragsz += len;
  ptr += len;
  sz -= len;
  if (fragsz == di->blocksize) {
   error = dump_append(di, di->blockbuf, 0, di->blocksize);
   if (error)
    return (error);
   fragsz = 0;
  }
 }
 return (0);
}
