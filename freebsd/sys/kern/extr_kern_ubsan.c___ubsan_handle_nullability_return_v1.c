
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CSourceLocation {int dummy; } ;
typedef struct CSourceLocation CNonNullReturnData ;


 int ASSERT (struct CSourceLocation*) ;
 int HandleNonnullReturn (int,struct CSourceLocation*,struct CSourceLocation*) ;

void
__ubsan_handle_nullability_return_v1(struct CNonNullReturnData *pData, struct CSourceLocation *pLocationPointer)
{

 ASSERT(pData);
 ASSERT(pLocationPointer);

 HandleNonnullReturn(0, pData, pLocationPointer);
}
