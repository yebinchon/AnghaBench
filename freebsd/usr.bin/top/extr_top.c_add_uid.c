
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* uid; } ;


 size_t TOP_MAX_UIDS ;
 TYPE_1__ ps ;

__attribute__((used)) static int
add_uid(int uid)
{
    size_t i = 0;


    for (; i < TOP_MAX_UIDS; ++i)
    {
 if (ps.uid[i] == -1 || ps.uid[i] == uid)
 {
     ps.uid[i] = uid;
     break;
 }
    }

    return (i == TOP_MAX_UIDS);
}
