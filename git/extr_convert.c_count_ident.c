
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ memcmp (char*,char const*,int) ;

__attribute__((used)) static int count_ident(const char *cp, unsigned long size)
{



 int cnt = 0;
 char ch;

 while (size) {
  ch = *cp++;
  size--;
  if (ch != '$')
   continue;
  if (size < 3)
   break;
  if (memcmp("Id", cp, 2))
   continue;
  ch = cp[2];
  cp += 3;
  size -= 3;
  if (ch == '$')
   cnt++;
  if (ch != ':')
   continue;




  while (size) {
   ch = *cp++;
   size--;
   if (ch == '$') {
    cnt++;
    break;
   }
   if (ch == '\n')
    break;
  }
 }
 return cnt;
}
