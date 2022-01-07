
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CC_NONWHITESPACE ;
 int CC_WHITESPACE ;
 int M_TEMP ;
 int M_WAITOK ;
 int M_ZERO ;
 int bcopy (char*,char*,size_t) ;
 char* malloc (size_t,int ,int) ;
 int parse_skipto (char**,int ) ;

__attribute__((used)) static int
parse_token(char **conf, char **tok)
{
 char *p;
 size_t len;
 int error;

 *tok = ((void*)0);
 error = parse_skipto(conf, CC_NONWHITESPACE);
 if (error)
  return (error);
 p = *conf;
 error = parse_skipto(conf, CC_WHITESPACE);
 len = *conf - p;
 *tok = malloc(len + 1, M_TEMP, M_WAITOK | M_ZERO);
 bcopy(p, *tok, len);
 return (0);
}
