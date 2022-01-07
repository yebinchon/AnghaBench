
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cur_csum ;
 int send_char (char) ;

__attribute__((used)) static void
start_packet(void)
{

 send_char('$');
 cur_csum = 0;
}
