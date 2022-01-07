
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsm {scalar_t__ proto; } ;
struct datalink {TYPE_1__* parent; } ;
struct TYPE_2__ {int object; int (* LayerStart ) (int ,struct fsm*) ;} ;


 scalar_t__ PROTO_LCP ;
 int stub1 (int ,struct fsm*) ;

__attribute__((used)) static void
datalink_LayerStart(void *v, struct fsm *fp)
{

  struct datalink *dl = (struct datalink *)v;

  if (fp->proto == PROTO_LCP)
    (*dl->parent->LayerStart)(dl->parent->object, fp);
}
