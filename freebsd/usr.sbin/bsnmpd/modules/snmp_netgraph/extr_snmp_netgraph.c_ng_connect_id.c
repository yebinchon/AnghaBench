
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ngm_connect {int peerhook; int ourhook; int path; } ;
typedef int ng_ID_t ;
typedef int conn ;


 int NGM_CONNECT ;
 int NGM_GENERIC_COOKIE ;
 int NG_HOOKSIZ ;
 int NG_PATHSIZ ;
 int NgSendMsg (int ,char*,int ,int ,struct ngm_connect*,int) ;
 int csock ;
 int snprintf (int ,int ,char*,int) ;
 int strlcpy (int ,char const*,int ) ;

int
ng_connect_id(ng_ID_t id, const char *ourhook, const char *peerhook)
{
 struct ngm_connect conn;

 snprintf(conn.path, NG_PATHSIZ, "[%x]:", id);
 strlcpy(conn.ourhook, ourhook, NG_HOOKSIZ);
 strlcpy(conn.peerhook, peerhook, NG_HOOKSIZ);
 return (NgSendMsg(csock, ".:",
     NGM_GENERIC_COOKIE, NGM_CONNECT, &conn, sizeof(conn)));
}
