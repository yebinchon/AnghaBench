
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct attr_check {scalar_t__ nr; } ;



void attr_check_reset(struct attr_check *check)
{
 check->nr = 0;
}
