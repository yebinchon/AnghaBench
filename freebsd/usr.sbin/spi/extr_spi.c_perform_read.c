
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_options {int count; int ncmd; int lsb; int pcmd; } ;


 int _do_data_output (void*,struct spi_options*) ;
 int _read_write (int,void*,void*,int,int ) ;
 int bzero (void*,int) ;
 int free (void*) ;
 void* malloc (int) ;
 int memcpy (void*,int ,int) ;

__attribute__((used)) static int
perform_read(int hdev, struct spi_options *popt)
{
 int icount, err;
 void *pr, *pw;

 pr = ((void*)0);
 icount = popt->count + popt->ncmd;


 pw = malloc(icount);

 if (!pw) {
  err = -1;
  goto the_end;
 }

 bzero(pw, icount);


 if (popt->pcmd && popt->ncmd > 0)
  memcpy(pw, popt->pcmd, popt->ncmd);

 pr = malloc(icount + 1);

 if (!pr) {
  err = -2;
  goto the_end;
 }

 bzero(pr, icount);

 err = _read_write(hdev, pw, pr, icount, popt->lsb);

 if (!err && popt->count > 0)
  err = _do_data_output(pr, popt);

the_end:

 free(pr);
 free(pw);

 return err;
}
