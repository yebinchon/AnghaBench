
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct passwd {int dummy; } ;
struct TYPE_7__ {scalar_t__ (* get ) (TYPE_2__*,TYPE_1__*,TYPE_1__*,int ) ;} ;
struct TYPE_6__ {char* data; int size; } ;
typedef int PERSON ;
typedef TYPE_1__ DBT ;


 TYPE_2__* db ;
 struct passwd* getpwnam (char*) ;
 scalar_t__ hide (struct passwd*) ;
 int memmove (int **,char*,int) ;
 int strlen (char*) ;
 scalar_t__ stub1 (TYPE_2__*,TYPE_1__*,TYPE_1__*,int ) ;

PERSON *
find_person(char *name)
{
 struct passwd *pw;

 DBT data, key;
 PERSON *p;

 if (!db)
  return(((void*)0));

 if ((pw = getpwnam(name)) && hide(pw))
  return(((void*)0));

 key.data = name;
 key.size = strlen(name);

 if ((*db->get)(db, &key, &data, 0))
  return (((void*)0));
 memmove(&p, data.data, sizeof p);
 return (p);
}
