
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intsrc {int is_index; TYPE_1__* is_event; } ;
struct TYPE_2__ {int ie_fullname; } ;


 int intrcnt_setname (int ,int ) ;

__attribute__((used)) static void
intrcnt_updatename(struct intsrc *is)
{

 intrcnt_setname(is->is_event->ie_fullname, is->is_index);
}
