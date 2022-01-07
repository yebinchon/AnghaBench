
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fifolog_reader {int olen; int magic; TYPE_1__* ff; int * obuf; } ;
struct TYPE_2__ {int recsize; int zs; } ;


 int FIFOLOG_READER_MAGIC ;
 int Z_OK ;
 int assert (int) ;
 void* calloc (int,int) ;
 int err (int,char*,...) ;
 char* fifolog_int_open (TYPE_1__**,char const*,int ) ;
 int inflateInit (int ) ;

struct fifolog_reader *
fifolog_reader_open(const char *fname)
{
 const char *retval;
 struct fifolog_reader *fr;
 int i;

 fr = calloc(1, sizeof(*fr));
 if (fr == ((void*)0))
  err(1, "Cannot malloc");

 retval = fifolog_int_open(&fr->ff, fname, 0);
 if (retval != ((void*)0))
  err(1, "%s", retval);

 fr->obuf = calloc(16, fr->ff->recsize);
 if (fr->obuf == ((void*)0))
  err(1, "Cannot malloc");
 fr->olen = fr->ff->recsize * 16;

 i = inflateInit(fr->ff->zs);
 assert(i == Z_OK);

 fr->magic = FIFOLOG_READER_MAGIC;
 return (fr);
}
