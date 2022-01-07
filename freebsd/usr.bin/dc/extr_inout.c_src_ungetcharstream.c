
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int stream; } ;
struct source {TYPE_1__ u; int lastchar; } ;


 int ungetc (int ,int ) ;

__attribute__((used)) static void
src_ungetcharstream(struct source *src)
{

 ungetc(src->lastchar, src->u.stream);
}
