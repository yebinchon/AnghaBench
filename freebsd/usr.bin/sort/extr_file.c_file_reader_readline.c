
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file_reader {unsigned char* mmapaddr; int mmapsize; unsigned char* mmapptr; scalar_t__ file; size_t bsz; size_t strbeg; unsigned char* buffer; size_t cbsz; int rb; int elsymb; } ;
struct bwstring {int dummy; } ;
struct TYPE_2__ {int zflag; } ;


 int READ_CHUNK ;
 int bcopy (unsigned char*,unsigned char*,size_t) ;
 struct bwstring* bwscsbdup (unsigned char*,int) ;
 struct bwstring* bwsfgetln (scalar_t__,size_t*,int ,int *) ;
 int err (int,char*) ;
 scalar_t__ feof (scalar_t__) ;
 scalar_t__ ferror (scalar_t__) ;
 size_t fread (unsigned char*,int,size_t,scalar_t__) ;
 unsigned char* memchr (unsigned char*,int ,size_t) ;
 TYPE_1__ sort_opts_vals ;
 unsigned char* sort_realloc (unsigned char*,int) ;
 scalar_t__ stdin ;

struct bwstring *
file_reader_readline(struct file_reader *fr)
{
 struct bwstring *ret = ((void*)0);

 if (fr->mmapaddr) {
  unsigned char *mmapend;

  mmapend = fr->mmapaddr + fr->mmapsize;
  if (fr->mmapptr >= mmapend)
   return (((void*)0));
  else {
   unsigned char *strend;
   size_t sz;

   sz = mmapend - fr->mmapptr;
   strend = memchr(fr->mmapptr, fr->elsymb, sz);

   if (strend == ((void*)0)) {
    ret = bwscsbdup(fr->mmapptr, sz);
    fr->mmapptr = mmapend;
   } else {
    ret = bwscsbdup(fr->mmapptr, strend -
        fr->mmapptr);
    fr->mmapptr = strend + 1;
   }
  }

 } else if (fr->file != stdin) {
  unsigned char *strend;
  size_t bsz1, remsz, search_start;

  search_start = 0;
  remsz = 0;
  strend = ((void*)0);

  if (fr->bsz > fr->strbeg)
   remsz = fr->bsz - fr->strbeg;


  for (;;) {
   if (remsz > search_start)
    strend = memchr(fr->buffer + fr->strbeg +
        search_start, fr->elsymb, remsz -
        search_start);
   else
    strend = ((void*)0);

   if (strend)
    break;
   if (feof(fr->file))
    break;

   if (fr->bsz != fr->cbsz)

    err(2, "File read software error 1");

   if (remsz > (READ_CHUNK >> 1)) {
    search_start = fr->cbsz - fr->strbeg;
    fr->cbsz += READ_CHUNK;
    fr->buffer = sort_realloc(fr->buffer,
        fr->cbsz);
    bsz1 = fread(fr->buffer + fr->bsz, 1,
        READ_CHUNK, fr->file);
    if (bsz1 == 0) {
     if (ferror(fr->file))
      err(2, ((void*)0));
     break;
    }
    fr->bsz += bsz1;
    remsz += bsz1;
   } else {
    if (remsz > 0 && fr->strbeg>0)
     bcopy(fr->buffer + fr->strbeg,
         fr->buffer, remsz);

    fr->strbeg = 0;
    search_start = remsz;
    bsz1 = fread(fr->buffer + remsz, 1,
        fr->cbsz - remsz, fr->file);
    if (bsz1 == 0) {
     if (ferror(fr->file))
      err(2, ((void*)0));
     break;
    }
    fr->bsz = remsz + bsz1;
    remsz = fr->bsz;
   }
  }

  if (strend == ((void*)0))
   strend = fr->buffer + fr->bsz;

  if ((fr->buffer + fr->strbeg <= strend) &&
      (fr->strbeg < fr->bsz) && (remsz>0))
   ret = bwscsbdup(fr->buffer + fr->strbeg, strend -
       fr->buffer - fr->strbeg);

  fr->strbeg = (strend - fr->buffer) + 1;

 } else {
  size_t len = 0;

  ret = bwsfgetln(fr->file, &len, sort_opts_vals.zflag,
      &(fr->rb));
 }

 return (ret);
}
