
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint32_t ;
struct in_addr {void* s_addr; } ;
struct TYPE_4__ {int sgroup; int egroup; struct in_addr end; struct in_addr start; } ;
struct TYPE_3__ {void* end; void* start; } ;
struct ip_range {TYPE_2__ ipv6; TYPE_1__ ipv4; void* port1; void* port0; int name; } ;
typedef int start ;
typedef int end ;


 int AF_INET ;
 int AF_INET6 ;
 int D (char*,...) ;
 int IN6_ARE_ADDR_EQUAL (struct in_addr*,struct in_addr*) ;
 int INET6_ADDRSTRLEN ;
 int OPT_COPY ;
 int extract_ipv4_addr (char*,void**,void**) ;
 int extract_ipv6_addr (char*,struct in_addr*,void**,int*) ;
 int free (char*) ;
 void* htonl (void*) ;
 int inet_ntop (int,struct in_addr*,char*,int) ;
 char* strchr (char*,char) ;
 char* strdup (int ) ;
 int usage (int) ;
 scalar_t__ verbose ;

__attribute__((used)) static int
extract_ip_range(struct ip_range *r, int af)
{
 char *name, *ap, start[INET6_ADDRSTRLEN];
 char end[INET6_ADDRSTRLEN];
 struct in_addr a;
 uint32_t tmp;

 if (verbose)
  D("extract IP range from %s", r->name);

 name = strdup(r->name);
 if (name == ((void*)0)) {
  D("strdup failed");
  usage(-1);
 }

 ap = strchr(name, '-');
 if (ap != ((void*)0))
  *ap++ = '\0';
 r->port0 = 1234;
 if (af == AF_INET6) {
  r->ipv6.sgroup = 7;
  extract_ipv6_addr(name, &r->ipv6.start, &r->port0,
      &r->ipv6.sgroup);
 } else
  extract_ipv4_addr(name, &r->ipv4.start, &r->port0);

 r->port1 = r->port0;
 if (af == AF_INET6) {
  if (ap != ((void*)0)) {
   r->ipv6.egroup = r->ipv6.sgroup;
   extract_ipv6_addr(ap, &r->ipv6.end, &r->port1,
       &r->ipv6.egroup);
  } else {
   r->ipv6.end = r->ipv6.start;
   r->ipv6.egroup = r->ipv6.sgroup;
  }
 } else {
  if (ap != ((void*)0)) {
   extract_ipv4_addr(ap, &r->ipv4.end, &r->port1);
   if (r->ipv4.start > r->ipv4.end) {
    tmp = r->ipv4.end;
    r->ipv4.end = r->ipv4.start;
    r->ipv4.start = tmp;
   }
  } else
   r->ipv4.end = r->ipv4.start;
 }

 if (r->port0 > r->port1) {
  tmp = r->port0;
  r->port0 = r->port1;
  r->port1 = tmp;
 }
 if (af == AF_INET) {
  a.s_addr = htonl(r->ipv4.start);
  inet_ntop(af, &a, start, sizeof(start));
  a.s_addr = htonl(r->ipv4.end);
  inet_ntop(af, &a, end, sizeof(end));
 } else {
  inet_ntop(af, &r->ipv6.start, start, sizeof(start));
  inet_ntop(af, &r->ipv6.end, end, sizeof(end));
 }
 if (af == AF_INET)
  D("range is %s:%d to %s:%d", start, r->port0, end, r->port1);
 else
  D("range is %d@[%s]:%d to %d@[%s]:%d", r->ipv6.sgroup,
      start, r->port0, r->ipv6.egroup, end, r->port1);

 free(name);
 if (r->port0 != r->port1 ||
     (af == AF_INET && r->ipv4.start != r->ipv4.end) ||
     (af == AF_INET6 &&
  !IN6_ARE_ADDR_EQUAL(&r->ipv6.start, &r->ipv6.end)))
  return (OPT_COPY);
 return (0);
}
