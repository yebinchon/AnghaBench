
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isdigit (char) ;

char *
prphone(char *num)
{
 char *p;
 int len;
 static char pbuf[20];


 for (p = num; *p; ++p)
  if (!isdigit(*p))
   return(num);
 len = p - num;
 p = pbuf;
 switch(len) {
 case 11:
  *p++ = '+';
  *p++ = *num++;
  *p++ = '-';

 case 10:
  *p++ = *num++;
  *p++ = *num++;
  *p++ = *num++;
  *p++ = '-';

 case 7:
  *p++ = *num++;
  *p++ = *num++;
  *p++ = *num++;
  break;
 case 5:
 case 4:
  *p++ = 'x';
  *p++ = *num++;
  break;
 default:
  return(num);
 }
 if (len != 4) {
     *p++ = '-';
     *p++ = *num++;
 }
 *p++ = *num++;
 *p++ = *num++;
 *p++ = *num++;
 *p = '\0';
 return(pbuf);
}
