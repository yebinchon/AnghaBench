
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct fileusage {int fu_id; int fu_name; struct fileusage* fu_next; } ;


 int FUHASH ;
 int bcopy (char*,int ,int) ;
 scalar_t__ calloc (int,int) ;
 int errx (int,char*) ;
 struct fileusage*** fuhead ;
 int* highid ;
 struct fileusage* lookup (int,int) ;
 int sprintf (int ,char*,int) ;
 int strlen (char*) ;

struct fileusage *
addid(u_long id, int type, char *name)
{
 struct fileusage *fup, **fhp;
 int len;

 if ((fup = lookup(id, type)))
  return (fup);
 if (name)
  len = strlen(name);
 else
  len = 10;
 if ((fup = (struct fileusage *)calloc(1, sizeof(*fup) + len)) == ((void*)0))
  errx(1, "out of memory for fileusage structures");
 fhp = &fuhead[type][id & (FUHASH - 1)];
 fup->fu_next = *fhp;
 *fhp = fup;
 fup->fu_id = id;
 if (id > highid[type])
  highid[type] = id;
 if (name) {
  bcopy(name, fup->fu_name, len + 1);
 } else {
  sprintf(fup->fu_name, "%lu", id);
 }
 return (fup);
}
