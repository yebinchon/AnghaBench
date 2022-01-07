
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr {int sa_family; scalar_t__ sa_len; } ;
struct TYPE_4__ {int sin_addr; } ;
struct TYPE_3__ {int sin6_addr; int sin6_scope_id; } ;




 int key_bbcmp (int *,int *,size_t) ;
 TYPE_2__* satosin (struct sockaddr const*) ;
 TYPE_1__* satosin6 (struct sockaddr const*) ;

int
key_sockaddrcmp_withmask(const struct sockaddr *sa1,
    const struct sockaddr *sa2, size_t mask)
{
 if (sa1->sa_family != sa2->sa_family || sa1->sa_len != sa2->sa_len)
  return (1);

 switch (sa1->sa_family) {
 }
 return (1);
}
