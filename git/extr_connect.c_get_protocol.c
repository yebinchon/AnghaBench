
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum protocol { ____Placeholder_protocol } protocol ;


 int PROTO_FILE ;
 int PROTO_GIT ;
 int PROTO_SSH ;
 int _ (char*) ;
 int die (int ,char const*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static enum protocol get_protocol(const char *name)
{
 if (!strcmp(name, "ssh"))
  return PROTO_SSH;
 if (!strcmp(name, "git"))
  return PROTO_GIT;
 if (!strcmp(name, "git+ssh"))
  return PROTO_SSH;
 if (!strcmp(name, "ssh+git"))
  return PROTO_SSH;
 if (!strcmp(name, "file"))
  return PROTO_FILE;
 die(_("protocol '%s' is not supported"), name);
}
