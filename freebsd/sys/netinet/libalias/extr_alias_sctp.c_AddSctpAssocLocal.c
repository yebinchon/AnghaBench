
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_nat_assoc {scalar_t__ g_port; int TableRegister; int l_port; int l_vtag; int l_addr; } ;
struct libalias {int packetAliasMode; int sctpLinkCount; int sctpNatTableSize; int * sctpTableLocal; } ;
struct in_addr {int dummy; } ;


 struct sctp_nat_assoc* FindSctpLocal (struct libalias*,int ,struct in_addr,int ,int ,scalar_t__) ;
 int LIBALIAS_LOCK_ASSERT (struct libalias*) ;
 int LIST_INSERT_HEAD (int *,struct sctp_nat_assoc*,int ) ;
 int PKT_ALIAS_LOG ;
 int RmSctpAssoc (struct libalias*,struct sctp_nat_assoc*) ;
 int SN_ADD_CLASH ;
 int SN_ADD_OK ;
 int SN_BOTH_TBL ;
 int SN_LOCAL_TBL ;
 int SN_LOG (int ,int ) ;
 int SN_LOG_INFO ;
 size_t SN_TABLE_HASH (int ,int ,int ) ;
 int SctpShowAliasStats (struct libalias*) ;
 int freeGlobalAddressList (struct sctp_nat_assoc*) ;
 int list_L ;
 int logsctpassoc (struct sctp_nat_assoc*,char*) ;
 int sctp_RmTimeOut (struct libalias*,struct sctp_nat_assoc*) ;
 int sn_free (struct sctp_nat_assoc*) ;

__attribute__((used)) static int
AddSctpAssocLocal(struct libalias *la, struct sctp_nat_assoc *assoc, struct in_addr g_addr)
{
 struct sctp_nat_assoc *found;

 LIBALIAS_LOCK_ASSERT(la);
 found = FindSctpLocal(la, assoc->l_addr, g_addr, assoc->l_vtag, assoc->l_port, assoc->g_port);
 if (found != ((void*)0)) {
  if ((found->TableRegister == SN_LOCAL_TBL) && (found->g_port == assoc->g_port)) {
   RmSctpAssoc(la, found);
   sctp_RmTimeOut(la, found);
   freeGlobalAddressList(found);
   sn_free(found);
  } else
   return (SN_ADD_CLASH);
 }

 LIST_INSERT_HEAD(&la->sctpTableLocal[SN_TABLE_HASH(assoc->l_vtag, assoc->l_port, la->sctpNatTableSize)],
     assoc, list_L);
 assoc->TableRegister |= SN_LOCAL_TBL;
 la->sctpLinkCount++;

 if (assoc->TableRegister == SN_BOTH_TBL) {

  if (la->packetAliasMode & PKT_ALIAS_LOG)
   SctpShowAliasStats(la);

  SN_LOG(SN_LOG_INFO, logsctpassoc(assoc, "^"));
 }

 return (SN_ADD_OK);
}
