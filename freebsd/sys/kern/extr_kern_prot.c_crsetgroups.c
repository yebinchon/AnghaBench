
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
typedef int gid_t ;


 int crextend (struct ucred*,int) ;
 int crsetgroups_locked (struct ucred*,int,int *) ;
 int ngroups_max ;

void
crsetgroups(struct ucred *cr, int ngrp, gid_t *groups)
{

 if (ngrp > ngroups_max + 1)
  ngrp = ngroups_max + 1;

 crextend(cr, ngrp);
 crsetgroups_locked(cr, ngrp, groups);
}
