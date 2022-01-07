
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct section {int dummy; } ;
struct reg {char* subkey; } ;


 int dump_defaultinfo (struct section const*,struct reg const*,int) ;
 int dump_paramdesc (struct section const*,struct reg const*) ;
 int dump_typeinfo (struct section const*,struct reg const*) ;
 int fprintf (int ,char*,...) ;
 int ofp ;
 int strlen (char*) ;

__attribute__((used)) static void
dump_paramreg(const struct section *s, const struct reg *r, int devidx)
{
 const char *keyname;

 keyname = r->subkey + strlen("Ndi\\params\\");
 fprintf(ofp, "\n\t{ \"%s\",", keyname);
 dump_paramdesc(s, r);
 dump_typeinfo(s, r);
 fprintf(ofp, "\",");
 dump_defaultinfo(s, r, devidx);

 return;
}
