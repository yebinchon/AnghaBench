
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_options {int lsb; scalar_t__ ncmd; scalar_t__ count; } ;


 int _read_write (int,void*,int *,scalar_t__,int ) ;
 int free (void*) ;
 void* prep_write_buffer (struct spi_options*) ;

__attribute__((used)) static int
perform_write(int hdev, struct spi_options *popt)
{
 int err;
 void *pw;



 pw = prep_write_buffer(popt);

 if (!pw) {
  err = -1;
  goto the_end;
 }

 err = _read_write(hdev, pw, ((void*)0), popt->count + popt->ncmd, popt->lsb);

the_end:

 free(pw);

 return err;
}
