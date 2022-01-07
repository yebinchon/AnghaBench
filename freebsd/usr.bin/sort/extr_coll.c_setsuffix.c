
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;



__attribute__((used)) static void setsuffix(wchar_t c, unsigned char *si)
{
 switch (c){
 case L'k':
 case L'K':
  *si = 1;
  break;
 case L'M':
  *si = 2;
  break;
 case L'G':
  *si = 3;
  break;
 case L'T':
  *si = 4;
  break;
 case L'P':
  *si = 5;
  break;
 case L'E':
  *si = 6;
  break;
 case L'Z':
  *si = 7;
  break;
 case L'Y':
  *si = 8;
  break;
 default:
  *si = 0;
 }
}
