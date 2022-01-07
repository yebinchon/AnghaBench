
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int headers (int*) ;
 int msgCount ;
 int printf (char*,...) ;
 int screen ;
 int screensize () ;

int
scroll(void *v)
{
 char *arg = v;
 int s, size;
 int cur[1];

 cur[0] = 0;
 size = screensize();
 s = screen;
 switch (*arg) {
 case 0:
 case '+':
  s++;
  if (s * size >= msgCount) {
   printf("On last screenful of messages\n");
   return (0);
  }
  screen = s;
  break;

 case '-':
  if (--s < 0) {
   printf("On first screenful of messages\n");
   return (0);
  }
  screen = s;
  break;

 default:
  printf("Unrecognized scrolling command \"%s\"\n", arg);
  return (1);
 }
 return (headers(cur));
}
