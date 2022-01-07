
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct autofs_mount {int am_mountpoint; TYPE_1__* am_root; } ;
struct TYPE_2__ {int an_cached; } ;


 int AUTOFS_DEBUG (char*,int ) ;

void
autofs_flush(struct autofs_mount *amp)
{





 amp->am_root->an_cached = 0;
 AUTOFS_DEBUG("%s flushed", amp->am_mountpoint);
}
