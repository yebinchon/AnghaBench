
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_options {int count; int ncmd; int lsb; } ;


 int _do_data_output (void*,struct spi_options*) ;
 int _read_write (int,void*,void*,int,int ) ;
 int bzero (void*,int) ;
 int free (void*) ;
 void* malloc (int) ;
 void* prep_write_buffer (struct spi_options*) ;

__attribute__((used)) static int
perform_readwrite(int hdev, struct spi_options *popt)
{
 int icount, err;
 void *pr, *pw;

 pr = ((void*)0);

 pw = prep_write_buffer(popt);
 icount = popt->count + popt->ncmd;

 if (!pw) {
  err = -1;
  goto the_end;
 }

 pr = malloc(icount + 1);

 if (!pr) {
  err = -2;
  goto the_end;
 }

 bzero(pr, icount);

 err = _read_write(hdev, pw, pr, icount, popt->lsb);

 if (!err)
  err = _do_data_output(pr, popt);

the_end:

 free(pr);
 free(pw);

 return err;
}
