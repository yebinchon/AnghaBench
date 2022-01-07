
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int L (int,char*) ;
 int R (int,char*) ;
 int wclrtoeol (int ) ;
 int wmove (int ,int ,int ) ;
 int wnd ;

void
labeltcp(void)
{
 wmove(wnd, 0, 0); wclrtoeol(wnd);


 mvwprintw(wnd, 0, 13, "TCP Connections"); mvwprintw(wnd, 0, 51, "TCP Packets");;
 mvwprintw(wnd, 1, 13, "connections initiated"); mvwprintw(wnd, 1, 51, "total packets sent");;
 mvwprintw(wnd, 2, 13, "connections accepted"); mvwprintw(wnd, 2, 51, "- data");;
 mvwprintw(wnd, 3, 13, "connections established"); mvwprintw(wnd, 3, 51, "- data (retransmit by dupack)");;
 mvwprintw(wnd, 4, 13, "connections dropped"); mvwprintw(wnd, 4, 51, "- data (retransmit by sack)");;
 mvwprintw(wnd, 5, 13, "- in embryonic state"); mvwprintw(wnd, 5, 51, "- ack-only");;
 mvwprintw(wnd, 6, 13, "- on retransmit timeout"); mvwprintw(wnd, 6, 51, "- window probes");;
 mvwprintw(wnd, 7, 13, "- by keepalive"); mvwprintw(wnd, 7, 51, "- window updates");;
 mvwprintw(wnd, 8, 13, "- from listen queue"); mvwprintw(wnd, 8, 51, "- urgent data only");;
      mvwprintw(wnd, 9, 51, "- control");;
      mvwprintw(wnd, 10, 51, "- resends by PMTU discovery");;
 mvwprintw(wnd, 11, 13, "TCP Timers"); mvwprintw(wnd, 11, 51, "total packets received");;
 mvwprintw(wnd, 12, 13, "potential rtt updates"); mvwprintw(wnd, 12, 51, "- in sequence");;
 mvwprintw(wnd, 13, 13, "- successful"); mvwprintw(wnd, 13, 51, "- completely duplicate");;
 mvwprintw(wnd, 14, 13, "delayed acks sent"); mvwprintw(wnd, 14, 51, "- with some duplicate data");;
 mvwprintw(wnd, 15, 13, "retransmit timeouts"); mvwprintw(wnd, 15, 51, "- out-of-order");;
 mvwprintw(wnd, 16, 13, "persist timeouts"); mvwprintw(wnd, 16, 51, "- duplicate acks");;
 mvwprintw(wnd, 17, 13, "keepalive probes"); mvwprintw(wnd, 17, 51, "- acks");;
 mvwprintw(wnd, 18, 13, "- timeouts"); mvwprintw(wnd, 18, 51, "- window probes");;
      mvwprintw(wnd, 19, 51, "- window updates");;
      mvwprintw(wnd, 20, 51, "- bad checksum");;


}
