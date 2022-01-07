
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct t4_data {int len; int data; } ;
struct adapter {int flags; int debug_flags; } ;


 int DF_LOAD_FW_ANYTIME ;
 int EBUSY ;
 int ENOMEM ;
 int FULL_INIT_DONE ;
 int INTR_OK ;
 int M_CXGBE ;
 int M_WAITOK ;
 int SLEEP_OK ;
 int begin_synchronized_op (struct adapter*,int *,int,char*) ;
 int copyin (int ,int *,int ) ;
 int end_synchronized_op (struct adapter*,int ) ;
 int free (int *,int ) ;
 int * malloc (int ,int ,int ) ;
 int t4_load_fw (struct adapter*,int *,int ) ;

__attribute__((used)) static int
load_fw(struct adapter *sc, struct t4_data *fw)
{
 int rc;
 uint8_t *fw_data;

 rc = begin_synchronized_op(sc, ((void*)0), SLEEP_OK | INTR_OK, "t4ldfw");
 if (rc)
  return (rc);







 if (sc->flags & FULL_INIT_DONE &&
     (sc->debug_flags & DF_LOAD_FW_ANYTIME) == 0) {
  rc = EBUSY;
  goto done;
 }

 fw_data = malloc(fw->len, M_CXGBE, M_WAITOK);
 if (fw_data == ((void*)0)) {
  rc = ENOMEM;
  goto done;
 }

 rc = copyin(fw->data, fw_data, fw->len);
 if (rc == 0)
  rc = -t4_load_fw(sc, fw_data, fw->len);

 free(fw_data, M_CXGBE);
done:
 end_synchronized_op(sc, 0);
 return (rc);
}
