
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int tbl ;


 int BIT (char const) ;
 int IDX (char const) ;
 int LONG_BIT ;
 int UCHAR_MAX ;

size_t
strcspn(const char * __restrict s, const char * __restrict charset)
{




 const char *s1;
 u_long bit;
 u_long tbl[(UCHAR_MAX + 1) / LONG_BIT];
 int idx;

 if(*s == '\0')
  return (0);





 for (tbl[0] = idx = 1; idx < sizeof(tbl) / sizeof(tbl[0]); idx++)
  tbl[idx] = 0;

 for (; *charset != '\0'; charset++) {
  idx = IDX(*charset);
  bit = BIT(*charset);
  tbl[idx] |= bit;
 }

 for(s1 = s; ; s1++) {
  idx = IDX(*s1);
  bit = BIT(*s1);
  if ((tbl[idx] & bit) != 0)
   break;
 }
 return (s1 - s);
}
