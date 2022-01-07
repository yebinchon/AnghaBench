
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long id_t ;


 long strtol (char*,char**,int ) ;
 int usage () ;
 int warnx (char*) ;

__attribute__((used)) static id_t
parse_id(char *id)
{
 static bool first = 1;
 long value;
 char *ch;

 if (!first) {
  warnx("only one -g or -p flag is permitted");
  usage();
 }
 value = strtol(id, &ch, 0);
 if (*ch != '\0') {
  warnx("invalid process id");
  usage();
 }
 return (value);
}
