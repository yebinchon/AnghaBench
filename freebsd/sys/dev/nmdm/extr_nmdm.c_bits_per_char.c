
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int c_cflag; } ;






 int CSIZE ;
 int CSTOPB ;
 int PARENB ;

__attribute__((used)) static int
bits_per_char(struct termios *t)
{
 int bits;

 bits = 1;
 switch (t->c_cflag & CSIZE) {
 case 131: bits += 5; break;
 case 130: bits += 6; break;
 case 129: bits += 7; break;
 case 128: bits += 8; break;
 }
 bits++;
 if (t->c_cflag & PARENB)
  bits++;
 if (t->c_cflag & CSTOPB)
  bits++;
 return (bits);
}
