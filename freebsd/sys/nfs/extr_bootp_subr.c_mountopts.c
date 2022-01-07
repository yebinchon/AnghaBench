
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_args {int flags; int sotype; void* wsize; void* rsize; int version; } ;


 void* BOOTP_BLOCKSIZE ;
 int NFSMNT_RESVPORT ;
 int NFSMNT_RSIZE ;
 int NFSMNT_WSIZE ;
 int NFS_ARGSVERSION ;
 int SOCK_DGRAM ;
 int nfs_parse_options (char*,struct nfs_args*) ;

__attribute__((used)) static void
mountopts(struct nfs_args *args, char *p)
{
 args->version = NFS_ARGSVERSION;
 args->rsize = BOOTP_BLOCKSIZE;
 args->wsize = BOOTP_BLOCKSIZE;
 args->flags = NFSMNT_RSIZE | NFSMNT_WSIZE | NFSMNT_RESVPORT;
 args->sotype = SOCK_DGRAM;
 if (p != ((void*)0))
  nfs_parse_options(p, args);
}
