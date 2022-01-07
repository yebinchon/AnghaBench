
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct taskqgroup {int tqg_lock; } ;


 int _taskqgroup_adjust (struct taskqgroup*,int,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

int
taskqgroup_adjust(struct taskqgroup *qgroup, int cnt, int stride)
{
 int error;

 mtx_lock(&qgroup->tqg_lock);
 error = _taskqgroup_adjust(qgroup, cnt, stride);
 mtx_unlock(&qgroup->tqg_lock);

 return (error);
}
