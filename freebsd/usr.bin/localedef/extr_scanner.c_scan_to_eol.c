
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOF ;
 int assert (int) ;
 int errf (char*) ;
 int scanc () ;

void
scan_to_eol(void)
{
 int c;
 while ((c = scanc()) != '\n') {
  if (c == EOF) {

   errf("missing newline");
   return;
  }
 }
 assert(c == '\n');
}
