
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpp_header {int th_len; int th_magic; } ;


 int be32toh (int ) ;
 int be64toh (int ) ;

void
tcpp_header_decode(struct tcpp_header *thp)
{

 thp->th_magic = be32toh(thp->th_magic);
 thp->th_len = be64toh(thp->th_len);
}
