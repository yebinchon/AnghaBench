
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CInvalidBuiltinData {int dummy; } ;


 int ASSERT (struct CInvalidBuiltinData*) ;
 int HandleInvalidBuiltin (int,struct CInvalidBuiltinData*) ;

void
__ubsan_handle_invalid_builtin(struct CInvalidBuiltinData *pData)
{

 ASSERT(pData);

 HandleInvalidBuiltin(1, pData);
}
