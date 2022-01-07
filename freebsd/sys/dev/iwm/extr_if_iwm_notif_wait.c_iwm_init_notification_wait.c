
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct iwm_notification_wait {int (* fn ) (struct iwm_softc*,struct iwm_rx_packet*,void*) ;int n_cmds; scalar_t__ aborted; scalar_t__ triggered; int cmds; void* fn_data; } ;
struct iwm_notif_wait_data {int list; } ;


 int IWM_MAX_NOTIF_CMDS ;
 int IWM_WAIT_LOCK (struct iwm_notif_wait_data*) ;
 int IWM_WAIT_UNLOCK (struct iwm_notif_wait_data*) ;
 int KASSERT (int,char*) ;
 int STAILQ_INSERT_TAIL (int *,struct iwm_notification_wait*,int ) ;
 int entry ;
 int memcpy (int ,int const*,int) ;

void
iwm_init_notification_wait(struct iwm_notif_wait_data *notif_data,
    struct iwm_notification_wait *wait_entry, const uint16_t *cmds, int n_cmds,
    int (*fn)(struct iwm_softc *sc, struct iwm_rx_packet *pkt, void *data),
    void *fn_data)
{
 KASSERT(n_cmds <= IWM_MAX_NOTIF_CMDS,
     ("n_cmds %d is too large", n_cmds));
 wait_entry->fn = fn;
 wait_entry->fn_data = fn_data;
 wait_entry->n_cmds = n_cmds;
 memcpy(wait_entry->cmds, cmds, n_cmds * sizeof(uint16_t));
 wait_entry->triggered = 0;
 wait_entry->aborted = 0;

 IWM_WAIT_LOCK(notif_data);
 STAILQ_INSERT_TAIL(&notif_data->list, wait_entry, entry);
 IWM_WAIT_UNLOCK(notif_data);
}
