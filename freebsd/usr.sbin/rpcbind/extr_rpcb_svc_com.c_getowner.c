
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
typedef int SVCXPRT ;


 scalar_t__ __rpc_get_local_uid (int *,scalar_t__*) ;
 int snprintf (char*,size_t,char*,scalar_t__) ;
 int strlcpy (char*,char*,size_t) ;

__attribute__((used)) static char *
getowner(SVCXPRT *transp, char *owner, size_t ownersize)
{
 uid_t uid;

 if (__rpc_get_local_uid(transp, &uid) < 0)
                strlcpy(owner, "unknown", ownersize);
 else if (uid == 0)
  strlcpy(owner, "superuser", ownersize);
 else
  snprintf(owner, ownersize, "%d", uid);

 return owner;
}
