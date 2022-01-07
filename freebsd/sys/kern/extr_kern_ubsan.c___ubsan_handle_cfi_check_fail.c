
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CCFICheckFailData {int dummy; } ;


 int ASSERT (struct CCFICheckFailData*) ;
 int HandleCFIBadType (int,struct CCFICheckFailData*,unsigned long,int ,int ,int ,int ) ;

void
__ubsan_handle_cfi_check_fail(struct CCFICheckFailData *pData, unsigned long ulValue, unsigned long ulValidVtable)
{

 ASSERT(pData);

 HandleCFIBadType(0, pData, ulValue, 0, 0, 0, 0);
}
