
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * le_prev; } ;
struct nfslock {TYPE_1__ lo_lckfile; } ;
struct TYPE_4__ {int srvlocks; } ;


 int LIST_REMOVE (struct nfslock*,int ) ;
 int M_NFSDLOCK ;
 int free (struct nfslock*,int ) ;
 int lo_lckfile ;
 int lo_lckowner ;
 int nfsrv_openpluslock ;
 TYPE_2__ nfsstatsv1 ;

__attribute__((used)) static void
nfsrv_freenfslock(struct nfslock *lop)
{

 if (lop->lo_lckfile.le_prev != ((void*)0)) {
  LIST_REMOVE(lop, lo_lckfile);
  nfsstatsv1.srvlocks--;
  nfsrv_openpluslock--;
 }
 LIST_REMOVE(lop, lo_lckowner);
 free(lop, M_NFSDLOCK);
}
