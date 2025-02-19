
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct thread {int dummy; } ;
struct t4_tracer {int dummy; } ;
struct t4_sge_context {int dummy; } ;
struct t4_sched_queue {int dummy; } ;
struct t4_sched_params {int dummy; } ;
struct t4_regdump {int len; int data; } ;
struct t4_reg {int addr; int size; int val; } ;
struct t4_offload_policy {int dummy; } ;
struct t4_mem_range {int dummy; } ;
struct t4_i2c_data {int dummy; } ;
struct t4_filter {int dummy; } ;
struct t4_data {int dummy; } ;
struct t4_cudbg_dump {int dummy; } ;
struct t4_bootrom {int dummy; } ;
struct cdev {struct adapter* si_drv1; } ;
struct adapter {int mmio_len; } ;
typedef scalar_t__ caddr_t ;
 int EFAULT ;
 int EINVAL ;
 int ENOBUFS ;
 int ENOTTY ;
 int M_CXGBE ;
 int M_WAITOK ;
 int M_ZERO ;
 int PRIV_DRIVER ;
 int clear_stats (struct adapter*,int ) ;
 int copyout (int *,int ,int) ;
 int cudbg_dump (struct adapter*,struct t4_cudbg_dump*) ;
 int del_filter (struct adapter*,struct t4_filter*) ;
 int free (int *,int ) ;
 int get_filter (struct adapter*,struct t4_filter*) ;
 int get_filter_mode (struct adapter*,int *) ;
 int get_regs (struct adapter*,struct t4_regdump*,int *) ;
 int get_sge_context (struct adapter*,struct t4_sge_context*) ;
 int load_boot (struct adapter*,struct t4_bootrom*) ;
 int load_bootcfg (struct adapter*,struct t4_data*) ;
 int load_cfg (struct adapter*,struct t4_data*) ;
 int load_fw (struct adapter*,struct t4_data*) ;
 int * malloc (int,int ,int) ;
 int priv_check (struct thread*,int ) ;
 int read_card_mem (struct adapter*,int,struct t4_mem_range*) ;
 int read_i2c (struct adapter*,struct t4_i2c_data*) ;
 int set_filter (struct adapter*,struct t4_filter*) ;
 int set_filter_mode (struct adapter*,int ) ;
 int set_offload_policy (struct adapter*,struct t4_offload_policy*) ;
 int t4_get_regs_len (struct adapter*) ;
 int t4_get_tracer (struct adapter*,struct t4_tracer*) ;
 int t4_read_reg (struct adapter*,int) ;
 int t4_read_reg64 (struct adapter*,int) ;
 int t4_set_sched_class (struct adapter*,struct t4_sched_params*) ;
 int t4_set_sched_queue (struct adapter*,struct t4_sched_queue*) ;
 int t4_set_tracer (struct adapter*,struct t4_tracer*) ;
 int t4_write_reg (struct adapter*,int,int ) ;
 int t4_write_reg64 (struct adapter*,int,int) ;

__attribute__((used)) static int
t4_ioctl(struct cdev *dev, unsigned long cmd, caddr_t data, int fflag,
    struct thread *td)
{
 int rc;
 struct adapter *sc = dev->si_drv1;

 rc = priv_check(td, PRIV_DRIVER);
 if (rc != 0)
  return (rc);

 switch (cmd) {
 case 146: {
  struct t4_reg *edata = (struct t4_reg *)data;

  if ((edata->addr & 0x3) != 0 || edata->addr >= sc->mmio_len)
   return (EFAULT);

  if (edata->size == 4)
   edata->val = t4_read_reg(sc, edata->addr);
  else if (edata->size == 8)
   edata->val = t4_read_reg64(sc, edata->addr);
  else
   return (EINVAL);

  break;
 }
 case 132: {
  struct t4_reg *edata = (struct t4_reg *)data;

  if ((edata->addr & 0x3) != 0 || edata->addr >= sc->mmio_len)
   return (EFAULT);

  if (edata->size == 4) {
   if (edata->val & 0xffffffff00000000)
    return (EINVAL);
   t4_write_reg(sc, edata->addr, (uint32_t) edata->val);
  } else if (edata->size == 8)
   t4_write_reg64(sc, edata->addr, edata->val);
  else
   return (EINVAL);
  break;
 }
 case 135: {
  struct t4_regdump *regs = (struct t4_regdump *)data;
  int reglen = t4_get_regs_len(sc);
  uint8_t *buf;

  if (regs->len < reglen) {
   regs->len = reglen;
   return (ENOBUFS);
  }

  regs->len = reglen;
  buf = malloc(reglen, M_CXGBE, M_WAITOK | M_ZERO);
  get_regs(sc, regs, buf);
  rc = copyout(buf, regs->data, reglen);
  free(buf, M_CXGBE);
  break;
 }
 case 144:
  rc = get_filter_mode(sc, (uint32_t *)data);
  break;
 case 130:
  rc = set_filter_mode(sc, *(uint32_t *)data);
  break;
 case 145:
  rc = get_filter(sc, (struct t4_filter *)data);
  break;
 case 131:
  rc = set_filter(sc, (struct t4_filter *)data);
  break;
 case 147:
  rc = del_filter(sc, (struct t4_filter *)data);
  break;
 case 141:
  rc = get_sge_context(sc, (struct t4_sge_context *)data);
  break;
 case 136:
  rc = load_fw(sc, (struct t4_data *)data);
  break;
 case 142:
  rc = read_card_mem(sc, 2, (struct t4_mem_range *)data);
  break;
 case 143:
  rc = read_i2c(sc, (struct t4_i2c_data *)data);
  break;
 case 149:
  rc = clear_stats(sc, *(uint32_t *)data);
  break;
 case 134:
  rc = t4_set_sched_class(sc, (struct t4_sched_params *)data);
  break;
 case 133:
  rc = t4_set_sched_queue(sc, (struct t4_sched_queue *)data);
  break;
 case 140:
  rc = t4_get_tracer(sc, (struct t4_tracer *)data);
  break;
 case 128:
  rc = t4_set_tracer(sc, (struct t4_tracer *)data);
  break;
 case 137:
  rc = load_cfg(sc, (struct t4_data *)data);
  break;
 case 139:
  rc = load_boot(sc, (struct t4_bootrom *)data);
  break;
 case 138:
  rc = load_bootcfg(sc, (struct t4_data *)data);
  break;
 case 148:
  rc = cudbg_dump(sc, (struct t4_cudbg_dump *)data);
  break;
 case 129:
  rc = set_offload_policy(sc, (struct t4_offload_policy *)data);
  break;
 default:
  rc = ENOTTY;
 }

 return (rc);
}
