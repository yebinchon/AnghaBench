
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_vendor_info {int id; int devs; int * desc; } ;
struct pci_device_info {int id; int devs; int * desc; } ;
typedef int buf ;
typedef int FILE ;


 int TAILQ_INIT (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct pci_vendor_info*,int ) ;
 char* _PATH_LPCIVDB ;
 char* _PATH_PCIVDB ;
 int fclose (int *) ;
 scalar_t__ ferror (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 int free (struct pci_vendor_info*) ;
 char* getenv (char*) ;
 scalar_t__ isspace (char) ;
 int link ;
 struct pci_vendor_info* malloc (int) ;
 int pci_vendors ;
 int sscanf (char*,char*,int*,char*) ;
 char* strchr (char*,char) ;
 void* strdup (char*) ;
 int strlen (char*) ;
 int warn (char*) ;
 int warnx (char*) ;

__attribute__((used)) static int
load_vendors(void)
{
 const char *dbf;
 FILE *db;
 struct pci_vendor_info *cv;
 struct pci_device_info *cd;
 char buf[1024], str[1024];
 char *ch;
 int id, error;




 TAILQ_INIT(&pci_vendors);
 if ((dbf = getenv("PCICONF_VENDOR_DATABASE")) == ((void*)0))
  dbf = _PATH_LPCIVDB;
 if ((db = fopen(dbf, "r")) == ((void*)0)) {
  dbf = _PATH_PCIVDB;
  if ((db = fopen(dbf, "r")) == ((void*)0))
   return(1);
 }
 cv = ((void*)0);
 cd = ((void*)0);
 error = 0;




 for (;;) {
  if (fgets(buf, sizeof(buf), db) == ((void*)0))
   break;

  if ((ch = strchr(buf, '#')) != ((void*)0))
   *ch = '\0';
  ch = strchr(buf, '\0') - 1;
  while (ch > buf && isspace(*ch))
   *ch-- = '\0';
  if (ch <= buf)
   continue;


  if (buf[0] == '\t' && buf[1] == '\t')
   continue;


  if (buf[0] != '\t' && sscanf(buf, "%04x %[^\n]", &id, str) == 2) {
   if ((id == 0) || (strlen(str) < 1))
    continue;
   if ((cv = malloc(sizeof(struct pci_vendor_info))) == ((void*)0)) {
    warn("allocating vendor entry");
    error = 1;
    break;
   }
   if ((cv->desc = strdup(str)) == ((void*)0)) {
    free(cv);
    warn("allocating vendor description");
    error = 1;
    break;
   }
   cv->id = id;
   TAILQ_INIT(&cv->devs);
   TAILQ_INSERT_TAIL(&pci_vendors, cv, link);
   continue;
  }


  if (buf[0] == '\t' && sscanf(buf + 1, "%04x %[^\n]", &id, str) == 2) {
   if ((id == 0) || (strlen(str) < 1))
    continue;
   if (cv == ((void*)0)) {
    warnx("device entry with no vendor!");
    continue;
   }
   if ((cd = malloc(sizeof(struct pci_device_info))) == ((void*)0)) {
    warn("allocating device entry");
    error = 1;
    break;
   }
   if ((cd->desc = strdup(str)) == ((void*)0)) {
    free(cd);
    warn("allocating device description");
    error = 1;
    break;
   }
   cd->id = id;
   TAILQ_INSERT_TAIL(&cv->devs, cd, link);
   continue;
  }


 }
 if (ferror(db))
  error = 1;
 fclose(db);

 return(error);
}
