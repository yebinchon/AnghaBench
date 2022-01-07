
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int fd; } ;


 scalar_t__ FILE_MMAP ;
 int * buffer ;
 int * bufpos ;
 scalar_t__ bufrem ;
 int close (int ) ;
 scalar_t__ filebehave ;
 int free (int *) ;
 int fsiz ;
 int * lnbuf ;
 scalar_t__ lnbuflen ;
 int munmap (int *,int ) ;

void
grep_close(struct file *f)
{

 close(f->fd);


 if (filebehave == FILE_MMAP) {
  munmap(buffer, fsiz);
  buffer = ((void*)0);
 }
 bufpos = buffer;
 bufrem = 0;

 free(lnbuf);
 lnbuf = ((void*)0);
 lnbuflen = 0;
}
