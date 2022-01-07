
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cudbg_init {struct adapter* adap; } ;
struct cudbg_error {int dummy; } ;
struct cudbg_buffer {int dummy; } ;
struct adapter {int dummy; } ;


 scalar_t__ is_t5 (struct adapter*) ;
 scalar_t__ is_t6 (struct adapter*) ;
 int t5_wtp_data (struct cudbg_init*,struct cudbg_buffer*,struct cudbg_error*) ;
 int t6_wtp_data (struct cudbg_init*,struct cudbg_buffer*,struct cudbg_error*) ;

int collect_wtp_data(struct cudbg_init *pdbg_init,
       struct cudbg_buffer *dbg_buff,
       struct cudbg_error *cudbg_err)
{
 struct adapter *padap = pdbg_init->adap;
 int rc = -1;

 if (is_t5(padap))
  rc = t5_wtp_data(pdbg_init, dbg_buff, cudbg_err);
 else if (is_t6(padap))
  rc = t6_wtp_data(pdbg_init, dbg_buff, cudbg_err);

 return rc;
}
