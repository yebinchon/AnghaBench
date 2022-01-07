
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int module_t ;
struct TYPE_6__ {int lock; int actv; int done; } ;


 int EBUSY ;
 int EOPNOTSUPP ;


 int MTX_DEF ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int TAILQ_FIRST (int *) ;
 int free (TYPE_1__*,int ) ;
 TYPE_1__* malloc (int,int ,int) ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,char*,int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 TYPE_1__* vhba ;
 int vhba_attach (TYPE_1__*) ;
 int vhba_detach (TYPE_1__*) ;

int
vhba_modprobe(module_t mod, int cmd, void *arg)
{
 int error = 0;

 switch (cmd) {
 case 129:
  vhba = malloc(sizeof (*vhba), M_DEVBUF, M_WAITOK|M_ZERO);
  mtx_init(&vhba->lock, "vhba", ((void*)0), MTX_DEF);
  error = vhba_attach(vhba);
  if (error) {
   mtx_destroy(&vhba->lock);
   free(vhba, M_DEVBUF);
  }
  break;
 case 128:
         mtx_lock(&vhba->lock);
  if (TAILQ_FIRST(&vhba->done) || TAILQ_FIRST(&vhba->actv)) {
   error = EBUSY;
   mtx_unlock(&vhba->lock);
   break;
  }
  vhba_detach(vhba);
  mtx_unlock(&vhba->lock);
  mtx_destroy(&vhba->lock);
  free(vhba, M_DEVBUF);
  break;
 default:
  error = EOPNOTSUPP;
  break;
 }
 return (error);
}
