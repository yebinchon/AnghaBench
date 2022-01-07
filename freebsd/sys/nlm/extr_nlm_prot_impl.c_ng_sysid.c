
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct nlm_grantcookie {int ng_sysid; } ;
struct netobj {scalar_t__ n_bytes; } ;



__attribute__((used)) static inline uint32_t
ng_sysid(struct netobj *src)
{

 return ((struct nlm_grantcookie *)src->n_bytes)->ng_sysid;
}
