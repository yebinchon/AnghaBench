
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct timeval {int dummy; } ;
struct tcp_hpts_entry {int p_mtx; int p_nxt_slot; } ;
struct inpcb {int dummy; } ;
struct hpts_diag {int dummy; } ;
typedef int int32_t ;


 int INP_WLOCK_ASSERT (struct inpcb*) ;
 int microuptime (struct timeval*) ;
 int mtx_unlock (int *) ;
 int tcp_hpts_insert_locked (struct tcp_hpts_entry*,struct inpcb*,int ,int ,struct hpts_diag*,struct timeval*) ;
 struct tcp_hpts_entry* tcp_hpts_lock (struct inpcb*) ;

uint32_t
tcp_hpts_insert_diag(struct inpcb *inp, uint32_t slot, int32_t line, struct hpts_diag *diag)
{
 struct tcp_hpts_entry *hpts;
 uint32_t slot_on;
 struct timeval tv;






 INP_WLOCK_ASSERT(inp);
 hpts = tcp_hpts_lock(inp);
 microuptime(&tv);
 tcp_hpts_insert_locked(hpts, inp, slot, line, diag, &tv);
 slot_on = hpts->p_nxt_slot;
 mtx_unlock(&hpts->p_mtx);
 return (slot_on);
}
