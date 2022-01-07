
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pos; } ;
struct TYPE_4__ {TYPE_1__ string; } ;
struct source {char lastchar; TYPE_2__ u; } ;



__attribute__((used)) static void
src_ungetcharstring(struct source *src)
{

 if (src->u.string.pos > 0) {
  if (src->lastchar != '\0')
   --src->u.string.pos;
 }
}
