
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
labelip(void)
{
 wmove(wnd, 0, 0); wclrtoeol(wnd);


 mvwprintw(wnd, 0, 10, "IP Input"); mvwprintw(wnd, 0, 45, "IP Output");;
 mvwprintw(wnd, 1, 10, "total packets received"); mvwprintw(wnd, 1, 45, "total packets sent");;
 mvwprintw(wnd, 2, 10, "- with bad checksums"); mvwprintw(wnd, 2, 45, "- generated locally");;
 mvwprintw(wnd, 3, 10, "- too short for header"); mvwprintw(wnd, 3, 45, "- output drops");;
 mvwprintw(wnd, 4, 10, "- too short for data"); mvwprintw(wnd, 4, 45, "output fragments generated");;
 mvwprintw(wnd, 5, 10, "- with invalid hlen"); mvwprintw(wnd, 5, 45, "- fragmentation failed");;
 mvwprintw(wnd, 6, 10, "- with invalid length"); mvwprintw(wnd, 6, 45, "destinations unreachable");;
 mvwprintw(wnd, 7, 10, "- with invalid version"); mvwprintw(wnd, 7, 45, "packets output via raw IP");;
 mvwprintw(wnd, 8, 10, "- jumbograms");
 mvwprintw(wnd, 9, 10, "total fragments received"); mvwprintw(wnd, 9, 45, "UDP Statistics");;
 mvwprintw(wnd, 10, 10, "- fragments dropped"); mvwprintw(wnd, 10, 45, "total input packets");;
 mvwprintw(wnd, 11, 10, "- fragments timed out"); mvwprintw(wnd, 11, 45, "- too short for header");;
 mvwprintw(wnd, 12, 10, "- packets reassembled ok"); mvwprintw(wnd, 12, 45, "- invalid checksum");;
 mvwprintw(wnd, 13, 10, "packets forwarded"); mvwprintw(wnd, 13, 45, "- no checksum");;
 mvwprintw(wnd, 14, 10, "- unreachable dests"); mvwprintw(wnd, 14, 45, "- invalid length");;
 mvwprintw(wnd, 15, 10, "- redirects generated"); mvwprintw(wnd, 15, 45, "- no socket for dest port");;
 mvwprintw(wnd, 16, 10, "option errors"); mvwprintw(wnd, 16, 45, "- no socket for broadcast");;
 mvwprintw(wnd, 17, 10, "unwanted multicasts"); mvwprintw(wnd, 17, 45, "- socket buffer full");;
 mvwprintw(wnd, 18, 10, "delivered to upper layer"); mvwprintw(wnd, 18, 45, "total output packets");;


}
