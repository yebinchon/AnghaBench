
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utmpx {short ut_type; int ut_tv; } ;


 int gettimeofday (int *,int *) ;
 int perror (char*) ;
 int * pututxline (struct utmpx*) ;

__attribute__((used)) static int
boot(short type)
{
 struct utmpx utx = { .ut_type = type };

 (void)gettimeofday(&utx.ut_tv, ((void*)0));
 if (pututxline(&utx) == ((void*)0)) {
  perror("pututxline");
  return (1);
 }
 return (0);
}
