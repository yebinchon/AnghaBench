
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int M_TEMP ;
 int free (char*,int ) ;
 int parse_dir_ask (char**) ;
 int parse_dir_md (char**) ;
 int parse_dir_onfail (char**) ;
 int parse_dir_timeout (char**) ;
 int parse_skipto (char**,char) ;
 int parse_token (char**,char**) ;
 int printf (char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
parse_directive(char **conf)
{
 char *dir;
 int error;

 error = parse_token(conf, &dir);
 if (error)
  return (error);

 if (strcmp(dir, ".ask") == 0)
  error = parse_dir_ask(conf);
 else if (strcmp(dir, ".md") == 0)
  error = parse_dir_md(conf);
 else if (strcmp(dir, ".onfail") == 0)
  error = parse_dir_onfail(conf);
 else if (strcmp(dir, ".timeout") == 0)
  error = parse_dir_timeout(conf);
 else {
  printf("mountroot: invalid directive `%s'\n", dir);

  (void)parse_skipto(conf, '\n');
  error = EINVAL;
 }
 free(dir, M_TEMP);
 return (error);
}
