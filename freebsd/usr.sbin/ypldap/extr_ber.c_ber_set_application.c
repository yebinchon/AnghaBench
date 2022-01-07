
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ber {unsigned long (* br_application ) (struct ber_element*) ;} ;



void
ber_set_application(struct ber *b, unsigned long (*cb)(struct ber_element *))
{
 b->br_application = cb;
}
