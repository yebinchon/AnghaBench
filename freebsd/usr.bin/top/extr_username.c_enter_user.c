
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int uid; int name; } ;


 scalar_t__ MAXLOGNAME ;
 int fprintf (int ,char*,int,char*,int) ;
 TYPE_1__* hash_table ;
 int hashit (int) ;
 int is_empty_hash (int) ;
 int stderr ;
 int strncpy (int ,char*,scalar_t__) ;

int
enter_user(int uid, char name[], bool wecare)
{
    int hashindex;





    hashindex = hashit(uid);

    if (!is_empty_hash(hashindex))
    {
 if (!wecare)
     return (0);
 if (hash_table[hashindex].uid == uid)
     return(hashindex);
    }


    hash_table[hashindex].uid = uid;
    (void) strncpy(hash_table[hashindex].name, name, MAXLOGNAME - 1);
    return(hashindex);
}
