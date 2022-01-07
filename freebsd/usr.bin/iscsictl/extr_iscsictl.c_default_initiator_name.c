
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEFAULT_IQN ;
 size_t _POSIX_HOST_NAME_MAX ;
 char* calloc (int,size_t) ;
 int gethostname (char*,size_t) ;
 int strcpy (char*,int ) ;
 size_t strlen (int ) ;
 int xo_err (int,char*) ;

__attribute__((used)) static char *
default_initiator_name(void)
{
 char *name;
 size_t namelen;
 int error;

 namelen = _POSIX_HOST_NAME_MAX + strlen(DEFAULT_IQN);

 name = calloc(1, namelen + 1);
 if (name == ((void*)0))
  xo_err(1, "calloc");
 strcpy(name, DEFAULT_IQN);
 error = gethostname(name + strlen(DEFAULT_IQN),
     namelen - strlen(DEFAULT_IQN));
 if (error != 0)
  xo_err(1, "gethostname");

 return (name);
}
