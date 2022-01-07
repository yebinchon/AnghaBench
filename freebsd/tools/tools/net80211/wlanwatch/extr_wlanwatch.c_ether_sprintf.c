
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int buf ;


 int snprintf (char*,int,char*,int const,int const,int const,int const,int const,int const) ;

__attribute__((used)) static const char *
ether_sprintf(const uint8_t mac[6])
{
 static char buf[32];

 snprintf(buf, sizeof(buf), "%02x:%02x:%02x:%02x:%02x:%02x",
  mac[0], mac[1], mac[2], mac[3], mac[4], mac[5]);
 return buf;
}
