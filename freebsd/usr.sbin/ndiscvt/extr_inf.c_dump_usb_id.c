
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char*,char*) ;
 int ofp ;
 char* strcasestr (char const*,char*) ;
 int strcpy (char*,char*) ;
 int strncat (char*,char*,int) ;

__attribute__((used)) static void
dump_usb_id(const char *s)
{
 char *p;
 char vidstr[7], pidstr[7];

 p = strcasestr(s, "VID_");
 if (p == ((void*)0))
  return;
 p += 4;
 strcpy(vidstr, "0x");
 strncat(vidstr, p, 4);
 p = strcasestr(s, "PID_");
 if (p == ((void*)0))
  return;
 p += 4;
 strcpy(pidstr, "0x");
 strncat(pidstr, p, 4);
 if (p == ((void*)0))
  return;

 fprintf(ofp, "\t\\\n\t{ %s, %s, ", vidstr, pidstr);
}
