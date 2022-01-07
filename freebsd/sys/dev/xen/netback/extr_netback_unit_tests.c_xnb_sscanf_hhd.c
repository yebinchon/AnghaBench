
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int8_t ;


 int XNB_ASSERT (int) ;
 int sscanf (char const*,char*,int*) ;

__attribute__((used)) static void
xnb_sscanf_hhd(char *buffer, size_t buflen)
{
 const char mystr[] = "-27";
 int8_t dest[12];
 int i;

 for (i = 0; i < 12; i++)
  dest[i] = 'X';

 XNB_ASSERT(sscanf(mystr, "%hhd", &dest[4]) == 1);
 for (i = 0; i < 12; i++)
  XNB_ASSERT(dest[i] == (i == 4 ? -27 : 'X'));
}
