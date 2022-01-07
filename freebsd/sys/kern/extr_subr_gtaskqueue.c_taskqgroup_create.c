
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct taskqgroup {char const* tqg_name; TYPE_1__* tqg_queue; int tqg_lock; } ;
struct TYPE_2__ {int tgc_tasks; } ;


 int LIST_INIT (int *) ;
 int MTX_DEF ;
 int M_GTASKQUEUE ;
 int M_WAITOK ;
 int M_ZERO ;
 struct taskqgroup* malloc (int,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;

struct taskqgroup *
taskqgroup_create(const char *name)
{
 struct taskqgroup *qgroup;

 qgroup = malloc(sizeof(*qgroup), M_GTASKQUEUE, M_WAITOK | M_ZERO);
 mtx_init(&qgroup->tqg_lock, "taskqgroup", ((void*)0), MTX_DEF);
 qgroup->tqg_name = name;
 LIST_INIT(&qgroup->tqg_queue[0].tgc_tasks);

 return (qgroup);
}
