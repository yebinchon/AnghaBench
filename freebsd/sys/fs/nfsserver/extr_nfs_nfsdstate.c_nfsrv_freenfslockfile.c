
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfslockfile {int dummy; } ;


 int LIST_REMOVE (struct nfslockfile*,int ) ;
 int M_NFSDLOCKFILE ;
 int free (struct nfslockfile*,int ) ;
 int lf_hash ;

__attribute__((used)) static void
nfsrv_freenfslockfile(struct nfslockfile *lfp)
{

 LIST_REMOVE(lfp, lf_hash);
 free(lfp, M_NFSDLOCKFILE);
}
