
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ dtrace_id_t ;
struct TYPE_2__ {scalar_t__ nr_v4_id_done; scalar_t__ nr_v3_id_done; scalar_t__ nr_v2_id_done; } ;


 int NFSV41_NPROCS ;
 TYPE_1__* dtnfsclient_rpcs ;

__attribute__((used)) static int
dtnfs234_isdoneprobe(dtrace_id_t id)
{
 int i;

 for (i = 0; i < NFSV41_NPROCS + 1; i++) {
  if (dtnfsclient_rpcs[i].nr_v4_id_done == id ||
      dtnfsclient_rpcs[i].nr_v3_id_done == id ||
      dtnfsclient_rpcs[i].nr_v2_id_done == id)
   return (1);
 }
 return (0);
}
