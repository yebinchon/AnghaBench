
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; int st_size; } ;
typedef int lnk ;
typedef int dst ;


 scalar_t__ EXDEV ;
 int EX_OSERR ;
 int LN_ABSOLUTE ;
 int LN_HARD ;
 int LN_MIXED ;
 int LN_RELATIVE ;
 int MAXPATHLEN ;
 scalar_t__ S_ISREG (int) ;
 char* basename (char*) ;
 char* digest_file (char const*) ;
 char* dirname (char*) ;
 int do_link (char const*,char const*,struct stat const*) ;
 int do_symlink (char const*,char const*,struct stat const*) ;
 int dolink ;
 int err (int ,char*,char const*,...) ;
 scalar_t__ errno ;
 int errx (int,char*) ;
 char* fflags ;
 int free (char*) ;
 char const* group ;
 int haveopt_f ;
 int haveopt_g ;
 int haveopt_m ;
 int haveopt_o ;
 int metadata_log (char const*,char*,int *,char const*,char*,int ) ;
 int mode ;
 char const* owner ;
 int * realpath (char const*,char*) ;
 scalar_t__ stat (char const*,struct stat*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (char*,char const*) ;
 char* strdup (char const*) ;
 int strlcat (char*,char*,int) ;

__attribute__((used)) static void
makelink(const char *from_name, const char *to_name,
    const struct stat *target_sb)
{
 char src[MAXPATHLEN], dst[MAXPATHLEN], lnk[MAXPATHLEN];
 struct stat to_sb;


 if (dolink & (LN_HARD|LN_MIXED)) {
  if (do_link(from_name, to_name, target_sb) == -1) {
   if ((dolink & LN_HARD) || errno != EXDEV)
    err(EX_OSERR, "link %s -> %s", from_name, to_name);
  } else {
   if (stat(to_name, &to_sb))
    err(EX_OSERR, "%s: stat", to_name);
   if (S_ISREG(to_sb.st_mode)) {




    int omode;
    const char *oowner, *ogroup;
    char *offlags;
    char *dres;





    omode = mode;
    if (!haveopt_m)
     mode = (to_sb.st_mode & 0777);
    oowner = owner;
    if (!haveopt_o)
     owner = ((void*)0);
    ogroup = group;
    if (!haveopt_g)
     group = ((void*)0);
    offlags = fflags;
    if (!haveopt_f)
     fflags = ((void*)0);
    dres = digest_file(from_name);
    metadata_log(to_name, "file", ((void*)0), ((void*)0),
        dres, to_sb.st_size);
    free(dres);
    mode = omode;
    owner = oowner;
    group = ogroup;
    fflags = offlags;
   }
   return;
  }
 }


 if (dolink & LN_ABSOLUTE) {

  if (realpath(from_name, src) == ((void*)0))
   err(EX_OSERR, "%s: realpath", from_name);
  do_symlink(src, to_name, target_sb);

  metadata_log(to_name, "link", ((void*)0), src, ((void*)0), 0);
  return;
 }

 if (dolink & LN_RELATIVE) {
  char *to_name_copy, *cp, *d, *ld, *ls, *s;

  if (*from_name != '/') {

   do_symlink(from_name, to_name, target_sb);

   metadata_log(to_name, "link", ((void*)0), from_name, ((void*)0), 0);
   return;
  }


  if (realpath(from_name, src) == ((void*)0))
   err(EX_OSERR, "%s: realpath", from_name);





  to_name_copy = strdup(to_name);
  if (to_name_copy == ((void*)0))
   err(EX_OSERR, "%s: strdup", to_name);
  cp = dirname(to_name_copy);
  if (realpath(cp, dst) == ((void*)0))
   err(EX_OSERR, "%s: realpath", cp);

  if (strcmp(dst, "/") != 0) {
   if (strlcat(dst, "/", sizeof(dst)) > sizeof(dst))
    errx(1, "resolved pathname too long");
  }
  strcpy(to_name_copy, to_name);
  cp = basename(to_name_copy);
  if (strlcat(dst, cp, sizeof(dst)) > sizeof(dst))
   errx(1, "resolved pathname too long");
  free(to_name_copy);


  ls = ld = ((void*)0);
  for (s = src, d = dst; *s == *d; ls = s, ld = d, s++, d++)
   continue;
  if ((ls != ((void*)0) && *ls != '/') || (ld != ((void*)0) && *ld != '/'))
   s--, d--;
  while (*s != '/')
   s--, d--;


  for (++d, lnk[0] = '\0'; *d; d++)
   if (*d == '/')
    (void)strlcat(lnk, "../", sizeof(lnk));

  (void)strlcat(lnk, ++s, sizeof(lnk));

  do_symlink(lnk, to_name, target_sb);

  metadata_log(to_name, "link", ((void*)0), lnk, ((void*)0), 0);
  return;
 }





 do_symlink(from_name, to_name, target_sb);

 metadata_log(to_name, "link", ((void*)0), from_name, ((void*)0), 0);
}
