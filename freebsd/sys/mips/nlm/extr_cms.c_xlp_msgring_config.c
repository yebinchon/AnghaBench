
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;


 int CMS_DEFAULT_CREDIT ;
 int INTR_TYPE_NET ;
 int IRQ_MSGRING ;
 int MTX_SPIN ;
 int XLP_MAX_CORES ;
 unsigned int XLP_MAX_THREADS ;
 int cpu_establish_hardintr (char*,int ,int *,int *,int ,int ,void**) ;
 int create_msgring_thread (int ) ;
 int msgmap_lock ;
 int msgring_process_fast_intr ;
 int mtx_init (int *,char*,int *,int ) ;
 scalar_t__ nlm_is_xlp8xx_ax () ;
 int polled ;
 int printf (char*,int ) ;
 int xlp_cms_credit_setup (int ) ;
 unsigned int xlp_hw_thread_mask ;
 unsigned int xlp_msg_thread_mask ;
 int xlp_msg_threads_per_core ;
 int xlp_threads_per_core ;

__attribute__((used)) static void
xlp_msgring_config(void *arg)
{
 void *cookie;
 unsigned int thrmask, mask;
 int i;


 if (nlm_is_xlp8xx_ax())
  polled = 1;


 if (polled)
  xlp_msg_threads_per_core -= 1;

 mtx_init(&msgmap_lock, "msgring", ((void*)0), MTX_SPIN);
 if (xlp_threads_per_core < xlp_msg_threads_per_core)
  xlp_msg_threads_per_core = xlp_threads_per_core;
 thrmask = ((1 << xlp_msg_threads_per_core) - 1);
 mask = 0;
 for (i = 0; i < XLP_MAX_CORES; i++) {
  mask <<= XLP_MAX_THREADS;
  mask |= thrmask;
 }
 xlp_msg_thread_mask = xlp_hw_thread_mask & mask;




 xlp_cms_credit_setup(CMS_DEFAULT_CREDIT);
 create_msgring_thread(0);
 cpu_establish_hardintr("msgring", msgring_process_fast_intr, ((void*)0),
     ((void*)0), IRQ_MSGRING, INTR_TYPE_NET, &cookie);
}
