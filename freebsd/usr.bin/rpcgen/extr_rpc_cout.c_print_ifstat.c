
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int relation ;






 int f_print (int ,char*,...) ;
 int fout ;
 int print_ifarg (char const*) ;
 int print_ifclose (int,int) ;
 int print_ifopen (int,char const*) ;
 int print_ifsizeof (int,char const*,char const*) ;
 int streq (char const*,char*) ;

__attribute__((used)) static void
print_ifstat(int indent, const char *prefix, const char *type, relation rel,
    const char *amax, const char *objname, const char *name)
{
 const char *alt = ((void*)0);
 int brace = 0;

 switch (rel) {
 case 129:
  brace = 1;
  f_print(fout, "\t{\n");
  f_print(fout, "\t%s **pp = %s;\n", type, objname);
  print_ifopen(indent, "pointer");
  print_ifarg("(char **)");
  f_print(fout, "pp");
  print_ifsizeof(0, prefix, type);
  break;
 case 128:
  if (streq(type, "string")) {
   alt = "string";
  } else if (streq(type, "opaque")) {
   alt = "opaque";
  }
  if (alt) {
   print_ifopen(indent, alt);
   print_ifarg(objname);
  } else {
   print_ifopen(indent, "vector");
   print_ifarg("(char *)");
   f_print(fout, "%s", objname);
  }
  print_ifarg(amax);
  if (!alt) {
   print_ifsizeof(indent + 1, prefix, type);
  }
  break;
 case 130:
  if (streq(type, "string")) {
   alt = "string";
  } else if (streq(type, "opaque")) {
   alt = "bytes";
  }
  if (streq(type, "string")) {
   print_ifopen(indent, alt);
   print_ifarg(objname);
  } else {
   if (alt) {
    print_ifopen(indent, alt);
   } else {
    print_ifopen(indent, "array");
   }
   print_ifarg("(char **)");
   if (*objname == '&') {
    f_print(fout, "%s.%s_val, (u_int *) %s.%s_len",
     objname, name, objname, name);
   } else {
    f_print(fout,
     "&%s->%s_val, (u_int *) &%s->%s_len",
     objname, name, objname, name);
   }
  }
  print_ifarg(amax);
  if (!alt) {
   print_ifsizeof(indent + 1, prefix, type);
  }
  break;
 case 131:
  print_ifopen(indent, type);
  print_ifarg(objname);
  break;
 }
 print_ifclose(indent, brace);
}
