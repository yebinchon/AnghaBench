
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fifolog_file {int logsize; int recbuf; } ;
typedef unsigned int off_t ;


 int assert (int) ;
 unsigned int be32dec (int ) ;
 int fifolog_int_file_assert (struct fifolog_file const*) ;
 int fifolog_int_read (struct fifolog_file const*,unsigned int) ;

const char *
fifolog_int_findend(const struct fifolog_file *ff, off_t *last)
{
 off_t o, s;
 int e;
 unsigned seq0, seq;

 fifolog_int_file_assert(ff);

 o = 0;
 e = fifolog_int_read(ff, o);
 if (e)
  return("Read error, first record");

 seq0 = be32dec(ff->recbuf);


 if (seq0 == 0) {
  *last = o;
  return (((void*)0));
 }


 s = ff->logsize / 2;
 do {
  e = fifolog_int_read(ff, o + s);
  if (e)
   return ("Read error while searching");
  seq = be32dec(ff->recbuf);
  if (seq == seq0 + s) {
   o += s;
   seq0 = seq;
  }
  s /= 2;
  assert(o < ff->logsize);
 } while (s > 0);

 *last = o;
 return (((void*)0));
}
