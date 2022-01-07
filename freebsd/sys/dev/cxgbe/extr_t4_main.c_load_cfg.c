
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct t4_data {scalar_t__ len; int data; } ;
struct adapter {int dummy; } ;


 int ENOMEM ;
 int INTR_OK ;
 int M_CXGBE ;
 int M_WAITOK ;
 int SLEEP_OK ;
 int begin_synchronized_op (struct adapter*,int *,int,char*) ;
 int copyin (int ,int *,scalar_t__) ;
 int end_synchronized_op (struct adapter*,int ) ;
 int free (int *,int ) ;
 int * malloc (scalar_t__,int ,int ) ;
 int t4_load_cfg (struct adapter*,int *,scalar_t__) ;

__attribute__((used)) static int
load_cfg(struct adapter *sc, struct t4_data *cfg)
{
 int rc;
 uint8_t *cfg_data = ((void*)0);

 rc = begin_synchronized_op(sc, ((void*)0), SLEEP_OK | INTR_OK, "t4ldcf");
 if (rc)
  return (rc);

 if (cfg->len == 0) {

  rc = -t4_load_cfg(sc, ((void*)0), 0);
  goto done;
 }

 cfg_data = malloc(cfg->len, M_CXGBE, M_WAITOK);
 if (cfg_data == ((void*)0)) {
  rc = ENOMEM;
  goto done;
 }

 rc = copyin(cfg->data, cfg_data, cfg->len);
 if (rc == 0)
  rc = -t4_load_cfg(sc, cfg_data, cfg->len);

 free(cfg_data, M_CXGBE);
done:
 end_synchronized_op(sc, 0);
 return (rc);
}
