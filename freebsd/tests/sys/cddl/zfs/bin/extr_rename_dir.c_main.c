
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fork () ;
 int fprintf (int ,char*,int) ;
 int perror (char*) ;
 int rename (char*,char*) ;
 int stderr ;
 int strlcat (char*,char*,int) ;

int
main()
{
 int i = 1;
 char buf[256];
 char *msg = "rename() fails to handle race situation\n";

 switch (fork()) {
 case -1:
  perror("fork");
  exit(1);
  break;
 case 0:
  while (i > 0) {
   int c_count = 0;
   if (rename("a/b/c", "1/2/3/c") == 0)
    c_count++;
   if (rename("1/2/3/c", "a/b/c") == 0)
    c_count++;
   if (c_count) {
    (void) strlcat(buf, "c_count: %d,", 256);
    (void) strlcat(buf, msg, 256);
    (void) fprintf(stderr, buf, c_count);
   }
  }
  break;
 default:
  while (i > 0) {
   int p_count = 0;
   if (rename("1", "a/b/c/d/e/1") == 0)
    p_count++;
   if (rename("a/b/c/d/e/1", "1") == 0)
    p_count++;
   if (p_count) {
    (void) strlcat(buf, "p_count: %d,", 256);
    (void) strlcat(buf, msg, 256);
    (void) fprintf(stderr, buf, p_count);
   }
  }
  break;
 }
 return (0);
}
