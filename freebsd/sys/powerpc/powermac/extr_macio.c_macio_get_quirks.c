
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macio_quirk_entry {int mq_quirks; int * mq_name; } ;


 struct macio_quirk_entry* macio_quirks ;
 scalar_t__ strcmp (char const*,int *) ;

__attribute__((used)) static int
macio_get_quirks(const char *name)
{
        struct macio_quirk_entry *mqe;

        for (mqe = macio_quirks; mqe->mq_name != ((void*)0); mqe++)
                if (strcmp(name, mqe->mq_name) == 0)
                        return (mqe->mq_quirks);
        return (0);
}
