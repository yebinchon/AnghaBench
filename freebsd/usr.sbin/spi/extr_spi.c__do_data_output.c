
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct spi_options {int ncmd; int count; scalar_t__ verbose; int lsb; int ASCII; scalar_t__ binary; } ;


 scalar_t__ EOF ;
 int errno ;
 scalar_t__ fprintf (int ,char*,int,...) ;
 scalar_t__ fputc (char,int ) ;
 scalar_t__ fwrite (int const*,int,int,int ) ;
 int stderr ;
 int stdout ;
 int verbose_dump_buffer (void*,int,int ) ;

__attribute__((used)) static int
_do_data_output(void *pr, struct spi_options *popt)
{
 int err, idx, icount;
 const char *sz_bytes, *sz_byte2;
 const uint8_t *pbuf;

 pbuf = (uint8_t *)pr + popt->ncmd;
 icount = popt->count;
 err = 0;

 if (icount <= 0) {
  return -1;
 }

 if (icount != 1)
  sz_bytes = "bytes";
 else
  sz_bytes = "byte";

 if (popt->ncmd != 1)
  sz_byte2 = "bytes";
 else
  sz_byte2 = "byte";


 if (popt->binary || !popt->ASCII) {
  if (popt->verbose > 0)
   fprintf(stderr, "Binary output of %d %s\n", icount,
       sz_bytes);

  err = (int)fwrite(pbuf, 1, icount, stdout) != icount;
 }
 else if (icount > 0) {
  if (popt->verbose > 0)
   fprintf(stderr, "ASCII output of %d %s\n", icount,
       sz_bytes);


  for (idx = 0; !err && idx < icount; idx++) {
   if (idx) {



    err = fputc(' ', stdout) == EOF;
   }

   if (!err)
    err = fprintf(stdout, "%02hhx", pbuf[idx]) < 0;
  }

  if (!err)
   err = fputc('\n', stdout) == EOF;
 }



 if (err)
  fprintf(stderr, "Error writing to stdout, errno=%d\n", errno);
 else if (popt->verbose > 0 && icount) {
  fprintf(stderr,
      "%d command %s and %d data %s read from SPI device\n",
      popt->ncmd, sz_byte2, icount, sz_bytes);


  verbose_dump_buffer(pr, icount + popt->ncmd, popt->lsb);
 }

 return err;
}
