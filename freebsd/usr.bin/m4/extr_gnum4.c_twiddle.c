
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int addchar (char const) ;
 int addchars (char const*,int) ;
 int addconstantstring (char*) ;
 char* getstring () ;

__attribute__((used)) static char *
twiddle(const char *p)
{

 if (*p == '^') {
  addchar(*p);
  p++;
 }
 if (*p == '+') {
  addchar('\\');
 }

 while (*p != '\0') {
  if (*p == '\\') {
   switch(p[1]) {
   case '(':
   case ')':
   case '|':
    addchar(p[1]);
    break;
   case 'w':
    addconstantstring("[_a-zA-Z0-9]");
    break;
   case 'W':
    addconstantstring("[^_a-zA-Z0-9]");
    break;
   case '<':
    addconstantstring("[[:<:]]");
    break;
   case '>':
    addconstantstring("[[:>:]]");
    break;
   default:
    addchars(p, 2);
    break;
   }
   p+=2;
   continue;
  }
  if (*p == '(' || *p == ')' || *p == '|')
   addchar('\\');

  addchar(*p);
  p++;
 }
 return getstring();
}
