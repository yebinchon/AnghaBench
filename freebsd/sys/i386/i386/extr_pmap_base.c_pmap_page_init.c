
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* vm_page_t ;
struct TYPE_4__ {int pat_mode; int pv_list; } ;
struct TYPE_5__ {TYPE_1__ md; } ;


 int PAT_WRITE_BACK ;
 int TAILQ_INIT (int *) ;

void
pmap_page_init(vm_page_t m)
{

 TAILQ_INIT(&m->md.pv_list);
 m->md.pat_mode = PAT_WRITE_BACK;
}
