
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
struct kerneldumpheader {int dumpextent; } ;
struct dumperinfo {int (* dumper_start ) (struct dumperinfo*) ;int blocksize; scalar_t__ mediasize; scalar_t__ mediaoffset; scalar_t__ dumpoff; scalar_t__ origdumpoff; int * kdcomp; int kdcrypto; } ;


 int E2BIG ;
 scalar_t__ SIZEOF_METADATA ;
 scalar_t__ dtoh64 (int ) ;
 int htod64 (scalar_t__) ;
 scalar_t__ kerneldumpcrypto_dumpkeysize (int ) ;
 int kerneldumpcrypto_init (int ) ;
 int stub1 (struct dumperinfo*) ;

int
dump_start(struct dumperinfo *di, struct kerneldumpheader *kdh)
{
 uint64_t dumpextent, span;
 uint32_t keysize;
 int error;







 error = 0;
 keysize = 0;


 if (di->dumper_start != ((void*)0)) {
  error = di->dumper_start(di);
 } else {
  dumpextent = dtoh64(kdh->dumpextent);
  span = SIZEOF_METADATA + dumpextent + 2 * di->blocksize +
      keysize;
  if (di->mediasize < span) {
   if (di->kdcomp == ((void*)0))
    return (E2BIG);
   dumpextent = di->mediasize - span + dumpextent;
   kdh->dumpextent = htod64(dumpextent);
  }




  di->dumpoff = di->mediaoffset + di->mediasize - di->blocksize -
      dumpextent;
 }
 di->origdumpoff = di->dumpoff;
 return (error);
}
