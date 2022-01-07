
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sockaddr {int dummy; } ;


 int* sa_rawaddr (struct sockaddr*,int*) ;

__attribute__((used)) static int
checkmask(struct sockaddr *sa)
{
 u_char *mask;
 int i, len;

 if ((mask = sa_rawaddr(sa, &len)) == ((void*)0))
  return (-1);

 for (i = 0; i < len; i++)
  if (mask[i] != 0xff)
   break;
 if (i < len) {
  if (~mask[i] & (u_char)(~mask[i] + 1))
   return (-1);
  i++;
 }
 for (; i < len; i++)
  if (mask[i] != 0)
   return (-1);
 return (0);
}
