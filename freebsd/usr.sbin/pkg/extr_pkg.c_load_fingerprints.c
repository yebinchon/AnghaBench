
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fingerprint_list {int dummy; } ;
struct fingerprint {int dummy; } ;
struct dirent {int d_name; } ;
typedef int DIR ;


 int STAILQ_INIT (struct fingerprint_list*) ;
 int STAILQ_INSERT_TAIL (struct fingerprint_list*,struct fingerprint*,int ) ;
 struct fingerprint_list* calloc (int,int) ;
 int closedir (int *) ;
 int free (struct fingerprint_list*) ;
 struct fingerprint* load_fingerprint (char const*,int ) ;
 int next ;
 int * opendir (char const*) ;
 struct dirent* readdir (int *) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static struct fingerprint_list *
load_fingerprints(const char *path, int *count)
{
 DIR *d;
 struct dirent *ent;
 struct fingerprint *finger;
 struct fingerprint_list *fingerprints;

 *count = 0;

 fingerprints = calloc(1, sizeof(struct fingerprint_list));
 if (fingerprints == ((void*)0))
  return (((void*)0));
 STAILQ_INIT(fingerprints);

 if ((d = opendir(path)) == ((void*)0)) {
  free(fingerprints);

  return (((void*)0));
 }

 while ((ent = readdir(d))) {
  if (strcmp(ent->d_name, ".") == 0 ||
      strcmp(ent->d_name, "..") == 0)
   continue;
  finger = load_fingerprint(path, ent->d_name);
  if (finger != ((void*)0)) {
   STAILQ_INSERT_TAIL(fingerprints, finger, next);
   ++(*count);
  }
 }

 closedir(d);

 return (fingerprints);
}
