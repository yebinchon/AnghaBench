
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
typedef int newid ;


 int DISK_IDENT_SIZE ;
 int bzero (char*,size_t) ;
 scalar_t__ isprint (char) ;
 int snprintf (char*,int,char*,unsigned char) ;
 int strlcat (char*,char*,int) ;
 int strlcpy (char*,char*,size_t) ;

__attribute__((used)) static void
g_disk_ident_adjust(char *ident, size_t size)
{
 char *p, tmp[4], newid[DISK_IDENT_SIZE];

 newid[0] = '\0';
 for (p = ident; *p != '\0'; p++) {
  if (isprint(*p)) {
   tmp[0] = *p;
   tmp[1] = '\0';
  } else {
   snprintf(tmp, sizeof(tmp), "x%02hhx",
       *(unsigned char *)p);
  }
  if (strlcat(newid, tmp, sizeof(newid)) >= sizeof(newid))
   break;
 }
 bzero(ident, size);
 strlcpy(ident, newid, size);
}
