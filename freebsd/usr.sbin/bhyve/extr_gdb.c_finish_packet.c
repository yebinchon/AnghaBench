
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ len; } ;


 int cur_csum ;
 TYPE_1__ cur_resp ;
 int debug (char*,int,int ) ;
 int io_buffer_head (TYPE_1__*) ;
 int send_byte (int ) ;
 int send_char (char) ;

__attribute__((used)) static void
finish_packet(void)
{

 send_char('#');
 send_byte(cur_csum);
 debug("-> %.*s\n", (int)cur_resp.len, io_buffer_head(&cur_resp));
}
