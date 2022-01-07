
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef void* time_t ;
struct fifolog_reader {TYPE_1__* ff; } ;
typedef int off_t ;
struct TYPE_4__ {int* recbuf; int logsize; int recsize; } ;


 int CHECK_OBJ_NOTNULL (struct fifolog_reader const*,int ) ;
 int FIFOLOG_FLG_SYNC ;
 int FIFOLOG_READER_MAGIC ;
 int assert (int) ;
 void* be32dec (int*) ;
 int err (int,char*,char const*) ;
 char* fifolog_int_findend (TYPE_1__*,int*) ;
 int fifolog_int_read (TYPE_1__*,int) ;
 int fifolog_reader_findsync (TYPE_1__*,int*) ;
 int fprintf (int ,char*,int) ;
 int stderr ;

off_t
fifolog_reader_seek(const struct fifolog_reader *fr, time_t t0)
{
 off_t o, s, st;
 time_t t, tt;
 unsigned seq, seqs;
 const char *retval;
 int e;

 CHECK_OBJ_NOTNULL(fr, FIFOLOG_READER_MAGIC);




 o = 0;
 e = fifolog_reader_findsync(fr->ff, &o);
 if (e == 0)
  return (0);
 assert(e == 1);

 assert(fr->ff->recbuf[4] & FIFOLOG_FLG_SYNC);
 seq = be32dec(fr->ff->recbuf);
 t = be32dec(fr->ff->recbuf + 5);

 if (t > t0) {

  retval = fifolog_int_findend(fr->ff, &s);
  if (retval != ((void*)0))
   err(1, "%s", retval);
  s++;
  e = fifolog_reader_findsync(fr->ff, &s);
  if (e == 0)
   return (0);
  if (e == 1) {
   o = s;
   seq = be32dec(fr->ff->recbuf);
   t = be32dec(fr->ff->recbuf + 5);
  }
 }


 s = st = (fr->ff->logsize - o) / 2;
 while (s > 1) {

  if (o + st > fr->ff->logsize + 1) {
   s = st = s / 2;
   continue;
  }
  e = fifolog_int_read(fr->ff, o + st);
  if (e) {
   s = st = s / 2;
   continue;
  }

  seqs = be32dec(fr->ff->recbuf);
  if (seqs != seq + st) {
   s = st = s / 2;
   continue;
  }

  if (!(fr->ff->recbuf[4] & FIFOLOG_FLG_SYNC)) {
   st++;
   continue;
  }

  tt = be32dec(fr->ff->recbuf + 5);
  if (tt >= t0) {
   s = st = s / 2;
   continue;
  }
  o += st;
  seq = seqs;
 }
 fprintf(stderr, "Read from %jx\n", o * fr->ff->recsize);
 return (o);
}
