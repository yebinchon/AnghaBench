
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
labelsctp(void)
{
 wmove(wnd, 0, 0); wclrtoeol(wnd);


 mvwprintw(wnd, 0, 13, "SCTP Associations"); mvwprintw(wnd, 0, 51, "SCTP Packets");;
 mvwprintw(wnd, 1, 13, "associations initiated"); mvwprintw(wnd, 1, 51, "packets sent");;
 mvwprintw(wnd, 2, 13, "associations accepted"); mvwprintw(wnd, 2, 51, "packets received");;
 mvwprintw(wnd, 3, 13, "associations restarted"); mvwprintw(wnd, 3, 51, "- out of the blue");;
 mvwprintw(wnd, 4, 13, "associations terminated"); mvwprintw(wnd, 4, 51, "- bad vtag");;
 mvwprintw(wnd, 5, 13, "associations aborted"); mvwprintw(wnd, 5, 51, "- bad crc32c");;

 mvwprintw(wnd, 7, 13, "SCTP Timers"); mvwprintw(wnd, 7, 51, "SCTP Chunks");;
 mvwprintw(wnd, 8, 13, "init timeouts"); mvwprintw(wnd, 8, 51, "control chunks sent");;
 mvwprintw(wnd, 9, 13, "cookie timeouts"); mvwprintw(wnd, 9, 51, "data chunks sent");;
 mvwprintw(wnd, 10, 13, "data timeouts"); mvwprintw(wnd, 10, 51, "- ordered");;
 mvwprintw(wnd, 11, 13, "delayed sack timeouts"); mvwprintw(wnd, 11, 51, "- unordered");;
 mvwprintw(wnd, 12, 13, "shutdown timeouts"); mvwprintw(wnd, 12, 51, "control chunks received");;
 mvwprintw(wnd, 13, 13, "shutdown-ack timeouts"); mvwprintw(wnd, 13, 51, "data chunks received");;
 mvwprintw(wnd, 14, 13, "shutdown guard timeouts"); mvwprintw(wnd, 14, 51, "- ordered");;
 mvwprintw(wnd, 15, 13, "heartbeat timeouts"); mvwprintw(wnd, 15, 51, "- unordered");;
 mvwprintw(wnd, 16, 13, "path MTU timeouts");
 mvwprintw(wnd, 17, 13, "autoclose timeouts"); mvwprintw(wnd, 17, 51, "SCTP User Messages");;
 mvwprintw(wnd, 18, 13, "asconf timeouts"); mvwprintw(wnd, 18, 51, "fragmented");;
 mvwprintw(wnd, 19, 13, "stream reset timeouts"); mvwprintw(wnd, 19, 51, "reassembled");;


}
