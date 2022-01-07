
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int GROUPS ;
 char** av ;
 int b64_ntop (unsigned char*,size_t,char*,int ) ;
 int errx (int,char*) ;
 int fprintf (int ,char*,...) ;
 size_t fread (unsigned char*,int,int,int ) ;
 int mode ;
 int nitems (char*) ;
 int output ;
 int raw ;
 int stdin ;

__attribute__((used)) static void
base64_encode(void)
{




 unsigned char buf[3];
 char buf2[sizeof(buf) * 2 + 1];
 size_t n;
 int rv, sequence;

 sequence = 0;

 if (!raw)
  fprintf(output, "begin-base64 %o %s\n", mode, *av);
 while ((n = fread(buf, 1, sizeof(buf), stdin))) {
  ++sequence;
  rv = b64_ntop(buf, n, buf2, nitems(buf2));
  if (rv == -1)
   errx(1, "b64_ntop: error encoding base64");
  fprintf(output, "%s%s", buf2, (sequence % ((80 / 4) - 1)) ? "" : "\n");
 }
 if (sequence % ((80 / 4) - 1))
  fprintf(output, "\n");
 if (!raw)
  fprintf(output, "====\n");
}
