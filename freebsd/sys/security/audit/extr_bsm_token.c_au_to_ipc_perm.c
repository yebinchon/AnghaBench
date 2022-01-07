
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_int16_t ;
typedef int u_char ;
typedef int token_t ;
struct ipc_perm {int key; int seq; int mode; int cgid; int cuid; int gid; int uid; } ;


 int ADD_U_CHAR (int *,int ) ;
 int ADD_U_INT16 (int *,int ) ;
 int ADD_U_INT32 (int *,int ) ;
 int AUT_IPC_PERM ;
 int GET_TOKEN_AREA (int *,int *,int) ;

token_t *
au_to_ipc_perm(struct ipc_perm *perm)
{
 token_t *t;
 u_char *dptr = ((void*)0);
 u_int16_t pad0 = 0;

 GET_TOKEN_AREA(t, dptr, sizeof(u_char) + 12 * sizeof(u_int16_t) +
     sizeof(u_int32_t));

 ADD_U_CHAR(dptr, AUT_IPC_PERM);
 if (sizeof(perm->uid) != sizeof(u_int32_t)) {
  ADD_U_INT16(dptr, pad0);
  ADD_U_INT16(dptr, perm->uid);
  ADD_U_INT16(dptr, pad0);
  ADD_U_INT16(dptr, perm->gid);
  ADD_U_INT16(dptr, pad0);
  ADD_U_INT16(dptr, perm->cuid);
  ADD_U_INT16(dptr, pad0);
  ADD_U_INT16(dptr, perm->cgid);
 } else {
  ADD_U_INT32(dptr, perm->uid);
  ADD_U_INT32(dptr, perm->gid);
  ADD_U_INT32(dptr, perm->cuid);
  ADD_U_INT32(dptr, perm->cgid);
 }

 ADD_U_INT16(dptr, pad0);
 ADD_U_INT16(dptr, perm->mode);

 ADD_U_INT16(dptr, pad0);

 ADD_U_INT16(dptr, perm->seq);

 ADD_U_INT32(dptr, perm->key);

 return (t);
}
