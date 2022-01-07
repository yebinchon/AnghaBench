
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigacts {int ps_refcnt; } ;



int
sigacts_shared(struct sigacts *ps)
{

 return (ps->ps_refcnt > 1);
}
