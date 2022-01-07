
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int ai_addrlen; int ai_addr; int ai_family; } ;
typedef int hints ;


 int PF_UNSPEC ;
 void** bound_sa ;
 scalar_t__ getaddrinfo (int ,int *,struct addrinfo*,struct addrinfo**) ;
 int * hosts ;
 void* malloc (int) ;
 int memcpy (void*,int ,int) ;
 int memset (struct addrinfo*,int ,int) ;
 int nhosts ;

__attribute__((used)) static void
update_bound_sa(void)
{
 struct addrinfo hints, *res = ((void*)0);
 int i;

 if (nhosts == 0)
  return;
 bound_sa = malloc(sizeof(*bound_sa) * nhosts);
 memset(&hints, 0, sizeof(hints));
 hints.ai_family = PF_UNSPEC;
 for (i = 0; i < nhosts; i++) {
  if (getaddrinfo(hosts[i], ((void*)0), &hints, &res) != 0)
   continue;
  bound_sa[i] = malloc(res->ai_addrlen);
  memcpy(bound_sa[i], res->ai_addr, res->ai_addrlen);
 }
}
