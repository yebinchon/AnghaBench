
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int * efidp ;
typedef int buffer ;


 int MAXSIZE ;
 int STDOUT_FILENO ;
 int efidp_parse_device_path (char*,int *,int) ;
 int errx (int,char*,...) ;
 scalar_t__ fgets (char*,int,int ) ;
 int free (int *) ;
 int * malloc (int) ;
 int stdin ;
 char* trim (char*) ;
 int write (int ,int *,int) ;

__attribute__((used)) static void
parse(void)
{
 char buffer[MAXSIZE];
 efidp dp;
 ssize_t dplen;
 char *walker;

 dplen = MAXSIZE;
 dp = malloc(dplen);
 if (dp == ((void*)0))
  errx(1, "Can't allocate memory.");
 while (fgets(buffer, sizeof(buffer), stdin)) {
  walker= trim(buffer);
  dplen = efidp_parse_device_path(walker, dp, dplen);
  if (dplen == -1)
   errx(1, "Can't parse %s", walker);
  write(STDOUT_FILENO, dp, dplen);
 }
 free(dp);
}
