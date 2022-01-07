
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct in_addr {int dummy; } ;
struct TYPE_2__ {struct in_addr frag_addr; } ;
struct alias_link {TYPE_1__ data; } ;



void
GetFragmentAddr(struct alias_link *lnk, struct in_addr *src_addr)
{
 *src_addr = lnk->data.frag_addr;
}
