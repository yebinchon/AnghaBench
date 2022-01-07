
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_4__ {TYPE_1__* mb; } ;
struct TYPE_3__ {int tplname; } ;


 int ENOENT ;
 int EOVERFLOW ;
 int TPL_LIST_RLOCK () ;
 int TPL_LIST_RUNLOCK () ;
 size_t ntpl ;
 int strlcpy (char*,int ,size_t) ;
 size_t strlen (int ) ;
 TYPE_2__** tpllist ;

int
stats_tpl_id2name(uint32_t tpl_id, char *buf, size_t len)
{
 int error;

 error = 0;

 TPL_LIST_RLOCK();
 if (tpl_id < ntpl) {
  if (buf != ((void*)0) && len > strlen(tpllist[tpl_id]->mb->tplname))
   strlcpy(buf, tpllist[tpl_id]->mb->tplname, len);
  else
   error = EOVERFLOW;
 } else
  error = ENOENT;
 TPL_LIST_RUNLOCK();

 return (error);
}
