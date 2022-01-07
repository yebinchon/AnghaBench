
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int random () ;
 int srandom (long) ;

__attribute__((used)) static void
aio_fill_buffer(char *buffer, int len, long seed)
{
 char ch;
 int i;

 srandom(seed);
 for (i = 0; i < len; i++) {
  ch = random() & 0xff;
  buffer[i] = ch;
 }
}
