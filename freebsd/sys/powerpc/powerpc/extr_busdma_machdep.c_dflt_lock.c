
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bus_dma_lock_op_t ;


 int panic (char*) ;

__attribute__((used)) static void
dflt_lock(void *arg, bus_dma_lock_op_t op)
{
 panic("driver error: busdma dflt_lock called");
}
