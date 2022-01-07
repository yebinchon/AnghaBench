
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int CPL_ABORT_RPL_RSS ;
 int CPL_ACT_OPEN_RPL ;
 int CPL_COOKIE_FILTER ;
 int CPL_COOKIE_HASHFILTER ;
 int CPL_L2T_WRITE_RPL ;
 int CPL_SET_TCB_RPL ;
 int CPL_SMT_WRITE_RPL ;
 int CPL_T5_TRACE_PKT ;
 int CPL_TRACE_PKT ;
 int EBUSY ;


 int SLIST_EMPTY (int *) ;
 int SLIST_INIT (int *) ;
 int callout_init (int *,int) ;
 int do_l2t_write_rpl ;
 int do_smt_write_rpl ;
 int fatal_callout ;
 int hz ;
 int mlu ;
 int pause (char*,int) ;
 int sx_destroy (int *) ;
 int sx_init (int *,char*) ;
 int sx_slock (int *) ;
 int sx_sunlock (int *) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;
 int t4_clip_modload () ;
 int t4_clip_modunload () ;
 int t4_del_hashfilter_rpl ;
 int t4_filter_rpl ;
 int t4_hashfilter_ao_rpl ;
 int t4_hashfilter_tcb_rpl ;
 int t4_list ;
 int t4_list_lock ;
 int t4_register_cpl_handler (int ,int ) ;
 int t4_register_shared_cpl_handler (int ,int ,int ) ;
 int t4_sge_extfree_refs () ;
 int t4_sge_modload () ;
 int t4_sge_modunload () ;
 int t4_trace_pkt ;
 int t4_tracer_modload () ;
 int t4_tracer_modunload () ;
 int t4_uld_list ;
 int t4_uld_list_lock ;
 int t5_trace_pkt ;
 int tweak_tunables () ;
 int uprintf (char*,int ) ;

__attribute__((used)) static int
mod_event(module_t mod, int cmd, void *arg)
{
 int rc = 0;
 static int loaded = 0;

 switch (cmd) {
 case 129:
  sx_xlock(&mlu);
  if (loaded++ == 0) {
   t4_sge_modload();
   t4_register_shared_cpl_handler(CPL_SET_TCB_RPL,
       t4_filter_rpl, CPL_COOKIE_FILTER);
   t4_register_shared_cpl_handler(CPL_L2T_WRITE_RPL,
       do_l2t_write_rpl, CPL_COOKIE_FILTER);
   t4_register_shared_cpl_handler(CPL_ACT_OPEN_RPL,
       t4_hashfilter_ao_rpl, CPL_COOKIE_HASHFILTER);
   t4_register_shared_cpl_handler(CPL_SET_TCB_RPL,
       t4_hashfilter_tcb_rpl, CPL_COOKIE_HASHFILTER);
   t4_register_shared_cpl_handler(CPL_ABORT_RPL_RSS,
       t4_del_hashfilter_rpl, CPL_COOKIE_HASHFILTER);
   t4_register_cpl_handler(CPL_TRACE_PKT, t4_trace_pkt);
   t4_register_cpl_handler(CPL_T5_TRACE_PKT, t5_trace_pkt);
   t4_register_cpl_handler(CPL_SMT_WRITE_RPL,
       do_smt_write_rpl);
   sx_init(&t4_list_lock, "T4/T5 adapters");
   SLIST_INIT(&t4_list);
   callout_init(&fatal_callout, 1);







   t4_tracer_modload();
   tweak_tunables();
  }
  sx_xunlock(&mlu);
  break;

 case 128:
  sx_xlock(&mlu);
  if (--loaded == 0) {
   int tries;

   sx_slock(&t4_list_lock);
   if (!SLIST_EMPTY(&t4_list)) {
    rc = EBUSY;
    sx_sunlock(&t4_list_lock);
    goto done_unload;
   }
   tries = 0;
   while (tries++ < 5 && t4_sge_extfree_refs() != 0) {
    uprintf("%ju clusters with custom free routine "
        "still is use.\n", t4_sge_extfree_refs());
    pause("t4unload", 2 * hz);
   }



   sx_sunlock(&t4_list_lock);

   if (t4_sge_extfree_refs() == 0) {
    t4_tracer_modunload();






    sx_destroy(&t4_list_lock);
    t4_sge_modunload();
    loaded = 0;
   } else {
    rc = EBUSY;
    loaded++;
   }
  }
done_unload:
  sx_xunlock(&mlu);
  break;
 }

 return (rc);
}
