
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOF ;
 int SIGSTOP ;
 int atoi (char*) ;
 int fflush (int ) ;
 int getchar () ;
 int getpid () ;
 int kill (int ,int ) ;
 int* koi2855 ;
 scalar_t__ length ;
 scalar_t__ lines ;
 int putchar (int) ;
 int stdin ;
 int stdout ;
 int ungetc (int,int ) ;

int main(int argc, char *argv[])
{
 int c, i;
 char *cp;

 while (--argc) {
  if (*(cp = *++argv) == '-') {
   switch (*++cp) {
   case 'l':
    if ((i = atoi(++cp)) > 0)
     length = i;
    break;
   }
  }
 }

 while ((c = getchar()) != EOF) {
  if (c == '\031') {
   if ((c = getchar()) == '\1') {
    lines = 0;
    fflush(stdout);
    kill(getpid(), SIGSTOP);
    continue;
   } else {
    ungetc(c, stdin);
    c = '\031';
   }
  } else if (c & 0x80) {
   putchar(koi2855[c & 0x7F]);
   continue;
  } else if (c == '\n')
   lines++;
  else if (c == '\f')
   lines = length;
  putchar(c);
  if (lines >= length) {
   lines = 0;
   fflush(stdout);
  }
 }
 return 0;
}
