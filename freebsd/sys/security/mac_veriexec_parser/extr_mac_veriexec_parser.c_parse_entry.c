
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vattr {int va_mode; int va_gen; int va_fileid; int va_fsid; } ;
struct nameidata {int ni_vp; } ;
struct TYPE_3__ {int td_ucred; } ;


 int EINVAL ;
 int FREAD ;
 int MAXPATHLEN ;
 int NDFREE (struct nameidata*,int ) ;
 int NDF_ONLY_PNBUF ;
 int VEXEC ;
 int VOP_GETATTR (int ,struct vattr*,int ) ;
 int VOP_UNLOCK (int ,int ) ;
 TYPE_1__* curthread ;
 int get_fp (char*,char**,unsigned char**,int*) ;
 int hexstring_to_bin (unsigned char*) ;
 int mac_veriexec_metadata_add_file (int,int ,int ,int ,unsigned char*,int *,int ,int,char*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int open_file (char*,struct nameidata*) ;
 int snprintf (char*,int,char*,char*,char*) ;
 int strcpy (char*,char*) ;
 int strnlen (char*,int) ;
 int ve_mutex ;
 int vn_close (int ,int ,int ,TYPE_1__*) ;

__attribute__((used)) static int
parse_entry(char *entry, char *prefix)
{
 struct nameidata nid;
 struct vattr va;
 char path[MAXPATHLEN];
 char *fp_type;
 unsigned char *digest;
 int rc, is_exec, flags;

 fp_type = ((void*)0);
 digest = ((void*)0);
 flags = 0;

 rc = get_fp(entry, &fp_type, &digest, &flags);
 if (rc != 0)
  return (rc);

 rc = hexstring_to_bin(digest);
 if (rc != 0)
  return (rc);

 if (strnlen(entry, MAXPATHLEN) == MAXPATHLEN)
  return (EINVAL);


 if (prefix != ((void*)0) && entry[0] != '/') {
  rc = snprintf(path, MAXPATHLEN, "%s/%s",
       prefix, entry);
  if (rc < 0)
   return (-rc);
 } else {
  strcpy(path, entry);
 }

 rc = open_file(path, &nid);
 NDFREE(&nid, NDF_ONLY_PNBUF);
 if (rc != 0)
  return (rc);

 rc = VOP_GETATTR(nid.ni_vp, &va, curthread->td_ucred);
 if (rc != 0)
  goto out;

 is_exec = (va.va_mode & VEXEC);

 mtx_lock(&ve_mutex);
 rc = mac_veriexec_metadata_add_file(
     is_exec == 0,
     va.va_fsid, va.va_fileid, va.va_gen,
     digest,
     ((void*)0), 0,
     flags, fp_type, 1);
 mtx_unlock(&ve_mutex);

out:
 VOP_UNLOCK(nid.ni_vp, 0);
 vn_close(nid.ni_vp, FREAD, curthread->td_ucred, curthread);
 return (rc);
}
