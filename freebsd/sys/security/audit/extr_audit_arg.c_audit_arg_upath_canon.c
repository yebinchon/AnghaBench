
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXPATHLEN ;
 int M_AUDITPATH ;
 int M_WAITOK ;
 char* malloc (int ,int ,int ) ;
 int snprintf (char*,int ,char*,char*) ;

__attribute__((used)) static void
audit_arg_upath_canon(char *upath, char **pathp)
{

 if (*pathp == ((void*)0))
  *pathp = malloc(MAXPATHLEN, M_AUDITPATH, M_WAITOK);
 (void)snprintf(*pathp, MAXPATHLEN, "%s", upath);
}
