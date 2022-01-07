
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int ss_family; int ss_len; } ;
struct sockaddr {int sa_family; int sa_len; } ;


 int memcpy (struct sockaddr_storage*,struct sockaddr*,int ) ;
 int memset (struct sockaddr_storage*,int ,int ) ;

__attribute__((used)) static struct sockaddr *
rtsock_fix_netmask(struct sockaddr *dst, struct sockaddr *smask,
    struct sockaddr_storage *dmask)
{
 if (dst == ((void*)0) || smask == ((void*)0))
  return (((void*)0));

 memset(dmask, 0, dst->sa_len);
 memcpy(dmask, smask, smask->sa_len);
 dmask->ss_len = dst->sa_len;
 dmask->ss_family = dst->sa_family;

 return ((struct sockaddr *)dmask);
}
