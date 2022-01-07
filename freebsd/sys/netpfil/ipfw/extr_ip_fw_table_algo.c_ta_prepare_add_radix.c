
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tentry_info {int masklen; scalar_t__ subtype; } ;
struct TYPE_5__ {int ma; } ;
struct TYPE_4__ {int ma; } ;
struct TYPE_6__ {TYPE_2__ a6; TYPE_1__ a4; } ;
struct ta_buf_radix {struct sockaddr* mask_ptr; struct sockaddr* addr_ptr; struct radix_addr_xentry* ent_ptr; TYPE_3__ addr; } ;
struct sockaddr {int dummy; } ;
struct radix_addr_xentry {int masklen; int addr6; int addr; } ;
struct radix_addr_entry {int masklen; int addr6; int addr; } ;
struct ip_fw_chain {int dummy; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int EINVAL ;
 int M_IPFW_TBL ;
 int M_WAITOK ;
 int M_ZERO ;
 void* malloc (int,int ,int) ;
 int tei_to_sockaddr_ent (struct tentry_info*,struct sockaddr*,struct sockaddr*,int*) ;

__attribute__((used)) static int
ta_prepare_add_radix(struct ip_fw_chain *ch, struct tentry_info *tei,
    void *ta_buf)
{
 struct ta_buf_radix *tb;
 struct radix_addr_entry *ent;



 struct sockaddr *addr, *mask;
 int mlen, set_mask;

 tb = (struct ta_buf_radix *)ta_buf;

 mlen = tei->masklen;
 set_mask = 0;

 if (tei->subtype == AF_INET) {
 } else {

  return (EINVAL);
 }

 tei_to_sockaddr_ent(tei, addr, mask, &set_mask);

 tb->addr_ptr = addr;
 if (set_mask != 0)
  tb->mask_ptr = mask;

 return (0);
}
