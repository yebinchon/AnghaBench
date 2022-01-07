
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BACKGROUND_ALL ;
 int BACKGROUND_BLUE ;
 int BACKGROUND_GREEN ;
 int BACKGROUND_INTENSITY ;
 int BACKGROUND_RED ;
 int FOREGROUND_ALL ;
 int FOREGROUND_BLUE ;
 int FOREGROUND_GREEN ;
 int FOREGROUND_INTENSITY ;
 int FOREGROUND_RED ;
 int attr ;
 int erase_in_line () ;
 int negative ;
 int plain_attr ;
 int set_console_attr () ;

__attribute__((used)) static void set_attr(char func, const int *params, int paramlen)
{
 int i;
 switch (func) {
 case 'm':
  for (i = 0; i < paramlen; i++) {
   switch (params[i]) {
   case 0:
    attr = plain_attr;
    negative = 0;
    break;
   case 1:
    attr |= FOREGROUND_INTENSITY;
    break;
   case 2:
   case 22:
    attr &= ~FOREGROUND_INTENSITY;
    break;
   case 3:

    break;
   case 4:
   case 21:



    break;
   case 24:

    break;
   case 5:
   case 6:


    attr |= BACKGROUND_INTENSITY;
    break;
   case 25:
    attr &= ~BACKGROUND_INTENSITY;
    break;
   case 7:
    negative = 1;
    break;
   case 27:
    negative = 0;
    break;
   case 8:
   case 28:

    break;
   case 30:
    attr &= ~FOREGROUND_ALL;
    break;
   case 31:
    attr &= ~FOREGROUND_ALL;
    attr |= FOREGROUND_RED;
    break;
   case 32:
    attr &= ~FOREGROUND_ALL;
    attr |= FOREGROUND_GREEN;
    break;
   case 33:
    attr &= ~FOREGROUND_ALL;
    attr |= FOREGROUND_RED | FOREGROUND_GREEN;
    break;
   case 34:
    attr &= ~FOREGROUND_ALL;
    attr |= FOREGROUND_BLUE;
    break;
   case 35:
    attr &= ~FOREGROUND_ALL;
    attr |= FOREGROUND_RED | FOREGROUND_BLUE;
    break;
   case 36:
    attr &= ~FOREGROUND_ALL;
    attr |= FOREGROUND_GREEN | FOREGROUND_BLUE;
    break;
   case 37:
    attr |= FOREGROUND_RED |
     FOREGROUND_GREEN |
     FOREGROUND_BLUE;
    break;
   case 38:
    break;
   case 39:
    attr &= ~FOREGROUND_ALL;
    attr |= (plain_attr & FOREGROUND_ALL);
    break;
   case 40:
    attr &= ~BACKGROUND_ALL;
    break;
   case 41:
    attr &= ~BACKGROUND_ALL;
    attr |= BACKGROUND_RED;
    break;
   case 42:
    attr &= ~BACKGROUND_ALL;
    attr |= BACKGROUND_GREEN;
    break;
   case 43:
    attr &= ~BACKGROUND_ALL;
    attr |= BACKGROUND_RED | BACKGROUND_GREEN;
    break;
   case 44:
    attr &= ~BACKGROUND_ALL;
    attr |= BACKGROUND_BLUE;
    break;
   case 45:
    attr &= ~BACKGROUND_ALL;
    attr |= BACKGROUND_RED | BACKGROUND_BLUE;
    break;
   case 46:
    attr &= ~BACKGROUND_ALL;
    attr |= BACKGROUND_GREEN | BACKGROUND_BLUE;
    break;
   case 47:
    attr |= BACKGROUND_RED |
     BACKGROUND_GREEN |
     BACKGROUND_BLUE;
    break;
   case 48:
    break;
   case 49:
    attr &= ~BACKGROUND_ALL;
    attr |= (plain_attr & BACKGROUND_ALL);
    break;
   default:

    break;
   }
  }
  set_console_attr();
  break;
 case 'K':
  erase_in_line();
  break;
 default:

  break;
 }
}
