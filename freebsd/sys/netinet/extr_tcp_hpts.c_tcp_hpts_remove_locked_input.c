
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_hpts_entry {int dummy; } ;
struct inpcb {scalar_t__ inp_in_input; } ;
typedef int int32_t ;


 int HPTS_MTX_ASSERT (struct tcp_hpts_entry*) ;
 int hpts_sane_input_remove (struct tcp_hpts_entry*,struct inpcb*,int) ;
 int tcp_remove_hpts_ref (struct inpcb*,struct tcp_hpts_entry*,int ) ;

__attribute__((used)) static void
tcp_hpts_remove_locked_input(struct tcp_hpts_entry *hpts, struct inpcb *inp, int32_t flags, int32_t line)
{
 HPTS_MTX_ASSERT(hpts);
 if (inp->inp_in_input) {
  hpts_sane_input_remove(hpts, inp, 1);
  tcp_remove_hpts_ref(inp, hpts, line);
 }
}
