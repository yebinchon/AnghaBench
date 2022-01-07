
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 unsigned char* bp ;
 unsigned char* buf ;
 int fputc (unsigned char,int *) ;

void
dump_buffer(FILE *f, size_t m)
{
 unsigned char *s;

 for (s = bp; s-buf > (long)m;)
  fputc(*--s, f);
}
