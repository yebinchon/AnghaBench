
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ngm_connect {char* path; int peerhook; int ourhook; } ;
typedef int ng_ID_t ;
typedef int conn ;


 int NGM_CONNECT ;
 int NGM_GENERIC_COOKIE ;
 int NG_HOOKSIZ ;
 int NG_PATHSIZ ;
 int NgSendMsg (int ,char*,int ,int ,struct ngm_connect*,int) ;
 int csock ;
 int snprintf (char*,int,char*,int) ;
 int strlcpy (int ,char const*,int ) ;

int
ng_connect2_id(ng_ID_t id, ng_ID_t peer, const char *ourhook,
    const char *peerhook)
{
 struct ngm_connect conn;
 char path[NG_PATHSIZ];

 snprintf(path, NG_PATHSIZ, "[%x]:", id);

 snprintf(conn.path, NG_PATHSIZ, "[%x]:", peer);
 strlcpy(conn.ourhook, ourhook, NG_HOOKSIZ);
 strlcpy(conn.peerhook, peerhook, NG_HOOKSIZ);
 return (NgSendMsg(csock, path,
     NGM_GENERIC_COOKIE, NGM_CONNECT, &conn, sizeof(conn)));
}
