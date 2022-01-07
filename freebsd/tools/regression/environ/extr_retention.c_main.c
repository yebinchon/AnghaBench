
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_SUCCESS ;
 char* envName ;
 char* envValAny ;
 char* envValLarge ;
 char* envValSmall ;
 int * environ ;
 int exit (int ) ;
 char* getenv (char*) ;
 int printf (char*,...) ;
 scalar_t__ setenv (char*,char*,int) ;
 scalar_t__ strcmp (char const*,char*) ;
 int unsetenv (char*) ;

int
main(int argc, char **argv)
{
 const char *env1 = ((void*)0);
 const char *env2 = ((void*)0);
 const char *env3 = ((void*)0);
 const char *env4 = ((void*)0);
 const char *env5 = ((void*)0);
 int testNdx;


 environ = ((void*)0);
 testNdx = 0;


 if (getenv(envName) != ((void*)0))
  printf("not ");
 printf("ok %d - getenv(\"%s\")\n", ++testNdx, envName);


 if ((setenv(envName, envValSmall, 1) != 0) ||
     ((env1 = getenv(envName)) == ((void*)0)) ||
     (strcmp(env1, envValSmall) != 0))
  printf("not ");
 printf("ok %d - setenv(\"%s\", \"%s\", 1)\n", ++testNdx, envName,
     envValSmall);


 if ((unsetenv(envName) == -1) || ((env2 = getenv(envName)) != ((void*)0)))
  printf("not ");
 printf("ok %d - unsetenv(\"%s\")\n", ++testNdx, envName);


 if ((setenv(envName, envValLarge, 1) != 0) ||
     ((env3 = getenv(envName)) == ((void*)0)) ||
     (strcmp(env3, envValLarge) != 0))
  printf("not ");
 printf("ok %d - setenv(\"%s\", \"%s\", 1)\n", ++testNdx, envName,
     envValLarge);


 if ((setenv(envName, envValSmall, 1) != 0) ||
     ((env4 = getenv(envName)) == ((void*)0)) ||
     (strcmp(env4, envValSmall) != 0))
  printf("not ");
 printf("ok %d - setenv(\"%s\", \"%s\", 1)\n", ++testNdx, envName,
     envValSmall);


 if ((setenv(envName, envValAny, 0) != 0) ||
     ((env5 = getenv(envName)) == ((void*)0)) ||
     (strcmp(env5, envValAny) == 0))
  printf("not ");
 printf("ok %d - setenv(\"%s\", \"%s\", 0)\n", ++testNdx, envName,
     envValAny);





 if ((strcmp(env1, envValSmall) != 0) ||
     (strcmp(env3, envValSmall) != 0) ||
     (strcmp(env4, envValSmall) != 0))
  printf("not ");
 printf("ok %d - old variables point to valid memory\n", ++testNdx);

 exit(EXIT_SUCCESS);
}
