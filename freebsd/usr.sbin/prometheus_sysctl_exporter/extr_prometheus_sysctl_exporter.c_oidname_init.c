
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ len; } ;
struct oidname {TYPE_1__ oid; } ;



__attribute__((used)) static void
oidname_init(struct oidname *on)
{

 on->oid.len = 0;
}
