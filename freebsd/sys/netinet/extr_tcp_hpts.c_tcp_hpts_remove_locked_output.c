
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_hpts_entry {int * p_hptss; } ;
struct inpcb {size_t inp_hptsslot; scalar_t__ inp_in_hpts; } ;
typedef int int32_t ;


 int hpts_sane_pace_remove (struct tcp_hpts_entry*,struct inpcb*,int *,int) ;
 int tcp_remove_hpts_ref (struct inpcb*,struct tcp_hpts_entry*,int ) ;

__attribute__((used)) static void
tcp_hpts_remove_locked_output(struct tcp_hpts_entry *hpts, struct inpcb *inp, int32_t flags, int32_t line)
{
 if (inp->inp_in_hpts) {
  hpts_sane_pace_remove(hpts, inp, &hpts->p_hptss[inp->inp_hptsslot], 1);
  tcp_remove_hpts_ref(inp, hpts, line);
 }
}
