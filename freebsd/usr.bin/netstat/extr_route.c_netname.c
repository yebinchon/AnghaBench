
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr {int sa_family; } ;
struct TYPE_3__ {int s_addr; } ;
struct TYPE_4__ {TYPE_1__ sin_addr; } ;




 int INADDR_ANY ;
 char const* netname4 (int ,int ) ;
 char const* netname6 (int ,int ) ;
 TYPE_2__* satosin (struct sockaddr*) ;
 int satosin6 (struct sockaddr*) ;

const char *
netname(struct sockaddr *sa, struct sockaddr *mask)
{
 switch (sa->sa_family) {
 case 129:
  if (mask != ((void*)0))
   return (netname4(satosin(sa)->sin_addr.s_addr,
       satosin(mask)->sin_addr.s_addr));
  else
   return (netname4(satosin(sa)->sin_addr.s_addr,
       INADDR_ANY));
  break;




 default:
  return (((void*)0));
 }
}
