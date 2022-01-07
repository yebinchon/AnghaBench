
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ s_addr; } ;
struct sctp_nat_assoc {scalar_t__ l_port; int TableRegister; int g_port; int g_vtag; TYPE_1__ l_addr; } ;
struct libalias {int packetAliasMode; int sctpLinkCount; int sctpNatTableSize; int * sctpTableGlobal; } ;


 struct sctp_nat_assoc* FindSctpGlobalClash (struct libalias*,struct sctp_nat_assoc*) ;
 int LIBALIAS_LOCK_ASSERT (struct libalias*) ;
 int LIST_INSERT_HEAD (int *,struct sctp_nat_assoc*,int ) ;
 int PKT_ALIAS_LOG ;
 int RmSctpAssoc (struct libalias*,struct sctp_nat_assoc*) ;
 int SN_ADD_CLASH ;
 int SN_ADD_OK ;
 int SN_BOTH_TBL ;
 int SN_GLOBAL_TBL ;
 int SN_LOG (int ,int ) ;
 int SN_LOG_INFO ;
 size_t SN_TABLE_HASH (int ,int ,int ) ;
 int SctpShowAliasStats (struct libalias*) ;
 int freeGlobalAddressList (struct sctp_nat_assoc*) ;
 int list_G ;
 int logsctpassoc (struct sctp_nat_assoc*,char*) ;
 int sctp_RmTimeOut (struct libalias*,struct sctp_nat_assoc*) ;
 int sn_free (struct sctp_nat_assoc*) ;

__attribute__((used)) static int
AddSctpAssocGlobal(struct libalias *la, struct sctp_nat_assoc *assoc)
{
 struct sctp_nat_assoc *found;

 LIBALIAS_LOCK_ASSERT(la);
 found = FindSctpGlobalClash(la, assoc);
 if (found != ((void*)0)) {
  if ((found->TableRegister == SN_GLOBAL_TBL) && (found->l_addr.s_addr == assoc->l_addr.s_addr) && (found->l_port == assoc->l_port)) {

   RmSctpAssoc(la, found);
   sctp_RmTimeOut(la, found);
   freeGlobalAddressList(found);
   sn_free(found);
  } else
   return (SN_ADD_CLASH);
 }

 LIST_INSERT_HEAD(&la->sctpTableGlobal[SN_TABLE_HASH(assoc->g_vtag, assoc->g_port, la->sctpNatTableSize)],
     assoc, list_G);
 assoc->TableRegister |= SN_GLOBAL_TBL;
 la->sctpLinkCount++;

 if (assoc->TableRegister == SN_BOTH_TBL) {

  if (la->packetAliasMode & PKT_ALIAS_LOG)
   SctpShowAliasStats(la);

  SN_LOG(SN_LOG_INFO, logsctpassoc(assoc, "^"));
 }

 return (SN_ADD_OK);
}
