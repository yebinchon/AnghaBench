
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buf; } ;
struct TYPE_4__ {TYPE_1__ string; } ;
struct source {TYPE_2__ u; } ;


 int free (int ) ;

__attribute__((used)) static void
src_freestring(struct source *src)
{

 free(src->u.string.buf);
}
