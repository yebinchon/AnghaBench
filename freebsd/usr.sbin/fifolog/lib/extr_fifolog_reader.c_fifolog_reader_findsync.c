
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fifolog_file {scalar_t__ logsize; int* recbuf; } ;
typedef scalar_t__ off_t ;


 int FIFOLOG_FLG_SYNC ;
 int assert (int) ;
 unsigned int be32dec (int*) ;
 int err (int,char*,int) ;
 int fifolog_int_read (struct fifolog_file const*,scalar_t__) ;

__attribute__((used)) static int
fifolog_reader_findsync(const struct fifolog_file *ff, off_t *o)
{
 int e;
 unsigned seq, seqs;

 assert(*o < ff->logsize);
 e = fifolog_int_read(ff, *o);
 if (e)
  err(1, "Read error (%d) while looking for SYNC", e);
 seq = be32dec(ff->recbuf);
 if (*o == 0 && seq == 0)
  return (0);

 if (ff->recbuf[4] & FIFOLOG_FLG_SYNC)
  return (1);
 while(1) {
  assert(*o < ff->logsize);
  (*o)++;
  seq++;
  if (*o == ff->logsize)
   return (2);
  e = fifolog_int_read(ff, *o);
  if (e)
   err(1, "Read error (%d) while looking for SYNC", e);
  seqs = be32dec(ff->recbuf);
  if (seqs != seq)
   return (3);
  if (ff->recbuf[4] & FIFOLOG_FLG_SYNC)
   return (1);
 }
}
