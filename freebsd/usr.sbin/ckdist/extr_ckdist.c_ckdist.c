
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;




 int EOF ;
 int E_UNKNOWN ;
 int chkinf (int *,char const*) ;
 int chkmd5 (int *,char const*) ;
 int distfile (char const*) ;
 int err (int,char*,char const*) ;
 int fail (char const*,int *) ;
 scalar_t__ fclose (int *) ;
 scalar_t__ ferror (int *) ;
 int fgetc (int *) ;
 int * fopen (char const*,char*) ;
 scalar_t__ isstdin (char const*) ;
 int report (char const*,int *,int ) ;
 int * stdin ;
 int ungetc (int,int *) ;
 int warn (char*,char const*) ;

__attribute__((used)) static int
ckdist(const char *path, int type)
{
    FILE *fp;
    int rval, c;

    if (isstdin(path)) {
 path = "(stdin)";
 fp = stdin;
    } else if ((fp = fopen(path, "r")) == ((void*)0))
 return fail(path, ((void*)0));
    if (!type) {
 if (fp != stdin)
     type = distfile(path);
 if (!type)
     if ((c = fgetc(fp)) != EOF) {
  type = c == 'M' ? 128 : c == 'P' ? 129 : 0;
  (void)ungetc(c, fp);
     }
    }
    switch (type) {
    case 128:
 rval = chkmd5(fp, path);
 break;
    case 129:
 rval = chkinf(fp, path);
 break;
    default:
 rval = report(path, ((void*)0), E_UNKNOWN);
    }
    if (ferror(fp))
 warn("%s", path);
    if (fp != stdin && fclose(fp))
 err(2, "%s", path);
    return rval;
}
