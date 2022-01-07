
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct sysctl_netisr_workstream {scalar_t__ snws_wsid; int snws_cpu; } ;
struct sysctl_netisr_work {scalar_t__ snw_wsid; int snw_handled; int snw_queued; int snw_qdrops; int snw_hybrid_dispatched; int snw_dispatched; int snw_watermark; int snw_len; int snw_proto; } ;


 int netisr_proto2name (int ) ;
 struct sysctl_netisr_work* work_array ;
 size_t work_array_len ;
 int xo_close_instance (char*) ;
 int xo_close_list (char*) ;
 int xo_emit (char*,...) ;
 int xo_open_instance (char*) ;
 int xo_open_list (char*) ;

__attribute__((used)) static void
netisr_print_workstream(struct sysctl_netisr_workstream *snwsp)
{
 struct sysctl_netisr_work *snwp;
 u_int i;

 xo_open_list("work");
 for (i = 0; i < work_array_len; i++) {
  snwp = &work_array[i];
  if (snwp->snw_wsid != snwsp->snws_wsid)
   continue;
  xo_open_instance("work");
  xo_emit("{t:workstream/%4u} ", snwsp->snws_wsid);
  xo_emit("{t:cpu/%3u} ", snwsp->snws_cpu);
  xo_emit("{P:  }");
  xo_emit("{t:name/%-6s}", netisr_proto2name(snwp->snw_proto));
  xo_emit(" {t:length/%5u}", snwp->snw_len);
  xo_emit(" {t:watermark/%5u}", snwp->snw_watermark);
  xo_emit(" {t:dispatched/%8ju}", snwp->snw_dispatched);
  xo_emit(" {t:hybrid-dispatched/%8ju}",
      snwp->snw_hybrid_dispatched);
  xo_emit(" {t:queue-drops/%8ju}", snwp->snw_qdrops);
  xo_emit(" {t:queued/%8ju}", snwp->snw_queued);
  xo_emit(" {t:handled/%8ju}", snwp->snw_handled);
  xo_emit("\n");
  xo_close_instance("work");
 }
 xo_close_list("work");
}
