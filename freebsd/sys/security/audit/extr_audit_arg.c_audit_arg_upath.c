
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;


 int MAXPATHLEN ;
 int M_AUDITPATH ;
 int M_WAITOK ;
 int audit_canon_path (struct thread*,int,char*,char*) ;
 char* malloc (int ,int ,int ) ;

__attribute__((used)) static void
audit_arg_upath(struct thread *td, int dirfd, char *upath, char **pathp)
{

 if (*pathp == ((void*)0))
  *pathp = malloc(MAXPATHLEN, M_AUDITPATH, M_WAITOK);
 audit_canon_path(td, dirfd, upath, *pathp);
}
