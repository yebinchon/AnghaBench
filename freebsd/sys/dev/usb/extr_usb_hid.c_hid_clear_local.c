
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ size; scalar_t__ count; } ;
struct hid_item {scalar_t__ set_delimiter; scalar_t__ string_maximum; scalar_t__ string_minimum; scalar_t__ string_index; scalar_t__ designator_maximum; scalar_t__ designator_minimum; scalar_t__ designator_index; scalar_t__ usage_maximum; scalar_t__ usage_minimum; scalar_t__ usage; TYPE_1__ loc; } ;



__attribute__((used)) static void
hid_clear_local(struct hid_item *c)
{

 c->loc.count = 0;
 c->loc.size = 0;
 c->usage = 0;
 c->usage_minimum = 0;
 c->usage_maximum = 0;
 c->designator_index = 0;
 c->designator_minimum = 0;
 c->designator_maximum = 0;
 c->string_index = 0;
 c->string_minimum = 0;
 c->string_maximum = 0;
 c->set_delimiter = 0;
}
