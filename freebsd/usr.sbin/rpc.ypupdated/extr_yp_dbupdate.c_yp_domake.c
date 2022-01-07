
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAP_UPDATE ;
 int MAP_UPDATE_PATH ;
 int YPERR_YPERR ;
 int children ;
 int errno ;
 int execlp (int ,int ,char*,char*,char*) ;
 int exit (int) ;
 int fork () ;
 int strerror (int ) ;
 int yp_error (char*,int ) ;

__attribute__((used)) static int
yp_domake(char *map, char *domain)
{
 int pid;

 switch ((pid = fork())) {
 case 0:
  execlp(MAP_UPDATE_PATH, MAP_UPDATE, map, domain, (char *)((void*)0));
  yp_error("couldn't exec map update process: %s",
      strerror(errno));
  exit(1);
  break;
 case -1:
  yp_error("fork() failed: %s", strerror(errno));
  return(YPERR_YPERR);
  break;
 default:
  children++;
  break;
 }

 return(0);
}
