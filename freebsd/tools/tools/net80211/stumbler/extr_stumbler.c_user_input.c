
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int locked; } ;



 int atoi (char*) ;
 TYPE_1__ chaninfo ;
 int cleanup (int ) ;
 int die (int ,char*) ;
 int getch () ;
 int save_state () ;
 int set_chan (int) ;

void user_input() {
 static char chan[3];
 static int pos = 0;
 int c;

 c = getch();

 switch (c) {
  case 'w':
   save_state();
   break;

  case 'q':
   cleanup(0);
   break;

  case 'c':
   chaninfo.locked = !chaninfo.locked;
   break;

  case 128:
   die(0, "getch()");
   break;

  case '0':
  case '1':
  case '2':
  case '3':
  case '4':
  case '5':
  case '6':
  case '7':
  case '8':
  case '9':
   chan[pos++] = c;
   if (pos == 2) {
    int ch = atoi(chan);
    if (ch <= 11 && ch >= 1) {
     set_chan(atoi(chan));
     chaninfo.locked = 1;
    }
    pos = 0;
   }
   break;

  default:
   pos = 0;
   break;
 }
}
