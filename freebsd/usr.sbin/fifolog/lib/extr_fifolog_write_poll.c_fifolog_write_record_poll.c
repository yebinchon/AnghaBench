
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
typedef int time_t ;
struct fifolog_writer {int dummy; } ;
typedef scalar_t__ ssize_t ;


 int FIFOLOG_LENGTH ;
 int FIFOLOG_TIMESTAMP ;
 int assert (int) ;
 int fifolog_write_assert (struct fifolog_writer*) ;
 scalar_t__ fifolog_write_gzip (struct fifolog_writer*,int ) ;
 int fifolog_write_record (struct fifolog_writer*,int,int ,unsigned char const*,int) ;
 int time (int *) ;

int
fifolog_write_record_poll(struct fifolog_writer *f, uint32_t id, time_t now,
    const void *ptr, ssize_t len)
{
 u_int l;
 const unsigned char *p;
 int retval = 0;

 if (now == 0)
  time(&now);
 fifolog_write_assert(f);

 assert(!(id & (FIFOLOG_TIMESTAMP|FIFOLOG_LENGTH)));
 assert(ptr != ((void*)0));

 if (len == 0) {
  if (!fifolog_write_record(f, id, now, ptr, len)) {
   if (fifolog_write_gzip(f, now) < 0)
    retval = -1;

   if (!fifolog_write_record(f, id, now, ptr, len))
    retval = -1;
  }
 } else {
  for (p = ptr; len > 0; len -= l, p += l) {
   l = len;
   if (l > 255)
    l = 255;
   while (!fifolog_write_record(f, id, now, p, l))
    if (fifolog_write_gzip(f, now) < 0)
     retval = -1;
  }
 }
 if (fifolog_write_gzip(f, now) < 0)
  retval = -1;
 fifolog_write_assert(f);
 return (retval);
}
