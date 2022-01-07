
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quotause {int fsname; int dqblk; int qf; struct quotause* next; } ;


 int quota_write_limits (int ,int *,long) ;
 int warn (char*,int ) ;

void
putprivs(long id, struct quotause *quplist)
{
 struct quotause *qup;

 for (qup = quplist; qup; qup = qup->next)
  if (quota_write_limits(qup->qf, &qup->dqblk, id) == -1)
   warn("%s", qup->fsname);
}
