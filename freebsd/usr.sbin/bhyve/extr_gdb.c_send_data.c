
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {size_t len; } ;


 TYPE_1__ cur_resp ;
 int io_buffer_grow (TYPE_1__*,size_t) ;
 int io_buffer_tail (TYPE_1__*) ;
 int memcpy (int ,int const*,size_t) ;

__attribute__((used)) static void
send_data(const uint8_t *data, size_t len)
{

 io_buffer_grow(&cur_resp, len);
 memcpy(io_buffer_tail(&cur_resp), data, len);
 cur_resp.len += len;
}
