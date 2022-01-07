
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CUnreachableData {int dummy; } ;


 int ASSERT (struct CUnreachableData*) ;
 int HandleMissingReturn (int,struct CUnreachableData*) ;

void
__ubsan_handle_missing_return(struct CUnreachableData *pData)
{

 ASSERT(pData);

 HandleMissingReturn(1, pData);
}
