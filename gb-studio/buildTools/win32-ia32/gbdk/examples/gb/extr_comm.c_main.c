
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 scalar_t__ IO_IDLE ;
 scalar_t__ IO_RECEIVING ;
 scalar_t__ IO_SENDING ;
 int J_A ;
 int J_B ;
 int J_SELECT ;
 int J_START ;
 int _io_in ;
 char _io_out ;
 scalar_t__ _io_status ;
 char* buffer ;
 scalar_t__ joypad () ;
 int printf (char*,...) ;
 int putchar (int) ;
 int puts (char*) ;
 int receive_byte () ;
 int send_byte () ;
 char* str ;
 int waitpad (int) ;
 int waitpadup () ;

void main(void)
{
  UBYTE i, n = 0;
  char *s;

  puts("Byte");
  puts("  A      : Send");
  puts("  B      : Receive");
  puts("String");
  puts("  START  : Send");
  puts("  SELECT : Receive");

  while(1) {
    i = waitpad(J_A | J_B | J_START | J_SELECT);
    waitpadup();

    if(i == J_A) {

      printf("Sending b... ");
      _io_out = n++;
      send_byte();

      while(_io_status == IO_SENDING && joypad() == 0)
 ;
      if(_io_status == IO_IDLE)
 printf("OK\n");
      else
 printf("#%d\n", _io_status);
    } else if(i == J_B) {

      printf("Receiving b... ");
      receive_byte();

      while(_io_status == IO_RECEIVING && joypad() == 0)
 ;
      if(_io_status == IO_IDLE)
 printf("OK\n%d\n", _io_in);
      else
 printf("#%d\n", _io_status);
    } else if(i == J_START) {

      printf("Sending s... ");
      s = str;
      while(1) {
 _io_out = *s;
 do {
   send_byte();

   while(_io_status == IO_SENDING && joypad() == 0)
     ;
 } while(_io_status != IO_IDLE && joypad() == 0);
 if(_io_status != IO_IDLE) {
   printf("#%d\n", _io_status);
   break;
 }
 if(*s == 0)
   break;
 s++;
      }
      if(_io_status == IO_IDLE)
 printf("OK\n");
    } else if(i == J_SELECT) {

      printf("Receiving s... ");
      s = buffer;
      while(1) {
 receive_byte();

 while(_io_status == IO_RECEIVING && joypad() == 0)
   ;
 if(_io_status != IO_IDLE) {
   printf("#%d\n", _io_status);
   break;
 }
 putchar(_io_in);
 *s = _io_in;
 if(*s == 0)
   break;
 s++;
      }
      if(_io_status == IO_IDLE)
 printf("OK\n%s\n", buffer);
    }

    waitpadup();
  }
}
