
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uid_t ;
typedef int u_int64_t ;
typedef int u_int32_t ;
typedef int u_char ;
typedef int token_t ;
typedef scalar_t__ pid_t ;
typedef scalar_t__ gid_t ;
struct TYPE_3__ {int * at_addr; scalar_t__ at_type; int at_port; } ;
typedef TYPE_1__ au_tid_addr_t ;
typedef scalar_t__ au_id_t ;
typedef scalar_t__ au_asid_t ;


 int ADD_MEM (int *,int *,int) ;
 int ADD_U_CHAR (int *,int ) ;
 int ADD_U_INT32 (int *,scalar_t__) ;
 int ADD_U_INT64 (int *,int ) ;
 int AUT_SUBJECT64_EX ;
 scalar_t__ AU_IPv4 ;
 scalar_t__ AU_IPv6 ;
 int GET_TOKEN_AREA (int *,int *,int) ;
 int KASSERT (int,char*) ;

token_t *
au_to_subject64_ex(au_id_t auid, uid_t euid, gid_t egid, uid_t ruid,
    gid_t rgid, pid_t pid, au_asid_t sid, au_tid_addr_t *tid)
{
 token_t *t;
 u_char *dptr = ((void*)0);

 KASSERT((tid->at_type == AU_IPv4) || (tid->at_type == AU_IPv6),
     ("au_to_subject64_ex: type %u", (unsigned int)tid->at_type));

 if (tid->at_type == AU_IPv4)
  GET_TOKEN_AREA(t, dptr, sizeof(u_char) +
      7 * sizeof(u_int32_t) + sizeof(u_int64_t) +
      2 * sizeof(u_int32_t));
 else
  GET_TOKEN_AREA(t, dptr, sizeof(u_char) +
      7 * sizeof(u_int32_t) + sizeof(u_int64_t) +
      5 * sizeof(u_int32_t));

 ADD_U_CHAR(dptr, AUT_SUBJECT64_EX);
 ADD_U_INT32(dptr, auid);
 ADD_U_INT32(dptr, euid);
 ADD_U_INT32(dptr, egid);
 ADD_U_INT32(dptr, ruid);
 ADD_U_INT32(dptr, rgid);
 ADD_U_INT32(dptr, pid);
 ADD_U_INT32(dptr, sid);
 ADD_U_INT64(dptr, tid->at_port);
 ADD_U_INT32(dptr, tid->at_type);
 if (tid->at_type == AU_IPv6)
  ADD_MEM(dptr, &tid->at_addr[0], 4 * sizeof(u_int32_t));
 else
  ADD_MEM(dptr, &tid->at_addr[0], sizeof(u_int32_t));

 return (t);
}
