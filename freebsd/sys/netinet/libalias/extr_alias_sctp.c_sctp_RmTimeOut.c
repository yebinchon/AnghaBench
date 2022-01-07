
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_nat_assoc {int dummy; } ;
struct libalias {int dummy; } ;


 int LIBALIAS_LOCK_ASSERT (struct libalias*) ;
 int LIST_REMOVE (struct sctp_nat_assoc*,int ) ;
 int timer_Q ;

__attribute__((used)) static void
sctp_RmTimeOut(struct libalias *la, struct sctp_nat_assoc *assoc)
{
 LIBALIAS_LOCK_ASSERT(la);
 LIST_REMOVE(assoc, timer_Q);
}
