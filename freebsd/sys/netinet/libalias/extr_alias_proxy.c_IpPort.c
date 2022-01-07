
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct servent {int s_port; } ;


 int IPPROTO_TCP ;
 int IPPROTO_UDP ;
 struct servent* getservbyname (char*,char*) ;
 scalar_t__ ntohs (int ) ;
 int sscanf (char*,char*,int*) ;

__attribute__((used)) static int
IpPort(char *s, int proto, int *port)
{
 int n;

 n = sscanf(s, "%d", port);
 if (n != 1)

 {
  struct servent *se;

  if (proto == IPPROTO_TCP)
   se = getservbyname(s, "tcp");
  else if (proto == IPPROTO_UDP)
   se = getservbyname(s, "udp");
  else
   return (-1);

  if (se == ((void*)0))
   return (-1);

  *port = (u_int) ntohs(se->s_port);
 }



 return (0);
}
