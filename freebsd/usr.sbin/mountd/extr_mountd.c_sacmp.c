
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin6_scope_id; } ;
struct sockaddr {int sa_family; } ;



 int memcmp (unsigned char*,unsigned char*,int) ;
 unsigned char* sa_rawaddr (struct sockaddr*,int*) ;

__attribute__((used)) static int
sacmp(struct sockaddr *sa1, struct sockaddr *sa2, struct sockaddr *samask)
{
 unsigned char *p1, *p2, *mask;
 int len, i;

 if (sa1->sa_family != sa2->sa_family ||
     (p1 = sa_rawaddr(sa1, &len)) == ((void*)0) ||
     (p2 = sa_rawaddr(sa2, ((void*)0))) == ((void*)0))
  return (1);

 switch (sa1->sa_family) {
 case 128:
  if (((struct sockaddr_in6 *)sa1)->sin6_scope_id !=
      ((struct sockaddr_in6 *)sa2)->sin6_scope_id)
   return (1);
  break;
 }


 if (samask == ((void*)0))
  return (memcmp(p1, p2, len));


 if (sa1->sa_family != samask->sa_family ||
     (mask = sa_rawaddr(samask, ((void*)0))) == ((void*)0))
  return (1);

 for (i = 0; i < len; i++)
  if ((p1[i] & mask[i]) != (p2[i] & mask[i]))
   return (1);
 return (0);
}
