
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int B (int,char*) ;
 int L (int,char*) ;
 int R (int,char*) ;
 int wclrtoeol (int ) ;
 int wmove (int ,int ,int ) ;
 int wnd ;

void
labelicmp(void)
{
 wmove(wnd, 0, 0); wclrtoeol(wnd);


 mvwprintw(wnd, 0, 10, "ICMP Input"); mvwprintw(wnd, 0, 45, "ICMP Output");;
 mvwprintw(wnd, 1, 10, "total messages"); mvwprintw(wnd, 1, 45, "total messages");;
 mvwprintw(wnd, 2, 10, "with bad code"); mvwprintw(wnd, 2, 45, "errors generated");;
 mvwprintw(wnd, 3, 10, "with bad length"); mvwprintw(wnd, 3, 45, "suppressed - original too short");;
 mvwprintw(wnd, 4, 10, "with bad checksum"); mvwprintw(wnd, 4, 45, "suppressed - original was ICMP");;
 mvwprintw(wnd, 5, 10, "with insufficient data"); mvwprintw(wnd, 5, 45, "responses sent");;
     mvwprintw(wnd, 6, 45, "suppressed - multicast echo");;
     mvwprintw(wnd, 7, 45, "suppressed - multicast tstamp");;
 mvwprintw(wnd, 9, 10, "Input Histogram"); mvwprintw(wnd, 9, 45, "Output Histogram");;

 mvwprintw(wnd, 10, 10, "echo response"); mvwprintw(wnd, 10, 45, "echo response");;
 mvwprintw(wnd, 11, 10, "echo request"); mvwprintw(wnd, 11, 45, "echo request");;
 mvwprintw(wnd, 12, 10, "destination unreachable"); mvwprintw(wnd, 12, 45, "destination unreachable");;
 mvwprintw(wnd, 13, 10, "redirect"); mvwprintw(wnd, 13, 45, "redirect");;
 mvwprintw(wnd, 14, 10, "time-to-live exceeded"); mvwprintw(wnd, 14, 45, "time-to-live exceeded");;
 mvwprintw(wnd, 15, 10, "parameter problem"); mvwprintw(wnd, 15, 45, "parameter problem");;
 mvwprintw(wnd, 16, 10, "router advertisement"); mvwprintw(wnd, 16, 45, "router solicitation");;



}
