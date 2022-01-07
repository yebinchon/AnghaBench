
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct mount {int dummy; } ;
struct fuse_dispatcher {size_t iosize; char* indata; } ;
struct componentname {size_t cn_namelen; void* cn_nameptr; int cn_cred; int cn_thread; } ;
typedef enum fuse_opcode { ____Placeholder_fuse_opcode } fuse_opcode ;


 int fdisp_make (struct fuse_dispatcher*,int,struct mount*,int ,int ,int ) ;
 int memcpy (char*,void*,size_t) ;

void
fuse_internal_newentry_makerequest(struct mount *mp,
    uint64_t dnid,
    struct componentname *cnp,
    enum fuse_opcode op,
    void *buf,
    size_t bufsize,
    struct fuse_dispatcher *fdip)
{
 fdip->iosize = bufsize + cnp->cn_namelen + 1;

 fdisp_make(fdip, op, mp, dnid, cnp->cn_thread, cnp->cn_cred);
 memcpy(fdip->indata, buf, bufsize);
 memcpy((char *)fdip->indata + bufsize, cnp->cn_nameptr, cnp->cn_namelen);
 ((char *)fdip->indata)[bufsize + cnp->cn_namelen] = '\0';
}
