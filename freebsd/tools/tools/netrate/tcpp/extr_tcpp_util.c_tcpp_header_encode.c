
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpp_header {int th_len; int th_magic; } ;


 int htobe32 (int ) ;
 int htobe64 (int ) ;

void
tcpp_header_encode(struct tcpp_header *thp)
{

 thp->th_magic = htobe32(thp->th_magic);
 thp->th_len = htobe64(thp->th_len);
}
