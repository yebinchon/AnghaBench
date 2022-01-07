
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct source {TYPE_1__* vtable; } ;
struct TYPE_2__ {int (* readchar ) (struct source*) ;} ;


 int EOF ;
 char* bmalloc (int) ;
 char* breallocarray (char*,int,int) ;
 int stub1 (struct source*) ;

char *
read_string(struct source *src)
{
 char *p;
 int count, ch, i, new_sz, sz;
 bool escape;

 escape = 0;
 count = 1;
 i = 0;
 sz = 15;
 p = bmalloc(sz + 1);

 while ((ch = (*src->vtable->readchar)(src)) != EOF) {
  if (!escape) {
   if (ch == '[')
    count++;
   else if (ch == ']')
    count--;
   if (count == 0)
    break;
  }
  if (ch == '\\' && !escape)
   escape = 1;
  else {
   escape = 0;
   if (i == sz) {
    new_sz = sz * 2;
    p = breallocarray(p, 1, new_sz + 1);
    sz = new_sz;
   }
   p[i++] = ch;
  }
 }
 p[i] = '\0';
 return (p);
}
