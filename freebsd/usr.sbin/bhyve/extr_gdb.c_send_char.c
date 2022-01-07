
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int len; } ;


 TYPE_1__ cur_resp ;
 int io_buffer_grow (TYPE_1__*,int) ;
 int * io_buffer_tail (TYPE_1__*) ;

__attribute__((used)) static void
send_char(uint8_t data)
{
 io_buffer_grow(&cur_resp, 1);
 *io_buffer_tail(&cur_resp) = data;
 cur_resp.len++;
}
