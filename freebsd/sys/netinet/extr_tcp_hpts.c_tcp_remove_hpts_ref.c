
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_hpts_entry {int dummy; } ;
struct inpcb {int inp_flags2; } ;
typedef int int32_t ;


 int INP_FREED ;
 scalar_t__ __in_pcbrele_wlocked (struct inpcb*,int) ;
 scalar_t__ in_pcbrele_wlocked (struct inpcb*) ;
 int panic (char*,struct inpcb*) ;

__attribute__((used)) static void
tcp_remove_hpts_ref(struct inpcb *inp, struct tcp_hpts_entry *hpts, int line)
{
 int32_t add_freed;

 if (inp->inp_flags2 & INP_FREED) {




  add_freed = 1;
  inp->inp_flags2 &= ~INP_FREED;
 } else {
  add_freed = 0;
 }

 if (in_pcbrele_wlocked(inp)) {





  panic("inpcb:%p release ret 1",
      inp);
 }
 if (add_freed) {
  inp->inp_flags2 |= INP_FREED;
 }
}
