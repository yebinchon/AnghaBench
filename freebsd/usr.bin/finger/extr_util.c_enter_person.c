
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct passwd {TYPE_1__** pw_name; } ;
struct TYPE_19__ {int (* get ) (TYPE_4__*,TYPE_2__*,TYPE_2__*,int ) ;int (* put ) (TYPE_4__*,TYPE_2__*,TYPE_2__*,int ) ;} ;
struct TYPE_18__ {int size; TYPE_1__** data; } ;
struct TYPE_17__ {int * whead; } ;
typedef TYPE_1__ PERSON ;
typedef TYPE_2__ DBT ;


 int DB_BTREE ;
 int O_RDWR ;
 TYPE_4__* db ;
 TYPE_4__* dbopen (int *,int ,int ,int ,int *) ;
 int entries ;
 int err (int,char*) ;
 int memmove (TYPE_1__**,TYPE_1__**,int) ;
 TYPE_1__* palloc () ;
 int strlen (TYPE_1__**) ;
 int stub1 (TYPE_4__*,TYPE_2__*,TYPE_2__*,int ) ;
 int stub2 (TYPE_4__*,TYPE_2__*,TYPE_2__*,int ) ;
 int userinfo (TYPE_1__*,struct passwd*) ;

PERSON *
enter_person(struct passwd *pw)
{
 DBT data, key;
 PERSON *pn;

 if (db == ((void*)0) &&
     (db = dbopen(((void*)0), O_RDWR, 0, DB_BTREE, ((void*)0))) == ((void*)0))
  err(1, ((void*)0));

 key.data = pw->pw_name;
 key.size = strlen(pw->pw_name);

 switch ((*db->get)(db, &key, &data, 0)) {
 case 0:
  memmove(&pn, data.data, sizeof pn);
  return (pn);
 default:
 case -1:
  err(1, "db get");

 case 1:
  ++entries;
  pn = palloc();
  userinfo(pn, pw);
  pn->whead = ((void*)0);

  data.size = sizeof(PERSON *);
  data.data = &pn;
  if ((*db->put)(db, &key, &data, 0))
   err(1, "db put");
  return (pn);
 }
}
