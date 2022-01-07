
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int path_zoneinfo_file ;
typedef int FILE ;


 int DITEM_FAILURE ;
 int MAXPATHLEN ;
 int errx (int,char*,char*,char const*) ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 int fprintf (int *,char*,char const*) ;
 int install_zoneinfo_file (char*) ;
 int path_db ;
 char* path_zoneinfo ;
 scalar_t__ reallydoit ;
 scalar_t__ snprintf (char*,int,char*,char*,char const*) ;

__attribute__((used)) static int
install_zoneinfo(const char *zoneinfo)
{
 int rv;
 FILE *f;
 char path_zoneinfo_file[MAXPATHLEN];

 if ((size_t)snprintf(path_zoneinfo_file, sizeof(path_zoneinfo_file),
     "%s/%s", path_zoneinfo, zoneinfo) >= sizeof(path_zoneinfo_file))
  errx(1, "%s/%s name too long", path_zoneinfo, zoneinfo);
 rv = install_zoneinfo_file(path_zoneinfo_file);


 if (reallydoit && (rv & DITEM_FAILURE) == 0) {
  if ((f = fopen(path_db, "w")) != ((void*)0)) {
   fprintf(f, "%s\n", zoneinfo);
   fclose(f);
  }
 }

 return (rv);
}
