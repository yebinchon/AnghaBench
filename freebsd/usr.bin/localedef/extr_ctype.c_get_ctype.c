
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef void* wchar_t ;
struct TYPE_7__ {void* wc; } ;
typedef TYPE_1__ ctype_node_t ;


 TYPE_1__* RB_FIND (int ,int *,TYPE_1__*) ;
 int RB_INSERT (int ,int *,TYPE_1__*) ;
 TYPE_1__* calloc (int,int) ;
 int ctypes ;
 int errf (char*) ;

__attribute__((used)) static ctype_node_t *
get_ctype(wchar_t wc)
{
 ctype_node_t srch;
 ctype_node_t *ctn;

 srch.wc = wc;
 if ((ctn = RB_FIND(ctypes, &ctypes, &srch)) == ((void*)0)) {
  if ((ctn = calloc(1, sizeof (*ctn))) == ((void*)0)) {
   errf("out of memory");
   return (((void*)0));
  }
  ctn->wc = wc;

  RB_INSERT(ctypes, &ctypes, ctn);
 }
 return (ctn);
}
