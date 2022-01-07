
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int altered ;
 char* astrcat (char const*,char*) ;
 char* backext ;
 int err (int,char*,char const*,...) ;
 void* fbinmode (int ) ;
 char const* filename ;
 void* fopen (char const*,char*) ;
 int free (char*) ;
 int * input ;
 char const* linefile ;
 int * mktempmode (char*,int ) ;
 int * output ;
 int process () ;
 scalar_t__ remove (char*) ;
 scalar_t__ rename (char const*,char*) ;
 scalar_t__ replace (char*,char const*) ;
 scalar_t__ stat (char const*,struct stat*) ;
 int stdin ;
 int stdout ;
 scalar_t__ strcmp (char const*,char*) ;
 char* tempname ;
 int warn (char*,char*) ;

__attribute__((used)) static void
processinout(const char *ifn, const char *ofn)
{
 struct stat st;

 if (ifn == ((void*)0) || strcmp(ifn, "-") == 0) {
  filename = "[stdin]";
  linefile = ((void*)0);
  input = fbinmode(stdin);
 } else {
  filename = ifn;
  linefile = ifn;
  input = fopen(ifn, "rb");
  if (input == ((void*)0))
   err(2, "can't open %s", ifn);
 }
 if (strcmp(ofn, "-") == 0) {
  output = fbinmode(stdout);
  process();
  return;
 }
 if (stat(ofn, &st) < 0) {
  output = fopen(ofn, "wb");
  if (output == ((void*)0))
   err(2, "can't create %s", ofn);
  process();
  return;
 }

 tempname = astrcat(ofn, ".XXXXXX");
 output = mktempmode(tempname, st.st_mode);
 if (output == ((void*)0))
  err(2, "can't create %s", tempname);

 process();

 if (backext != ((void*)0)) {
  char *backname = astrcat(ofn, backext);
  if (rename(ofn, backname) < 0)
   err(2, "can't rename \"%s\" to \"%s\"", ofn, backname);
  free(backname);
 }

 if (!altered && backext == ((void*)0)) {
  if (remove(tempname) < 0)
   warn("can't remove \"%s\"", tempname);
 } else if (replace(tempname, ofn) < 0)
  err(2, "can't rename \"%s\" to \"%s\"", tempname, ofn);
 free(tempname);
 tempname = ((void*)0);
}
