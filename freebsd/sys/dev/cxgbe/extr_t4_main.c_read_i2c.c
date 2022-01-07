
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct t4_i2c_data {int len; scalar_t__ port_id; int * data; int offset; int dev_addr; } ;
struct TYPE_2__ {scalar_t__ nports; } ;
struct adapter {int mbox; TYPE_1__ params; } ;


 int EFBIG ;
 int EINVAL ;
 int INTR_OK ;
 int SLEEP_OK ;
 int begin_synchronized_op (struct adapter*,int *,int,char*) ;
 int end_synchronized_op (struct adapter*,int ) ;
 int t4_i2c_rd (struct adapter*,int ,scalar_t__,int ,int ,int,int *) ;

__attribute__((used)) static int
read_i2c(struct adapter *sc, struct t4_i2c_data *i2cd)
{
 int rc;

 if (i2cd->len == 0 || i2cd->port_id >= sc->params.nports)
  return (EINVAL);

 if (i2cd->len > sizeof(i2cd->data))
  return (EFBIG);

 rc = begin_synchronized_op(sc, ((void*)0), SLEEP_OK | INTR_OK, "t4i2crd");
 if (rc)
  return (rc);
 rc = -t4_i2c_rd(sc, sc->mbox, i2cd->port_id, i2cd->dev_addr,
     i2cd->offset, i2cd->len, &i2cd->data[0]);
 end_synchronized_op(sc, 0);

 return (rc);
}
