
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct thread {int dummy; } ;
struct sockaddr_in {int sin_port; } ;
struct nfs_args {int flags; } ;
struct mbuf {int dummy; } ;


 int AUTH_UNIX ;
 int EBADRPC ;
 int NFSMNT_NFSV3 ;
 int NFSX_V2FH ;
 int NFSX_V3FHMAX ;
 int NFS_PROG ;
 int NFS_VER2 ;
 int NFS_VER3 ;
 int RPCMNT_MOUNT ;
 int RPCMNT_VER1 ;
 int RPCMNT_VER3 ;
 int RPCPROG_MNT ;
 int krpc_call (struct sockaddr_in*,int ,int ,int ,struct mbuf**,int *,struct thread*) ;
 int krpc_portmap (struct sockaddr_in*,int ,int ,int *,struct thread*) ;
 int m_freem (struct mbuf*) ;
 int strlen (char*) ;
 scalar_t__ xdr_int_decode (struct mbuf**,int*) ;
 scalar_t__ xdr_opaque_decode (struct mbuf**,int *,int) ;
 struct mbuf* xdr_string_encode (char*,int ) ;

__attribute__((used)) static int
md_mount(struct sockaddr_in *mdsin, char *path, u_char *fhp, int *fhsizep,
    struct nfs_args *args, struct thread *td)
{
 struct mbuf *m;
 int error;
 int authunixok;
 int authcount;
 int authver;
  error = krpc_portmap(mdsin, 100005, 1,
         &mdsin->sin_port, td);
  if (error != 0)
   return error;

  m = xdr_string_encode(path, strlen(path));


  error = krpc_call(mdsin, 100005, 1,
      1, &m, ((void*)0), td);
  if (error != 0)
   return error;





 if (xdr_int_decode(&m, &error) != 0 || error != 0)
  goto bad;

 if ((args->flags & NFSMNT_NFSV3) != 0) {
  if (xdr_int_decode(&m, fhsizep) != 0 ||
      *fhsizep > NFSX_V3FHMAX ||
      *fhsizep <= 0)
   goto bad;
 } else
  *fhsizep = NFSX_V2FH;

 if (xdr_opaque_decode(&m, fhp, *fhsizep) != 0)
  goto bad;

 if (args->flags & NFSMNT_NFSV3) {
  if (xdr_int_decode(&m, &authcount) != 0)
   goto bad;
  authunixok = 0;
  if (authcount < 0 || authcount > 100)
   goto bad;
  while (authcount > 0) {
   if (xdr_int_decode(&m, &authver) != 0)
    goto bad;
   if (authver == 1)
    authunixok = 1;
   authcount--;
  }
  if (authunixok == 0)
   goto bad;
 }


 error = krpc_portmap(mdsin, NFS_PROG,
        (args->flags &
         NFSMNT_NFSV3) ? NFS_VER3 : NFS_VER2,
        &mdsin->sin_port, td);

 goto out;

bad:
 error = EBADRPC;

out:
 m_freem(m);
 return error;
}
