
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtx {int dummy; } ;
struct icl_module {struct icl_conn* (* im_new_conn ) (char const*,struct mtx*) ;} ;
struct icl_conn {int dummy; } ;
struct TYPE_2__ {int sc_lock; } ;


 struct icl_module* icl_find (char const*,int,int) ;
 TYPE_1__* sc ;
 struct icl_conn* stub1 (char const*,struct mtx*) ;
 int sx_slock (int *) ;
 int sx_sunlock (int *) ;

struct icl_conn *
icl_new_conn(const char *offload, bool iser, const char *name, struct mtx *lock)
{
 struct icl_module *im;
 struct icl_conn *ic;

 sx_slock(&sc->sc_lock);
 im = icl_find(offload, iser, 0);
 if (im == ((void*)0)) {
  sx_sunlock(&sc->sc_lock);
  return (((void*)0));
 }

 ic = im->im_new_conn(name, lock);
 sx_sunlock(&sc->sc_lock);

 return (ic);
}
