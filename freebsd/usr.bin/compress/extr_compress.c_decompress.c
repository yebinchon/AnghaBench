
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct stat {int st_mode; } ;
typedef int buf ;
typedef int FILE ;


 scalar_t__ S_ISREG (int ) ;
 int cwarn (char*,char const*) ;
 scalar_t__ fclose (int *) ;
 scalar_t__ ferror (int *) ;
 int * fopen (char const*,char*) ;
 int force ;
 size_t fread (int *,int,int,int *) ;
 size_t fwrite (int *,int,size_t,int *) ;
 int permission (char const*) ;
 int setfile (char const*,struct stat*) ;
 scalar_t__ stat (char const*,struct stat*) ;
 scalar_t__ unlink (char const*) ;
 int * zopen (char const*,char*,int) ;

__attribute__((used)) static void
decompress(const char *in, const char *out, int bits)
{
 size_t nr;
 struct stat sb;
 FILE *ifp, *ofp;
 int exists, isreg, oreg;
 u_char buf[1024];

 exists = !stat(out, &sb);
 if (!force && exists && S_ISREG(sb.st_mode) && !permission(out))
  return;
 isreg = oreg = !exists || S_ISREG(sb.st_mode);

 ifp = ofp = ((void*)0);
 if ((ifp = zopen(in, "r", bits)) == ((void*)0)) {
  cwarn("%s", in);
  return;
 }
 if (stat(in, &sb)) {
  cwarn("%s", in);
  goto err;
 }
 if (!S_ISREG(sb.st_mode))
  isreg = 0;





 if ((nr = fread(buf, 1, sizeof(buf), ifp)) == 0) {
  cwarn("%s", in);
  (void)fclose(ifp);
  return;
 }
 if ((ofp = fopen(out, "w")) == ((void*)0) ||
     (nr != 0 && fwrite(buf, 1, nr, ofp) != nr)) {
  cwarn("%s", out);
  if (ofp)
   (void)fclose(ofp);
  (void)fclose(ifp);
  return;
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

 if (isreg) {
  setfile(out, &sb);

  if (unlink(in))
   cwarn("%s", in);
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
