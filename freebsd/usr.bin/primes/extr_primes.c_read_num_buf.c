
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ubig ;
typedef int buf ;


 int LINE_MAX ;
 int err (int,char*,...) ;
 scalar_t__ errno ;
 int errx (int,char*,...) ;
 int exit (int ) ;
 scalar_t__ ferror (int ) ;
 int * fgets (char*,int,int ) ;
 scalar_t__ isblank (char) ;
 int stdin ;
 int strtoumax (char*,char**,int ) ;

__attribute__((used)) static ubig
read_num_buf(void)
{
 ubig val;
 char *p, buf[LINE_MAX];

 for (;;) {
  if (fgets(buf, sizeof(buf), stdin) == ((void*)0)) {
   if (ferror(stdin))
    err(1, "stdin");
   exit(0);
  }
  for (p = buf; isblank(*p); ++p);
  if (*p == '\n' || *p == '\0')
   continue;
  if (*p == '-')
   errx(1, "negative numbers aren't permitted.");
  errno = 0;
  val = strtoumax(buf, &p, 0);
  if (errno)
   err(1, "%s", buf);
  if (*p != '\n')
   errx(1, "%s: illegal numeric format.", buf);
  return (val);
 }
}
