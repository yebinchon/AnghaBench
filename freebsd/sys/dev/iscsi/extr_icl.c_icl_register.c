
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct icl_module {int im_iser; int im_priority; int (* im_limits ) (struct icl_drv_limits*) ;struct icl_conn* (* im_new_conn ) (char const*,struct mtx*) ;int im_name; } ;
struct TYPE_2__ {int sc_lock; int sc_modules; } ;


 int EBUSY ;
 int ICL_DEBUG (char*,char const*) ;
 int ICL_WARN (char*,char const*) ;
 int M_ICL ;
 int M_WAITOK ;
 int M_ZERO ;
 int TAILQ_INSERT_HEAD (int *,struct icl_module*,int ) ;
 struct icl_module* icl_find (char const*,int,int) ;
 int im_next ;
 struct icl_module* malloc (int,int ,int) ;
 TYPE_1__* sc ;
 int strdup (char const*,int ) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

int
icl_register(const char *offload, bool iser, int priority,
    int (*limits)(struct icl_drv_limits *),
    struct icl_conn *(*new_conn)(const char *, struct mtx *))
{
 struct icl_module *im;

 sx_xlock(&sc->sc_lock);
 im = icl_find(offload, iser, 1);
 if (im != ((void*)0)) {
  ICL_WARN("offload \"%s\" already registered", offload);
  sx_xunlock(&sc->sc_lock);
  return (EBUSY);
 }

 im = malloc(sizeof(*im), M_ICL, M_ZERO | M_WAITOK);
 im->im_name = strdup(offload, M_ICL);
 im->im_iser = iser;
 im->im_priority = priority;
 im->im_limits = limits;
 im->im_new_conn = new_conn;

 TAILQ_INSERT_HEAD(&sc->sc_modules, im, im_next);
 sx_xunlock(&sc->sc_lock);

 ICL_DEBUG("offload \"%s\" registered", offload);
 return (0);
}
