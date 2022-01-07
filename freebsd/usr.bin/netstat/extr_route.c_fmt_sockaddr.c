
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sockaddr_ng {int sg_data; } ;
struct sockaddr_dl {char* sdl_data; int sdl_nlen; } ;
struct sockaddr {int sa_family; int sa_len; scalar_t__ sa_data; } ;
typedef int buf ;






 int RTF_HOST ;
 int in6_fillscopeid (int ) ;
 char* netname (struct sockaddr*,struct sockaddr*) ;
 int numeric_addr ;
 char* routename (struct sockaddr*,int) ;
 int satosin6 (struct sockaddr*) ;
 int snprintf (char*,int,char*,int) ;
 int strlcpy (char*,int ,int) ;
 int strlen (char*) ;

__attribute__((used)) static const char *
fmt_sockaddr(struct sockaddr *sa, struct sockaddr *mask, int flags)
{
 static char buf[128];
 const char *cp;

 if (sa == ((void*)0))
  return ("null");

 switch(sa->sa_family) {
 case 131:
  if (flags & RTF_HOST)
   cp = routename(sa, numeric_addr);
  else if (mask)
   cp = netname(sa, mask);
  else
   cp = netname(sa, ((void*)0));
  break;
 case 128:
     {
  strlcpy(buf, ((struct sockaddr_ng *)sa)->sg_data,
      sizeof(buf));
  cp = buf;
  break;
     }
 case 129:
     {
   cp = routename(sa, 1);
  break;
     }
 default:
     {
  u_char *s = (u_char *)sa->sa_data, *slim;
  char *cq, *cqlim;

  cq = buf;
  slim = sa->sa_len + (u_char *) sa;
  cqlim = cq + sizeof(buf) - sizeof(" ffff");
  snprintf(cq, sizeof(buf), "(%d)", sa->sa_family);
  cq += strlen(cq);
  while (s < slim && cq < cqlim) {
   snprintf(cq, sizeof(" ff"), " %02x", *s++);
   cq += strlen(cq);
   if (s < slim) {
       snprintf(cq, sizeof("ff"), "%02x", *s++);
       cq += strlen(cq);
   }
  }
  cp = buf;
     }
 }

 return (cp);
}
