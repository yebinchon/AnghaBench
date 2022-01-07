
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int err (int,char*,...) ;
 int fclose (int *) ;
 scalar_t__ feof (int *) ;
 scalar_t__ ferror (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,...) ;
 int getc (int *) ;
 int ignore (int ) ;
 int onintr (int ) ;
 char* strings ;
 int warn (char*,char*) ;

__attribute__((used)) static void
xsdotc(void)
{
 FILE *strf = fopen(strings, "r");
 FILE *xdotcf;

 if (strf == ((void*)0))
  err(5, "%s", strings);
 xdotcf = fopen("xs.c", "w");
 if (xdotcf == ((void*)0))
  err(6, "xs.c");
 fprintf(xdotcf, "char\txstr[] = {\n");
 for (;;) {
  int i, c;

  for (i = 0; i < 8; i++) {
   c = getc(strf);
   if (ferror(strf)) {
    warn("%s", strings);
    onintr(0);
   }
   if (feof(strf)) {
    fprintf(xdotcf, "\n");
    goto out;
   }
   fprintf(xdotcf, "0x%02x,", c);
  }
  fprintf(xdotcf, "\n");
 }
out:
 fprintf(xdotcf, "};\n");
 ignore(fclose(xdotcf));
 ignore(fclose(strf));
}
