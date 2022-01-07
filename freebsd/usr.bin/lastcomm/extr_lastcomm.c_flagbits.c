
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACOMPAT ;
 int ACORE ;
 int AFORK ;
 int ASU ;
 int AXSIG ;
 int BIT (int ,char) ;

char *
flagbits(int f)
{
 static char flags[20] = "-";
 char *p;



 p = flags + 1;
 if (f & ASU) *p++ = 'S';
 if (f & AFORK) *p++ = 'F';
 if (f & ACOMPAT) *p++ = 'C';
 if (f & ACORE) *p++ = 'D';
 if (f & AXSIG) *p++ = 'X';
 *p = '\0';
 return (flags);
}
