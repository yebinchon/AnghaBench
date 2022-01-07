
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int etherbuf ;


 int snprintf (char*,int,char*,int const*,char*) ;

char *
ether_sprintf(const u_char *ap)
{
 static char etherbuf[18];
 snprintf(etherbuf, sizeof (etherbuf), "%6D", ap, ":");
 return (etherbuf);
}
