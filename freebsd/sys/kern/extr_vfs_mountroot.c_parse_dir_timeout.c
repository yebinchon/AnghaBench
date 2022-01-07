
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int M_TEMP ;
 int free (char*,int ) ;
 int parse_token (char**,char**) ;
 long root_mount_timeout ;
 long strtol (char*,char**,int ) ;

__attribute__((used)) static int
parse_dir_timeout(char **conf)
{
 char *tok, *endtok;
 long secs;
 int error;

 error = parse_token(conf, &tok);
 if (error)
  return (error);

 secs = strtol(tok, &endtok, 0);
 error = (secs < 0 || *endtok != '\0') ? EINVAL : 0;
 if (!error)
  root_mount_timeout = secs;
 free(tok, M_TEMP);
 return (error);
}
