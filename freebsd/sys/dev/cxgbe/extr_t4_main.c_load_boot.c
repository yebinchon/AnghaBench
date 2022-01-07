
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_int ;
struct t4_bootrom {int len; int pf_offset; int pfidx_addr; int data; } ;
struct adapter {int dummy; } ;


 int A_PCIE_PF_EXPROM_OFST ;
 int EFBIG ;
 int EINVAL ;
 int ENOMEM ;
 int G_OFFSET (int) ;
 int INTR_OK ;
 int M_CXGBE ;
 int M_WAITOK ;
 int PF_REG (int,int ) ;
 int SLEEP_OK ;
 int begin_synchronized_op (struct adapter*,int *,int,char*) ;
 int copyin (int ,int *,scalar_t__) ;
 int end_synchronized_op (struct adapter*,int ) ;
 int free (int *,int ) ;
 int * malloc (scalar_t__,int ,int ) ;
 int t4_load_boot (struct adapter*,int *,int ,scalar_t__) ;
 int t4_read_reg (struct adapter*,int ) ;

__attribute__((used)) static int
load_boot(struct adapter *sc, struct t4_bootrom *br)
{
 int rc;
 uint8_t *br_data = ((void*)0);
 u_int offset;

 if (br->len > 1024 * 1024)
  return (EFBIG);

 if (br->pf_offset == 0) {

  if (br->pfidx_addr > 7)
   return (EINVAL);
  offset = G_OFFSET(t4_read_reg(sc, PF_REG(br->pfidx_addr,
      A_PCIE_PF_EXPROM_OFST)));
 } else if (br->pf_offset == 1) {

  offset = G_OFFSET(br->pfidx_addr);
 } else {
  return (EINVAL);
 }

 rc = begin_synchronized_op(sc, ((void*)0), SLEEP_OK | INTR_OK, "t4ldbr");
 if (rc)
  return (rc);

 if (br->len == 0) {

  rc = -t4_load_boot(sc, ((void*)0), offset, 0);
  goto done;
 }

 br_data = malloc(br->len, M_CXGBE, M_WAITOK);
 if (br_data == ((void*)0)) {
  rc = ENOMEM;
  goto done;
 }

 rc = copyin(br->data, br_data, br->len);
 if (rc == 0)
  rc = -t4_load_boot(sc, br_data, offset, br->len);

 free(br_data, M_CXGBE);
done:
 end_synchronized_op(sc, 0);
 return (rc);
}
