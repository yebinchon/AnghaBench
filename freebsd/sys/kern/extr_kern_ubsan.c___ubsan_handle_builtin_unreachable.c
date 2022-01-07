
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CUnreachableData {int dummy; } ;


 int ASSERT (struct CUnreachableData*) ;
 int HandleBuiltinUnreachable (int,struct CUnreachableData*) ;

void
__ubsan_handle_builtin_unreachable(struct CUnreachableData *pData)
{

 ASSERT(pData);

 HandleBuiltinUnreachable(1, pData);
}
