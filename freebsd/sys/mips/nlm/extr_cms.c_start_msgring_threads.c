
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int XLP_MAX_CORES ;
 int XLP_MAX_THREADS ;
 int create_msgring_thread (int) ;
 int xlp_msg_thread_mask ;

__attribute__((used)) static void
start_msgring_threads(void *arg)
{
 int hwt;

 for (hwt = 1; hwt < XLP_MAX_CORES * XLP_MAX_THREADS; hwt++) {
  if ((xlp_msg_thread_mask & (1 << hwt)) == 0)
   continue;
  create_msgring_thread(hwt);
 }
}
