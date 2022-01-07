
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CFunctionTypeMismatchData {int dummy; } ;


 int ASSERT (struct CFunctionTypeMismatchData*) ;
 int HandleFunctionTypeMismatch (int,struct CFunctionTypeMismatchData*,unsigned long) ;

void
__ubsan_handle_function_type_mismatch(struct CFunctionTypeMismatchData *pData, unsigned long ulFunction)
{

 ASSERT(pData);

 HandleFunctionTypeMismatch(0, pData, ulFunction);
}
