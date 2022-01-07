
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct kerneldumpheader {char* magic; char* architecture; char* hostname; char* versionstring; char* panicstring; int parity; int compression; void* blocksize; void* dumpkeysize; void* dumptime; void* dumplength; void* dumpextent; void* architectureversion; void* version; } ;
struct dumperinfo {TYPE_1__* kdcomp; int blocksize; int kdcrypto; } ;
struct TYPE_4__ {char* pr_hostname; } ;
struct TYPE_3__ {int kdc_format; } ;


 int KERNELDUMPVERSION ;
 char* MACHINE_ARCH ;
 int bzero (struct kerneldumpheader*,int) ;
 void* htod32 (int ) ;
 void* htod64 (int ) ;
 int kerneldump_parity (struct kerneldumpheader*) ;
 int kerneldumpcrypto_dumpkeysize (int ) ;
 char* panicstr ;
 TYPE_2__ prison0 ;
 size_t strlcpy (char*,char*,int) ;
 int time_second ;
 char* version ;

void
dump_init_header(const struct dumperinfo *di, struct kerneldumpheader *kdh,
    char *magic, uint32_t archver, uint64_t dumplen)
{
 size_t dstsize;

 bzero(kdh, sizeof(*kdh));
 strlcpy(kdh->magic, magic, sizeof(kdh->magic));
 strlcpy(kdh->architecture, MACHINE_ARCH, sizeof(kdh->architecture));
 kdh->version = htod32(KERNELDUMPVERSION);
 kdh->architectureversion = htod32(archver);
 kdh->dumplength = htod64(dumplen);
 kdh->dumpextent = kdh->dumplength;
 kdh->dumptime = htod64(time_second);



 kdh->dumpkeysize = 0;

 kdh->blocksize = htod32(di->blocksize);
 strlcpy(kdh->hostname, prison0.pr_hostname, sizeof(kdh->hostname));
 dstsize = sizeof(kdh->versionstring);
 if (strlcpy(kdh->versionstring, version, dstsize) >= dstsize)
  kdh->versionstring[dstsize - 2] = '\n';
 if (panicstr != ((void*)0))
  strlcpy(kdh->panicstring, panicstr, sizeof(kdh->panicstring));
 if (di->kdcomp != ((void*)0))
  kdh->compression = di->kdcomp->kdc_format;
 kdh->parity = kerneldump_parity(kdh);
}
