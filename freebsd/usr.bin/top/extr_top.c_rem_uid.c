
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* uid; } ;


 size_t TOP_MAX_UIDS ;
 TYPE_1__ ps ;

__attribute__((used)) static void
rem_uid(int uid)
{
    size_t i = 0;
    size_t where = TOP_MAX_UIDS;


    for (; i < TOP_MAX_UIDS; ++i)
    {
 if (ps.uid[i] == -1)
     break;
 if (ps.uid[i] == uid)
     where = i;
    }


    if (where != TOP_MAX_UIDS)
    {
 ps.uid[where] = ps.uid[i-1];
 ps.uid[i-1] = -1;
    }
}
