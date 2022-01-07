
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_qflush; } ;
typedef scalar_t__ if_t ;
typedef int if_qflush_fn_t ;



void if_setqflushfn(if_t ifp, if_qflush_fn_t flush_fn)
{
 ((struct ifnet *)ifp)->if_qflush = flush_fn;

}
