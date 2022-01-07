
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int yp_mapname ;
typedef int yp_mapdir ;
struct ypmaplist {int * map; struct ypmaplist* next; } ;
struct stat {int st_mode; } ;
struct dirent {char const* d_name; } ;
typedef int DIR ;


 int MAXPATHLEN ;
 int S_ISREG (int ) ;
 int closedir (int *) ;
 scalar_t__ debug ;
 int errno ;
 int free (struct ypmaplist*) ;
 scalar_t__ malloc (int) ;
 int * opendir (char*) ;
 struct dirent* readdir (int *) ;
 int snprintf (char*,int,char*,char*,char const*) ;
 scalar_t__ stat (char*,struct stat*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int * strdup (char*) ;
 int * strerror (int ) ;
 char* yp_dir ;
 int yp_error (char*,...) ;
 int yp_maplist_free (struct ypmaplist*) ;

__attribute__((used)) static struct ypmaplist *
yp_maplist_create(const char *domain)
{
 char yp_mapdir[MAXPATHLEN + 2];
 char yp_mapname[MAXPATHLEN + 2];
 struct ypmaplist *cur = ((void*)0);
 struct ypmaplist *yp_maplist = ((void*)0);
 DIR *dird;
 struct dirent *dirp;
 struct stat statbuf;

 snprintf(yp_mapdir, sizeof(yp_mapdir), "%s/%s", yp_dir, domain);

 if ((dird = opendir(yp_mapdir)) == ((void*)0)) {
  yp_error("opendir(%s) failed: %s", yp_mapdir, strerror(errno));
  return(((void*)0));
 }

 while ((dirp = readdir(dird)) != ((void*)0)) {
  if (strcmp(dirp->d_name, ".") && strcmp(dirp->d_name, "..")) {
   snprintf(yp_mapname, sizeof(yp_mapname), "%s/%s",
       yp_mapdir,dirp->d_name);
   if (stat(yp_mapname, &statbuf) < 0 ||
      !S_ISREG(statbuf.st_mode))
    continue;
   if ((cur = (struct ypmaplist *)
    malloc(sizeof(struct ypmaplist))) == ((void*)0)) {
    yp_error("malloc() failed");
    closedir(dird);
    yp_maplist_free(yp_maplist);
    return(((void*)0));
   }
   if ((cur->map = strdup(dirp->d_name)) == ((void*)0)) {
    yp_error("strdup() failed: %s",strerror(errno));
    closedir(dird);
    yp_maplist_free(yp_maplist);
    free(cur);
    return(((void*)0));
   }
   cur->next = yp_maplist;
   yp_maplist = cur;
   if (debug)
    yp_error("map: %s", yp_maplist->map);
  }

 }
 closedir(dird);
 return(yp_maplist);
}
