
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char*,char*,char*) ;
 int ofp ;
 char* strcasestr (char const*,char*) ;
 int strcpy (char*,char*) ;
 int strncat (char*,char*,int) ;

__attribute__((used)) static void
dump_pci_id(const char *s)
{
 char *p;
 char vidstr[7], didstr[7], subsysstr[14];

 p = strcasestr(s, "VEN_");
 if (p == ((void*)0))
  return;
 p += 4;
 strcpy(vidstr, "0x");
 strncat(vidstr, p, 4);
 p = strcasestr(s, "DEV_");
 if (p == ((void*)0))
  return;
 p += 4;
 strcpy(didstr, "0x");
 strncat(didstr, p, 4);
 if (p == ((void*)0))
  return;
 p = strcasestr(s, "SUBSYS_");
 if (p == ((void*)0))
  strcpy(subsysstr, "0x00000000");
 else {
  p += 7;
  strcpy(subsysstr, "0x");
  strncat(subsysstr, p, 8);
 }

 fprintf(ofp, "\t\\\n\t{ %s, %s, %s, ", vidstr, didstr, subsysstr);
 return;
}
