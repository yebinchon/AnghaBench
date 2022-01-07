
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool
valid_hex(const char ch)
{
 switch (ch) {
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
 case 'a':
 case 'A':
 case 'b':
 case 'B':
 case 'c':
 case 'C':
 case 'd':
 case 'D':
 case 'e':
 case 'E':
 case 'f':
 case 'F':
  return (1);
 default:
  return (0);
 }
}
