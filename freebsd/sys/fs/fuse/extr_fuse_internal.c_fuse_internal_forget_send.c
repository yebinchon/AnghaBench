
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct mount {int dummy; } ;
struct fuse_forget_in {int nlookup; } ;
struct fuse_dispatcher {int tick; struct fuse_forget_in* indata; } ;


 int FUSE_FORGET ;
 int fdisp_destroy (struct fuse_dispatcher*) ;
 int fdisp_init (struct fuse_dispatcher*,int) ;
 int fdisp_make (struct fuse_dispatcher*,int ,struct mount*,int ,struct thread*,struct ucred*) ;
 int fuse_insert_message (int ,int) ;

void
fuse_internal_forget_send(struct mount *mp,
    struct thread *td,
    struct ucred *cred,
    uint64_t nodeid,
    uint64_t nlookup)
{

 struct fuse_dispatcher fdi;
 struct fuse_forget_in *ffi;






 fdisp_init(&fdi, sizeof(*ffi));
 fdisp_make(&fdi, FUSE_FORGET, mp, nodeid, td, cred);

 ffi = fdi.indata;
 ffi->nlookup = nlookup;

 fuse_insert_message(fdi.tick, 0);
 fdisp_destroy(&fdi);
}
