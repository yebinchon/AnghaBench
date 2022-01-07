
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t readsp; int * readstack; } ;



 TYPE_1__ bmachine ;
 int errx (int,char*) ;
 int free (int ) ;
 int read_string (int *) ;
 char readch () ;
 int readline () ;
 int readreg () ;
 int unreadch () ;

__attribute__((used)) static void
skip_until_mark(void)
{

 for (;;) {
  switch (readch()) {
  case 'M':
   return;
  case 128:
   errx(1, "mark not found");
   return;
  case 'l':
  case 'L':
  case 's':
  case 'S':
  case ':':
  case ';':
  case '<':
  case '>':
  case '=':
   readreg();
   if (readch() == 'e')
    readreg();
   else
    unreadch();
   break;
  case '[':
   free(read_string(&bmachine.readstack[bmachine.readsp]));
   break;
  case '!':
   switch (readch()) {
    case '<':
    case '>':
    case '=':
     readreg();
     if (readch() == 'e')
      readreg();
     else
      unreadch();
     break;
    default:
     free(readline());
     break;
   }
   break;
  default:
   break;
  }
 }
}
