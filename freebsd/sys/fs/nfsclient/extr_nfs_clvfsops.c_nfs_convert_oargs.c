
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct onfs_args {int hostname; int readahead; int retrans; int timeo; int readdirsize; int rsize; int wsize; int flags; int fhsize; int fh; int proto; int sotype; int addrlen; int addr; } ;
struct nfs_args {int hostname; int readahead; int retrans; int timeo; int readdirsize; int rsize; int wsize; int flags; int fhsize; int fh; int proto; int sotype; int addrlen; int addr; int version; } ;


 int NFS_ARGSVERSION ;

__attribute__((used)) static void
nfs_convert_oargs(struct nfs_args *args, struct onfs_args *oargs)
{

 args->version = NFS_ARGSVERSION;
 args->addr = oargs->addr;
 args->addrlen = oargs->addrlen;
 args->sotype = oargs->sotype;
 args->proto = oargs->proto;
 args->fh = oargs->fh;
 args->fhsize = oargs->fhsize;
 args->flags = oargs->flags;
 args->wsize = oargs->wsize;
 args->rsize = oargs->rsize;
 args->readdirsize = oargs->readdirsize;
 args->timeo = oargs->timeo;
 args->retrans = oargs->retrans;
 args->readahead = oargs->readahead;
 args->hostname = oargs->hostname;
}
