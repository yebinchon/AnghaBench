
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intsrc {TYPE_1__* is_pic; } ;
struct TYPE_2__ {int (* pic_disable_source ) (struct intsrc*,int ) ;} ;


 int PIC_EOI ;
 int stub1 (struct intsrc*,int ) ;

__attribute__((used)) static void
intr_disable_src(void *arg)
{
 struct intsrc *isrc;

 isrc = arg;
 isrc->is_pic->pic_disable_source(isrc, PIC_EOI);
}
