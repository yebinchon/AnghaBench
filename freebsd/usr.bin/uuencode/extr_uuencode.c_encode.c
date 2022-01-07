
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENC (char) ;
 scalar_t__ EOF ;
 char** av ;
 int errx (int,char*) ;
 scalar_t__ ferror (int ) ;
 int fprintf (int ,char*,int,...) ;
 scalar_t__ fputc (char,int ) ;
 int fread (char*,int,int,int ) ;
 int mode ;
 int output ;
 int raw ;
 int stdin ;

__attribute__((used)) static void
encode(void)
{
 register int ch, n;
 register char *p;
 char buf[80];

 if (!raw)
  (void)fprintf(output, "begin %o %s\n", mode, *av);
 while ((n = fread(buf, 1, 45, stdin))) {
  ch = ENC(n);
  if (fputc(ch, output) == EOF)
   break;
  for (p = buf; n > 0; n -= 3, p += 3) {

   if (n < 3) {
    p[2] = '\0';
    if (n < 2)
     p[1] = '\0';
   }
   ch = *p >> 2;
   ch = ENC(ch);
   if (fputc(ch, output) == EOF)
    break;
   ch = ((*p << 4) & 060) | ((p[1] >> 4) & 017);
   ch = ENC(ch);
   if (fputc(ch, output) == EOF)
    break;
   ch = ((p[1] << 2) & 074) | ((p[2] >> 6) & 03);
   ch = ENC(ch);
   if (fputc(ch, output) == EOF)
    break;
   ch = p[2] & 077;
   ch = ENC(ch);
   if (fputc(ch, output) == EOF)
    break;
  }
  if (fputc('\n', output) == EOF)
   break;
 }
 if (ferror(stdin))
  errx(1, "read error");
 if (!raw)
  (void)fprintf(output, "%c\nend\n", ENC('\0'));
}
