
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CNonNullArgData {int dummy; } ;


 int ASSERT (struct CNonNullArgData*) ;
 int HandleNonnullArg (int,struct CNonNullArgData*) ;

void
__ubsan_handle_nullability_arg_abort(struct CNonNullArgData *pData)
{

 ASSERT(pData);

 HandleNonnullArg(1, pData);
}
