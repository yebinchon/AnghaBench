
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kerneldumpheader {scalar_t__ parity; int dumplength; } ;
struct dumperinfo {TYPE_1__* kdcomp; scalar_t__ origdumpoff; scalar_t__ dumpoff; int blocksize; int * blockbuf; } ;
struct TYPE_2__ {int kdc_stream; scalar_t__ kdc_resid; } ;


 int EAGAIN ;
 int compressor_flush (int ) ;
 int compressor_reset (int ) ;
 int dump_write (struct dumperinfo*,int *,int ,scalar_t__,int ) ;
 int dump_write_headers (struct dumperinfo*,struct kerneldumpheader*) ;
 int htod64 (scalar_t__) ;
 scalar_t__ kerneldump_parity (struct kerneldumpheader*) ;

int
dump_finish(struct dumperinfo *di, struct kerneldumpheader *kdh)
{
 int error;

 if (di->kdcomp != ((void*)0)) {
  error = compressor_flush(di->kdcomp->kdc_stream);
  if (error == EAGAIN) {

   error = dump_write(di, di->blockbuf, 0, di->dumpoff,
       di->blocksize);
   di->dumpoff += di->kdcomp->kdc_resid;
   di->kdcomp->kdc_resid = 0;
  }
  if (error != 0)
   return (error);





  kdh->dumplength = htod64(di->dumpoff - di->origdumpoff);
  kdh->parity = 0;
  kdh->parity = kerneldump_parity(kdh);

  compressor_reset(di->kdcomp->kdc_stream);
 }

 error = dump_write_headers(di, kdh);
 if (error != 0)
  return (error);

 (void)dump_write(di, ((void*)0), 0, 0, 0);
 return (0);
}
