
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct blame_origin {TYPE_2__* commit; } ;
struct TYPE_3__ {int flags; } ;
struct TYPE_4__ {TYPE_1__ object; } ;


 int MORE_THAN_ONE_PATH ;
 scalar_t__ emit_one_suspect_detail (struct blame_origin*,int) ;
 int write_filename_info (struct blame_origin*) ;

__attribute__((used)) static void emit_porcelain_details(struct blame_origin *suspect, int repeat)
{
 if (emit_one_suspect_detail(suspect, repeat) ||
     (suspect->commit->object.flags & MORE_THAN_ONE_PATH))
  write_filename_info(suspect);
}
