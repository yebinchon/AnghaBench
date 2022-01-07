
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oiddescription {char* description; } ;
struct oid {int len; int id; } ;
typedef int lookup ;


 int CTL_MAXNAME ;
 scalar_t__ ENOENT ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int memcpy (int*,int ,int) ;
 char* strchr (char*,char) ;
 scalar_t__ sysctl (int*,int,char**,size_t*,int ,int ) ;

__attribute__((used)) static bool
oid_get_description(const struct oid *o, struct oiddescription *od)
{
 int lookup[CTL_MAXNAME + 2];
 char *newline;
 size_t odlen;

 lookup[0] = 0;
 lookup[1] = 5;
 memcpy(lookup + 2, o->id, o->len * sizeof(lookup[0]));
 odlen = sizeof(od->description);
 if (sysctl(lookup, 2 + o->len, &od->description, &odlen, 0, 0) != 0) {
  if (errno == ENOENT)
   return (0);
  err(1, "sysctl(oiddescr)");
 }

 newline = strchr(od->description, '\n');
 if (newline != ((void*)0))
  *newline = '\0';

 return (*od->description != '\0');
}
