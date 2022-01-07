
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {scalar_t__ sa_family; int sa_len; int sa_data; } ;
struct TYPE_2__ {scalar_t__ sa_family; int sa_data; } ;


 int bind_address_count ;
 TYPE_1__** bind_addresses ;
 scalar_t__ memcmp (int ,int ,int ) ;

int
listen_addr(const struct sockaddr *sa)
{
 int i;

 if (bind_address_count == 0)
  return (1);

 for (i = 0; i < bind_address_count; i++) {
  if (bind_addresses[i]->sa_family != sa->sa_family)
   continue;

  if (0 == memcmp(bind_addresses[i]->sa_data, sa->sa_data,
      sa->sa_len))
   return (1);
 }
 return (0);
}
