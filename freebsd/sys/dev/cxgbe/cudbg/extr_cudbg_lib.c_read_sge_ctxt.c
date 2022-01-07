
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cudbg_init {struct adapter* adap; } ;
struct adapter {int mbox; } ;
typedef enum ctxt_type { ____Placeholder_ctxt_type } ctxt_type ;


 int INTR_OK ;
 int SLEEP_OK ;
 int begin_synchronized_op (struct adapter*,int *,int,char*) ;
 int end_synchronized_op (struct adapter*,int ) ;
 scalar_t__ is_fw_attached (struct cudbg_init*) ;
 int t4_sge_ctxt_rd (struct adapter*,int ,int ,int,int *) ;
 int t4_sge_ctxt_rd_bd (struct adapter*,int ,int,int *) ;

__attribute__((used)) static void read_sge_ctxt(struct cudbg_init *pdbg_init, u32 cid,
     enum ctxt_type ctype, u32 *data)
{
 struct adapter *padap = pdbg_init->adap;
 int rc = -1;

 if (is_fw_attached(pdbg_init)) {
  rc = begin_synchronized_op(padap, ((void*)0), SLEEP_OK | INTR_OK,
      "t4cudf");
  if (rc != 0)
   goto out;
  rc = t4_sge_ctxt_rd(padap, padap->mbox, cid, ctype,
        data);
  end_synchronized_op(padap, 0);
 }

out:
 if (rc)
  t4_sge_ctxt_rd_bd(padap, cid, ctype, data);
}
