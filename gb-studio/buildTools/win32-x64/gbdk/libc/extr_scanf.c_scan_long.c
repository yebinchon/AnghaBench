
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT8 ;
typedef size_t INT16 ;


 scalar_t__ isalpha (char) ;
 scalar_t__ isdigit (char) ;
 char toupper (char) ;

__attribute__((used)) static UINT8 scan_long(char *s, UINT8 i, UINT8 base, INT16 *nb)
{
  INT16 n = 0;
  UINT8 j, sign = 0;

  switch(s[i])
    {
    case '-':
      sign++;

    case '+':
      ++i;
      break;
    }
  while(1) {
    if(isdigit(s[i]))
      j = s[i] - '0';
    else if(isalpha(s[i]))
      j = toupper(s[i]) - 'A' + 10;
    else
      break;
    if(j >= base)
      break;
    n = base * n + j;
    i++;
  }
  *nb = (sign == 0 ? n : -n);
  return i;
}
