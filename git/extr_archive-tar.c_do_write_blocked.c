
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long BLOCKSIZE ;
 unsigned long block ;
 int memcpy (unsigned long,char const*,unsigned long) ;
 unsigned long offset ;
 int write_if_needed () ;
 int write_or_die (int,char const*,unsigned long) ;

__attribute__((used)) static void do_write_blocked(const void *data, unsigned long size)
{
 const char *buf = data;

 if (offset) {
  unsigned long chunk = BLOCKSIZE - offset;
  if (size < chunk)
   chunk = size;
  memcpy(block + offset, buf, chunk);
  size -= chunk;
  offset += chunk;
  buf += chunk;
  write_if_needed();
 }
 while (size >= BLOCKSIZE) {
  write_or_die(1, buf, BLOCKSIZE);
  size -= BLOCKSIZE;
  buf += BLOCKSIZE;
 }
 if (size) {
  memcpy(block + offset, buf, size);
  offset += size;
 }
}
