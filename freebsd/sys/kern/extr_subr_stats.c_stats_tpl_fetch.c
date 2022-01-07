
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statsblob_tpl {int dummy; } ;


 int ENOENT ;
 int TPL_LIST_WLOCK () ;
 int TPL_LIST_WUNLOCK () ;
 scalar_t__ ntpl ;
 struct statsblob_tpl** tpllist ;

int
stats_tpl_fetch(int tpl_id, struct statsblob_tpl **tpl)
{
 int error;

 error = 0;

 TPL_LIST_WLOCK();
 if (tpl_id < 0 || tpl_id >= (int)ntpl) {
  error = ENOENT;
 } else {
  *tpl = tpllist[tpl_id];

 }
 TPL_LIST_WUNLOCK();

 return (error);
}
