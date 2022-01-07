
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOF ;
 int assert (int) ;
 int gpbc () ;
 int pushback (char const) ;

__attribute__((used)) static int
do_look_ahead(int t, const char *token)
{
 int i;

 assert((unsigned char)t == (unsigned char)token[0]);

 for (i = 1; *++token; i++) {
  t = gpbc();
  if (t == EOF || (unsigned char)t != (unsigned char)*token) {
   pushback(t);
   while (--i)
    pushback(*--token);
   return 0;
  }
 }
 return 1;
}
