
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int mode_t ;
struct TYPE_9__ {int name; } ;
struct TYPE_8__ {int m_data; } ;
typedef TYPE_1__ PLAN ;
typedef TYPE_2__ OPTION ;


 int FTS_NOSTAT ;
 int FTS_WHITEOUT ;
 int S_IFBLK ;
 int S_IFCHR ;
 int S_IFDIR ;
 int S_IFIFO ;
 int S_IFLNK ;
 int S_IFREG ;
 int S_IFSOCK ;
 int S_IFWHT ;
 int errx (int,char*,int ,char*) ;
 int ftsoptions ;
 char* nextarg (TYPE_2__*,char***) ;
 TYPE_1__* palloc (TYPE_2__*) ;

PLAN *
c_type(OPTION *option, char ***argvp)
{
 char *typestring;
 PLAN *new;
 mode_t mask;

 typestring = nextarg(option, argvp);
 if (typestring[0] != 'd')
  ftsoptions &= ~FTS_NOSTAT;

 switch (typestring[0]) {
 case 'b':
  mask = S_IFBLK;
  break;
 case 'c':
  mask = S_IFCHR;
  break;
 case 'd':
  mask = S_IFDIR;
  break;
 case 'f':
  mask = S_IFREG;
  break;
 case 'l':
  mask = S_IFLNK;
  break;
 case 'p':
  mask = S_IFIFO;
  break;
 case 's':
  mask = S_IFSOCK;
  break;






 default:
  errx(1, "%s: %s: unknown type", option->name, typestring);
 }

 new = palloc(option);
 new->m_data = mask;
 return new;
}
