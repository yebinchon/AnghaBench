
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lacp_peerinfo {int lip_key; int lip_systemid; } ;


 scalar_t__ memcmp (int *,int *,int) ;

__attribute__((used)) static int
lacp_peerinfo_is_compatible(const struct lacp_peerinfo *a,
    const struct lacp_peerinfo *b)
{
 if (memcmp(&a->lip_systemid, &b->lip_systemid,
     sizeof(a->lip_systemid))) {
  return (0);
 }

 if (memcmp(&a->lip_key, &b->lip_key, sizeof(a->lip_key))) {
  return (0);
 }

 return (1);
}
