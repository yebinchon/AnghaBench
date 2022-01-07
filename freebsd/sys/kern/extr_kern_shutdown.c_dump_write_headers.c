
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct kerneldumpheader {int dumpextent; } ;
struct kerneldumpcrypto {void* kdc_dumpkey; } ;
struct dumperinfo {size_t blocksize; int (* dumper_hdr ) (struct dumperinfo*,struct kerneldumpheader*,void*,int) ;size_t mediaoffset; size_t mediasize; void* blockbuf; struct kerneldumpcrypto* kdcrypto; } ;


 int ENOMEM ;
 int dtoh64 (int ) ;
 int dump_write (struct dumperinfo*,void*,int ,int,int) ;
 int kerneldumpcrypto_dumpkeysize (struct kerneldumpcrypto*) ;
 int memcpy (void*,struct kerneldumpheader*,size_t) ;
 int memset (void*,int ,size_t) ;
 int stub1 (struct dumperinfo*,struct kerneldumpheader*,void*,int) ;

__attribute__((used)) static int
dump_write_headers(struct dumperinfo *di, struct kerneldumpheader *kdh)
{



 void *buf, *key;
 size_t hdrsz;
 uint64_t extent;
 uint32_t keysize;
 int error;

 hdrsz = sizeof(*kdh);
 if (hdrsz > di->blocksize)
  return (ENOMEM);






 key = ((void*)0);
 keysize = 0;






 if (di->dumper_hdr != ((void*)0))
  return (di->dumper_hdr(di, kdh, key, keysize));

 if (hdrsz == di->blocksize)
  buf = kdh;
 else {
  buf = di->blockbuf;
  memset(buf, 0, di->blocksize);
  memcpy(buf, kdh, hdrsz);
 }

 extent = dtoh64(kdh->dumpextent);
 error = dump_write(di, buf, 0,
     di->mediaoffset + di->mediasize - 2 * di->blocksize - extent -
     keysize, di->blocksize);
 if (error == 0)
  error = dump_write(di, buf, 0, di->mediaoffset + di->mediasize -
      di->blocksize, di->blocksize);
 return (error);
}
