
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_nat_assoc {int TableRegister; } ;
struct libalias {int packetAliasMode; int sctpLinkCount; } ;


 int LIBALIAS_LOCK_ASSERT (struct libalias*) ;
 int LIST_REMOVE (struct sctp_nat_assoc*,int ) ;
 int PKT_ALIAS_LOG ;
 int SN_BOTH_TBL ;
 int SN_GLOBAL_TBL ;
 int SN_LOCAL_TBL ;
 int SN_LOG (int ,int ) ;
 int SN_LOG_INFO ;
 int SN_LOG_LOW ;
 int SN_TO_NODIR ;
 int SctpShowAliasStats (struct libalias*) ;
 int list_G ;
 int list_L ;
 int logsctpassoc (struct sctp_nat_assoc*,char*) ;
 int logsctperror (char*,int ,int ,int ) ;

__attribute__((used)) static void
RmSctpAssoc(struct libalias *la, struct sctp_nat_assoc *assoc)
{

 if (assoc == ((void*)0)) {

  SN_LOG(SN_LOG_LOW,
      logsctperror("ERROR: alias_sctp:RmSctpAssoc(NULL)\n", 0, 0, SN_TO_NODIR));
  return;
 }

 if (assoc->TableRegister == SN_BOTH_TBL) {
  SN_LOG(SN_LOG_INFO, logsctpassoc(assoc, "$"));
 }
 LIBALIAS_LOCK_ASSERT(la);
 if (assoc->TableRegister & SN_LOCAL_TBL) {
  assoc->TableRegister ^= SN_LOCAL_TBL;
  la->sctpLinkCount--;
  LIST_REMOVE(assoc, list_L);
 }

 if (assoc->TableRegister & SN_GLOBAL_TBL) {
  assoc->TableRegister ^= SN_GLOBAL_TBL;
  la->sctpLinkCount--;
  LIST_REMOVE(assoc, list_G);
 }


 if (la->packetAliasMode & PKT_ALIAS_LOG)
  SctpShowAliasStats(la);
}
