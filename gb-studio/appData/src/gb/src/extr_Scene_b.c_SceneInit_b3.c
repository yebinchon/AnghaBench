
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int y; int x; } ;
struct TYPE_7__ {int y; int x; } ;
struct TYPE_10__ {TYPE_1__ dir; TYPE_2__ pos; int moving; int enabled; } ;
struct TYPE_9__ {int y; int x; } ;
struct TYPE_8__ {int y; int x; } ;


 int FALSE ;
 int TRUE ;
 TYPE_5__* actors ;
 TYPE_4__ map_next_dir ;
 TYPE_3__ map_next_pos ;

void SceneInit_b3()
{

  actors[0].enabled = TRUE;
  actors[0].moving = FALSE;
  actors[0].pos.x = map_next_pos.x;
  actors[0].pos.y = map_next_pos.y;
  actors[0].dir.x = map_next_dir.x;
  actors[0].dir.y = map_next_dir.y;
}
