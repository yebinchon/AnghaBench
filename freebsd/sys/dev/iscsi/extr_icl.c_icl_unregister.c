
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct icl_module {struct icl_module* im_name; } ;
struct TYPE_2__ {int sc_lock; int sc_modules; } ;


 int ENXIO ;
 int ICL_DEBUG (char*,char const*) ;
 int ICL_WARN (char*,char const*) ;
 int M_ICL ;
 int TAILQ_REMOVE (int *,struct icl_module*,int ) ;
 int free (struct icl_module*,int ) ;
 struct icl_module* icl_find (char const*,int,int) ;
 int im_next ;
 TYPE_1__* sc ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

int
icl_unregister(const char *offload, bool rdma)
{
 struct icl_module *im;

 sx_xlock(&sc->sc_lock);
 im = icl_find(offload, rdma, 1);
 if (im == ((void*)0)) {
  ICL_WARN("offload \"%s\" not registered", offload);
  sx_xunlock(&sc->sc_lock);
  return (ENXIO);
 }

 TAILQ_REMOVE(&sc->sc_modules, im, im_next);
 sx_xunlock(&sc->sc_lock);

 free(im->im_name, M_ICL);
 free(im, M_ICL);

 ICL_DEBUG("offload \"%s\" unregistered", offload);
 return (0);
}
