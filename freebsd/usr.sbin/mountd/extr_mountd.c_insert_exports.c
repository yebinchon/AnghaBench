
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct exportlisthead {int dummy; } ;
struct exportlist {int ex_fsdir; int ex_fs; } ;


 size_t EXPHASH (int *) ;
 int LOGDEBUG (char*,int ,size_t) ;
 int SLIST_INSERT_HEAD (struct exportlisthead*,struct exportlist*,int ) ;
 int entries ;

__attribute__((used)) static void
insert_exports(struct exportlist *ep, struct exportlisthead *exhp)
{
 uint32_t i;

 i = EXPHASH(&ep->ex_fs);
 LOGDEBUG("fs=%s hash=%i", ep->ex_fsdir, i);
 SLIST_INSERT_HEAD(&exhp[i], ep, entries);
}
