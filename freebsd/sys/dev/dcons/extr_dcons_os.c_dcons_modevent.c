
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int module_t ;
struct TYPE_4__ {int magic; } ;
struct TYPE_3__ {TYPE_2__* buf; } ;


 int DCONS_BUF_SIZE ;
 int DCONS_CON ;
 int DCONS_GDB ;
 int EOPNOTSUPP ;



 int M_DEVBUF ;
 int atomic_load_acq_int (int *) ;
 int callout_stop (int *) ;
 int cnadd (int *) ;
 int cnremove (int *) ;
 int contigfree (TYPE_2__*,int ,int ) ;
 int dcons_attach () ;
 int dcons_callout ;
 int dcons_close_refs ;
 int dcons_cninit (int *) ;
 int dcons_cnprobe (int *) ;
 int dcons_consdev ;
 int dcons_detach (int ) ;
 int dcons_drv_init (int) ;
 TYPE_1__ dg ;
 int drv_init ;
 int mstosbt (int) ;
 int pause_sbt (char*,int ,int ,int ) ;
 int printf (char*) ;

__attribute__((used)) static int
dcons_modevent(module_t mode, int type, void *data)
{
 int err = 0, ret;

 switch (type) {
 case 130:
  ret = dcons_drv_init(1);
  if (ret != -1)
   dcons_attach();
  if (ret == 0) {
   dcons_cnprobe(&dcons_consdev);
   dcons_cninit(&dcons_consdev);
   cnadd(&dcons_consdev);
  }
  break;
 case 128:
  printf("dcons: unload\n");
  if (drv_init == 1) {
   callout_stop(&dcons_callout);
   cnremove(&dcons_consdev);
   dcons_detach(DCONS_CON);
   dcons_detach(DCONS_GDB);
   dg.buf->magic = 0;

   contigfree(dg.buf, DCONS_BUF_SIZE, M_DEVBUF);
  }


  while (atomic_load_acq_int(&dcons_close_refs) > 0)
                        pause_sbt("dcunld", mstosbt(50), mstosbt(10), 0);
  break;
 case 129:



  break;
 default:
  err = EOPNOTSUPP;
  break;
 }
 return(err);
}
