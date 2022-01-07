
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct stat {float st_size; int st_mode; } ;
typedef int buf ;
typedef int FILE ;


 scalar_t__ S_ISREG (int ) ;
 int cwarn (char*,char const*) ;
 int eval ;
 scalar_t__ fclose (int *) ;
 scalar_t__ ferror (int *) ;
 int * fopen (char const*,char*) ;
 int force ;
 int fprintf (int ,char*,...) ;
 size_t fread (int *,int,int,int *) ;
 size_t fwrite (int *,int,size_t,int *) ;
 int permission (char const*) ;
 int setfile (char const*,struct stat*) ;
 scalar_t__ stat (char const*,struct stat*) ;
 int stderr ;
 scalar_t__ unlink (char const*) ;
 scalar_t__ verbose ;
 int * zopen (char const*,char*,int) ;

__attribute__((used)) static void
compress(const char *in, const char *out, int bits)
{
 size_t nr;
 struct stat isb, sb;
 FILE *ifp, *ofp;
 int exists, isreg, oreg;
 u_char buf[1024];

 exists = !stat(out, &sb);
 if (!force && exists && S_ISREG(sb.st_mode) && !permission(out))
  return;
 isreg = oreg = !exists || S_ISREG(sb.st_mode);

 ifp = ofp = ((void*)0);
 if ((ifp = fopen(in, "r")) == ((void*)0)) {
  cwarn("%s", in);
  return;
 }
 if (stat(in, &isb)) {
  cwarn("%s", in);
  goto err;
 }
 if (!S_ISREG(isb.st_mode))
  isreg = 0;

 if ((ofp = zopen(out, "w", bits)) == ((void*)0)) {
  cwarn("%s", out);
  goto err;
 }
 while ((nr = fread(buf, 1, sizeof(buf), ifp)) != 0)
  if (fwrite(buf, 1, nr, ofp) != nr) {
   cwarn("%s", out);
   goto err;
  }

 if (ferror(ifp) || fclose(ifp)) {
  cwarn("%s", in);
  goto err;
 }
 ifp = ((void*)0);

 if (fclose(ofp)) {
  cwarn("%s", out);
  goto err;
 }
 ofp = ((void*)0);

 if (isreg) {
  if (stat(out, &sb)) {
   cwarn("%s", out);
   goto err;
  }

  if (!force && sb.st_size >= isb.st_size) {
   if (verbose)
  (void)fprintf(stderr, "%s: file would grow; left unmodified\n",
      in);
   eval = 2;
   if (unlink(out))
    cwarn("%s", out);
   goto err;
  }

  setfile(out, &isb);

  if (unlink(in))
   cwarn("%s", in);

  if (verbose) {
   (void)fprintf(stderr, "%s: ", out);
   if (isb.st_size > sb.st_size)
    (void)fprintf(stderr, "%.0f%% compression\n",
        ((float)sb.st_size / isb.st_size) * 100.0);
   else
    (void)fprintf(stderr, "%.0f%% expansion\n",
        ((float)isb.st_size / sb.st_size) * 100.0);
  }
 }
 return;

err: if (ofp) {
  if (oreg)
   (void)unlink(out);
  (void)fclose(ofp);
 }
 if (ifp)
  (void)fclose(ifp);
}
