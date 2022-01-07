
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct kerneldumpcomp {int kdc_format; void* kdc_buf; int * kdc_stream; } ;
struct dumperinfo {int maxiosize; } ;


 int COMPRESS_GZIP ;
 int COMPRESS_ZSTD ;


 int M_DUMPER ;
 int M_NODUMP ;
 int M_WAITOK ;
 int M_ZERO ;
 int * compressor_init (int ,int,int,int ,struct dumperinfo*) ;
 int free (struct kerneldumpcomp*,int ) ;
 int kerneldump_gzlevel ;
 int kerneldumpcomp_write_cb ;
 void* malloc (int,int ,int) ;

__attribute__((used)) static struct kerneldumpcomp *
kerneldumpcomp_create(struct dumperinfo *di, uint8_t compression)
{
 struct kerneldumpcomp *kdcomp;
 int format;

 switch (compression) {
 case 129:
  format = COMPRESS_GZIP;
  break;
 case 128:
  format = COMPRESS_ZSTD;
  break;
 default:
  return (((void*)0));
 }

 kdcomp = malloc(sizeof(*kdcomp), M_DUMPER, M_WAITOK | M_ZERO);
 kdcomp->kdc_format = compression;
 kdcomp->kdc_stream = compressor_init(kerneldumpcomp_write_cb,
     format, di->maxiosize, kerneldump_gzlevel, di);
 if (kdcomp->kdc_stream == ((void*)0)) {
  free(kdcomp, M_DUMPER);
  return (((void*)0));
 }
 kdcomp->kdc_buf = malloc(di->maxiosize, M_DUMPER, M_WAITOK | M_NODUMP);
 return (kdcomp);
}
