
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CInvalidValueData {int dummy; } ;


 int ASSERT (struct CInvalidValueData*) ;
 int HandleLoadInvalidValue (int,struct CInvalidValueData*,unsigned long) ;

void
__ubsan_handle_load_invalid_value(struct CInvalidValueData *pData, unsigned long ulValue)
{

 ASSERT(pData);

 HandleLoadInvalidValue(0, pData, ulValue);
}
