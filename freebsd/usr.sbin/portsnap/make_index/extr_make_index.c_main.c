
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PORT ;
typedef int FILE ;


 int err (int,char*,...) ;
 int errx (int,char*) ;
 scalar_t__ fclose (int *) ;
 int feof (int *) ;
 char* fgetln (int *,size_t*) ;
 int * fopen (char*,char*) ;
 int heapifyports (int **,size_t,size_t) ;
 int ** malloc (size_t) ;
 int * portify (char*) ;
 int printport (int *) ;
 int ** realloc (int **,size_t) ;
 int recurse (int *) ;
 int translateport (int **,size_t,int *) ;
 int usage () ;

int
main(int argc, char *argv[])
{
 FILE * f;
 char * line;
 size_t linelen;
 PORT ** pp;
 PORT * tmp;
 size_t pplen;
 size_t i;

 if (argc != 2)
  usage();
 if ((f = fopen(argv[1], "r")) == ((void*)0))
  err(1, "fopen(%s)", argv[1]);

 pplen = 1024;
 if ((pp = malloc(pplen * sizeof(PORT *))) == ((void*)0))
  err(1, "malloc(pp)");




 for(i = 0; (line = fgetln(f, &linelen)) != ((void*)0); i++) {
  if (line[linelen - 1] != '\n')
   errx(1, "Unterminated line encountered");
  line[linelen - 1] = 0;


  if (i >= pplen) {
   pplen *= 2;
   if ((pp = realloc(pp, pplen * sizeof(PORT *))) == ((void*)0))
    err(1, "realloc(pp)");
  }

  pp[i] = portify(line);
 }

 pplen = i;
 if ((pp = realloc(pp, pplen * sizeof(PORT *))) == ((void*)0))
  err(1, "realloc(pp)");


 if (!feof(f))
  err(1, "fgetln(%s)", argv[1]);

 if (fclose(f) != 0)
  err(1, "fclose(%s)", argv[1]);




 if (pplen == 0)
  return 0;




 for (i = pplen; i > 0; i--)
  heapifyports(pp, pplen, i - 1);
 for (i = pplen - 1; i > 0; i--) {
  tmp = pp[0];
  pp[0] = pp[i];
  pp[i] = tmp;
  heapifyports(pp, i, 0);
 }





 for (i = 0; i < pplen; i++)
  translateport(pp, pplen, pp[i]);





 for (i = 0; i < pplen; i++)
  recurse(pp[i]);





 for (i = 0; i < pplen; i++)
  printport(pp[i]);

 return 0;
}
