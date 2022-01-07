
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trace_params {int port; int invert; int skip_len; int skip_ofst; int min_len; int snap_len; int * mask; int * data; } ;
struct TYPE_2__ {int port; int invert; int skip_len; int skip_ofst; int min_len; int snap_len; int * mask; int * data; } ;
struct t4_tracer {int idx; int enabled; int valid; TYPE_1__ tp; } ;
struct adapter {int* chan_map; int tracer_valid; } ;


 int HOLD_LOCK ;
 int INTR_OK ;
 int LOCK_HELD ;
 int NTRACE ;
 int SLEEP_OK ;
 int begin_synchronized_op (struct adapter*,int *,int,char*) ;
 int end_synchronized_op (struct adapter*,int ) ;
 scalar_t__ isset (int *,int) ;
 int memcpy (int *,int *,int) ;
 int t4_get_trace_filter (struct adapter*,struct trace_params*,int,int*) ;

int
t4_get_tracer(struct adapter *sc, struct t4_tracer *t)
{
 int rc, i, enabled;
 struct trace_params tp;

 if (t->idx >= NTRACE) {
  t->idx = 0xff;
  t->enabled = 0;
  t->valid = 0;
  return (0);
 }

 rc = begin_synchronized_op(sc, ((void*)0), HOLD_LOCK | SLEEP_OK | INTR_OK,
     "t4gett");
 if (rc)
  return (rc);

 for (i = t->idx; i < NTRACE; i++) {
  if (isset(&sc->tracer_valid, t->idx)) {
   t4_get_trace_filter(sc, &tp, i, &enabled);
   t->idx = i;
   t->enabled = enabled;
   t->valid = 1;
   memcpy(&t->tp.data[0], &tp.data[0], sizeof(t->tp.data));
   memcpy(&t->tp.mask[0], &tp.mask[0], sizeof(t->tp.mask));
   t->tp.snap_len = tp.snap_len;
   t->tp.min_len = tp.min_len;
   t->tp.skip_ofst = tp.skip_ofst;
   t->tp.skip_len = tp.skip_len;
   t->tp.invert = tp.invert;


   if (tp.port < 4)
    t->tp.port = sc->chan_map[tp.port];
   else if (tp.port < 8)
    t->tp.port = sc->chan_map[tp.port - 4] + 4;
   else
    t->tp.port = tp.port;

   goto done;
  }
 }

 t->idx = 0xff;
 t->enabled = 0;
 t->valid = 0;
done:
 end_synchronized_op(sc, LOCK_HELD);

 return (rc);
}
