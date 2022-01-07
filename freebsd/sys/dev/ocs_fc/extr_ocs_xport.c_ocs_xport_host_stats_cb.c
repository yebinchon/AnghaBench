
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int receive_frame_count; int transmit_frame_count; int receive_kbyte_count; int transmit_kbyte_count; } ;
struct TYPE_7__ {int semaphore; TYPE_1__ host_stats; } ;
struct TYPE_8__ {TYPE_2__ stats; } ;
typedef TYPE_3__ ocs_xport_stats_t ;
struct TYPE_9__ {int counter; } ;
typedef TYPE_4__ ocs_hw_host_stat_counts_t ;
typedef int int32_t ;


 size_t OCS_HW_HOST_STAT_RX_FRAME_COUNT ;
 size_t OCS_HW_HOST_STAT_RX_KBYTE_COUNT ;
 size_t OCS_HW_HOST_STAT_TX_FRAME_COUNT ;
 size_t OCS_HW_HOST_STAT_TX_KBYTE_COUNT ;
 int ocs_sem_v (int *) ;

__attribute__((used)) static void
ocs_xport_host_stats_cb(int32_t status, uint32_t num_counters, ocs_hw_host_stat_counts_t *counters, void *arg)
{
        ocs_xport_stats_t *result = arg;

        result->stats.host_stats.transmit_kbyte_count = counters[OCS_HW_HOST_STAT_TX_KBYTE_COUNT].counter;
        result->stats.host_stats.receive_kbyte_count = counters[OCS_HW_HOST_STAT_RX_KBYTE_COUNT].counter;
        result->stats.host_stats.transmit_frame_count = counters[OCS_HW_HOST_STAT_TX_FRAME_COUNT].counter;
        result->stats.host_stats.receive_frame_count = counters[OCS_HW_HOST_STAT_RX_FRAME_COUNT].counter;

        ocs_sem_v(&(result->stats.semaphore));
}
