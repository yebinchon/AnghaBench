
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parsed; } ;
struct blob {TYPE_1__ object; } ;



int parse_blob_buffer(struct blob *item, void *buffer, unsigned long size)
{
 item->object.parsed = 1;
 return 0;
}
