
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_nat_assoc {int Gaddr; } ;
struct sctp_GlobalAddress {int dummy; } ;


 struct sctp_GlobalAddress* LIST_FIRST (int *) ;
 struct sctp_GlobalAddress* LIST_NEXT (struct sctp_GlobalAddress*,int ) ;
 int list_Gaddr ;
 int sn_free (struct sctp_GlobalAddress*) ;

__attribute__((used)) static void freeGlobalAddressList(struct sctp_nat_assoc *assoc)
{
 struct sctp_GlobalAddress *gaddr1=((void*)0),*gaddr2=((void*)0);

 gaddr1 = LIST_FIRST(&(assoc->Gaddr));
 while (gaddr1 != ((void*)0)) {
  gaddr2 = LIST_NEXT(gaddr1, list_Gaddr);
  sn_free(gaddr1);
  gaddr1 = gaddr2;
 }
}
