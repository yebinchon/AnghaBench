
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef unsigned long long u32 ;
struct ecore_hwfn {int p_dev; } ;
struct ecore_db_recovery_entry {scalar_t__ db_width; scalar_t__ db_data; int db_addr; } ;
typedef enum ecore_db_rec_exec { ____Placeholder_ecore_db_rec_exec } ecore_db_rec_exec ;


 int DB_REC_DRY_RUN ;
 int DB_REC_ONCE ;
 int DB_REC_REAL_DEAL ;
 scalar_t__ DB_REC_WIDTH_32B ;
 int DIRECT_REG_WR (struct ecore_hwfn*,int ,unsigned long long) ;
 int DIRECT_REG_WR64 (struct ecore_hwfn*,int ,scalar_t__) ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,char*,int ,unsigned long long) ;
 int ECORE_MSG_SPQ ;
 int OSAL_WMB (int ) ;
 int ecore_db_rec_sanity (int ,int ,scalar_t__) ;

__attribute__((used)) static void ecore_db_recovery_ring(struct ecore_hwfn *p_hwfn,
       struct ecore_db_recovery_entry *db_entry,
       enum ecore_db_rec_exec db_exec)
{
 if (db_exec != DB_REC_ONCE) {

  if (db_entry->db_width == DB_REC_WIDTH_32B)
   DP_VERBOSE(p_hwfn, ECORE_MSG_SPQ,
       "%s doorbell address %p data %x\n",
       db_exec == DB_REC_DRY_RUN ?
       "would have rung" : "ringing",
       db_entry->db_addr,
       *(u32 *)db_entry->db_data);
  else
   DP_VERBOSE(p_hwfn, ECORE_MSG_SPQ,
       "%s doorbell address %p data %llx\n",
       db_exec == DB_REC_DRY_RUN ?
       "would have rung" : "ringing",
       db_entry->db_addr,
       (unsigned long long)*(u64 *)(db_entry->db_data));
 }


 if (!ecore_db_rec_sanity(p_hwfn->p_dev, db_entry->db_addr,
     db_entry->db_data))
  return;





 OSAL_WMB(p_hwfn->p_dev);


 if (db_exec == DB_REC_REAL_DEAL || db_exec == DB_REC_ONCE) {
  if (db_entry->db_width == DB_REC_WIDTH_32B)
   DIRECT_REG_WR(p_hwfn, db_entry->db_addr, *(u32 *)(db_entry->db_data));
  else
   DIRECT_REG_WR64(p_hwfn, db_entry->db_addr, *(u64 *)(db_entry->db_data));
 }




 OSAL_WMB(p_hwfn->p_dev);
}
