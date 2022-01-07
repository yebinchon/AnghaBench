
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct query_state {scalar_t__ uid; scalar_t__ euid; scalar_t__ gid; scalar_t__ egid; } ;



int
check_query_eids(struct query_state *qstate)
{

 return ((qstate->uid != qstate->euid) || (qstate->gid != qstate->egid) ? -1 : 0);
}
