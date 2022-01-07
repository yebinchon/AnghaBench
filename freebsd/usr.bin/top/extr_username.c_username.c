
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int uid; char* name; } ;


 int get_user (int) ;
 TYPE_1__* hash_table ;
 int hashit (int) ;
 scalar_t__ is_empty_hash (int) ;

char *
username(int uid)
{
    int hashindex;

    hashindex = hashit(uid);
    if (is_empty_hash(hashindex) || (hash_table[hashindex].uid != uid))
    {

 hashindex = get_user(uid);
    }
    return(hash_table[hashindex].name);
}
