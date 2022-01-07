
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_un {int sun_path; } ;
struct sockaddr {int dummy; } ;


 int ID0set0 () ;
 int ID0setuser () ;
 int LogID0 ;
 int connect (int,struct sockaddr const*,int) ;
 int log_Printf (int ,char*,int,int,int ,int) ;

int
ID0connect_un(int s, const struct sockaddr_un *name)
{
  int result;

  ID0set0();
  result = connect(s, (const struct sockaddr *)name, sizeof *name);
  log_Printf(LogID0, "%d = connect(%d, \"%s\", %d)\n",
            result, s, name->sun_path, (int)sizeof(*name));
  ID0setuser();
  return result;
}
