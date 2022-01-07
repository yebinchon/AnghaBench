
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pollfd {int fd; int events; } ;
typedef int au_mask_t ;
typedef int FILE ;


 int ATF_REQUIRE (int) ;
 int ATF_REQUIRE_EQ (int ,int ) ;
 int O_RDONLY ;
 int POLLIN ;
 int _IONBF ;
 scalar_t__ atf_utils_file_exists (char*) ;
 int check_audit_startup (struct pollfd*,char*,int *) ;
 int * fdopen (int,char*) ;
 int get_audit_mask (char const*) ;
 int open (char*,int ) ;
 int set_preselect_mode (int,int *) ;
 int setvbuf (int *,int *,int ,int ) ;
 int system (char*) ;

FILE
*setup(struct pollfd fd[], const char *name)
{
 au_mask_t fmask, nomask;
 fmask = get_audit_mask(name);
 nomask = get_audit_mask("no");
 FILE *pipestream;

 ATF_REQUIRE((fd[0].fd = open("/dev/auditpipe", O_RDONLY)) != -1);
 ATF_REQUIRE((pipestream = fdopen(fd[0].fd, "r")) != ((void*)0));
 fd[0].events = POLLIN;







 ATF_REQUIRE_EQ(0, setvbuf(pipestream, ((void*)0), _IONBF, 0));


 set_preselect_mode(fd[0].fd, &nomask);
 ATF_REQUIRE_EQ(0, system("service auditd onestatus || 	{ service auditd onestart && touch started_auditd ; }"));



 if (atf_utils_file_exists("started_auditd"))
  check_audit_startup(fd, "audit startup", pipestream);


 set_preselect_mode(fd[0].fd, &fmask);
 return (pipestream);
}
