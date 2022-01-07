
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int crc_error_count; int invalid_transmission_word_error_count; int primitive_sequence_error_count; int loss_of_sync_error_count; int link_failure_error_count; } ;
struct TYPE_7__ {int semaphore; TYPE_1__ link_stats; } ;
struct TYPE_8__ {TYPE_2__ stats; } ;
typedef TYPE_3__ ocs_xport_stats_t ;
struct TYPE_9__ {int counter; } ;
typedef TYPE_4__ ocs_hw_link_stat_counts_t ;
typedef int int32_t ;


 size_t OCS_HW_LINK_STAT_CRC_COUNT ;
 size_t OCS_HW_LINK_STAT_INVALID_XMIT_WORD_COUNT ;
 size_t OCS_HW_LINK_STAT_LINK_FAILURE_COUNT ;
 size_t OCS_HW_LINK_STAT_LOSS_OF_SYNC_COUNT ;
 size_t OCS_HW_LINK_STAT_PRIMITIVE_SEQ_COUNT ;
 int ocs_sem_v (int *) ;

__attribute__((used)) static void
ocs_xport_link_stats_cb(int32_t status, uint32_t num_counters, ocs_hw_link_stat_counts_t *counters, void *arg)
{
        ocs_xport_stats_t *result = arg;

        result->stats.link_stats.link_failure_error_count = counters[OCS_HW_LINK_STAT_LINK_FAILURE_COUNT].counter;
        result->stats.link_stats.loss_of_sync_error_count = counters[OCS_HW_LINK_STAT_LOSS_OF_SYNC_COUNT].counter;
        result->stats.link_stats.primitive_sequence_error_count = counters[OCS_HW_LINK_STAT_PRIMITIVE_SEQ_COUNT].counter;
        result->stats.link_stats.invalid_transmission_word_error_count = counters[OCS_HW_LINK_STAT_INVALID_XMIT_WORD_COUNT].counter;
        result->stats.link_stats.crc_error_count = counters[OCS_HW_LINK_STAT_CRC_COUNT].counter;

        ocs_sem_v(&(result->stats.semaphore));
}
