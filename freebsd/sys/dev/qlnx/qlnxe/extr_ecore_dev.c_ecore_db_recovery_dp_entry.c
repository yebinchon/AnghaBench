
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_hwfn {int dummy; } ;
struct ecore_db_recovery_entry {scalar_t__ db_width; scalar_t__ db_space; int hwfn_idx; int db_data; int db_addr; } ;


 scalar_t__ DB_REC_USER ;
 scalar_t__ DB_REC_WIDTH_32B ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,char*,struct ecore_db_recovery_entry*,int ,int ,char*,char*,int ) ;
 int ECORE_MSG_SPQ ;

__attribute__((used)) static void ecore_db_recovery_dp_entry(struct ecore_hwfn *p_hwfn,
    struct ecore_db_recovery_entry *db_entry,
    char *action)
{
 DP_VERBOSE(p_hwfn, ECORE_MSG_SPQ, "(%s: db_entry %p, addr %p, data %p, width %s, %s space, hwfn %d)\n",
     action, db_entry, db_entry->db_addr, db_entry->db_data,
     db_entry->db_width == DB_REC_WIDTH_32B ? "32b" : "64b",
     db_entry->db_space == DB_REC_USER ? "user" : "kernel",
     db_entry->hwfn_idx);
}
