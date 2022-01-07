
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_3__ {int sin6_addr; } ;
struct TYPE_4__ {int sin6_addr; } ;
struct in6_addrpolicy {scalar_t__ label; scalar_t__ use; TYPE_1__ addrmask; TYPE_2__ addr; } ;
typedef scalar_t__ caddr_t ;


 scalar_t__ ADDR_LABEL_NOTAPP ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int IN6_MASK_ADDR (int *,int *) ;


 int add_addrsel_policyent (struct in6_addrpolicy*) ;
 int delete_addrsel_policyent (struct in6_addrpolicy*) ;
 scalar_t__ in6_mask2len (int *,int *) ;

int
in6_src_ioctl(u_long cmd, caddr_t data)
{
 struct in6_addrpolicy ent0;

 if (cmd != 129 && cmd != 128)
  return (EOPNOTSUPP);

 ent0 = *(struct in6_addrpolicy *)data;

 if (ent0.label == ADDR_LABEL_NOTAPP)
  return (EINVAL);

 if (in6_mask2len(&ent0.addrmask.sin6_addr, ((void*)0)) < 0)
  return (EINVAL);

 IN6_MASK_ADDR(&ent0.addr.sin6_addr, &ent0.addrmask.sin6_addr);
 ent0.use = 0;

 switch (cmd) {
 case 129:
  return (add_addrsel_policyent(&ent0));
 case 128:
  return (delete_addrsel_policyent(&ent0));
 }

 return (0);
}
