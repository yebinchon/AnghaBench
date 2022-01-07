
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct vattr {size_t va_size; } ;
struct nameidata {int ni_vp; } ;
typedef size_t ssize_t ;
struct TYPE_4__ {int td_ucred; } ;


 int FREAD ;
 int IO_NODELOCKED ;
 int M_VERIEXEC ;
 int M_WAITOK ;
 int NOCRED ;
 int UIO_READ ;
 int UIO_SYSSPACE ;
 int VOP_GETATTR (int ,struct vattr*,int ) ;
 int VOP_UNLOCK (int ,int ) ;
 TYPE_1__* curthread ;
 int free (char*,int ) ;
 scalar_t__ malloc (size_t,int ,int ) ;
 int open_file (char*,struct nameidata*) ;
 int panic (char*) ;
 scalar_t__ verify_digest (char*,size_t,unsigned char*) ;
 int vn_close (int ,int ,int ,TYPE_1__*) ;
 int vn_rdwr (int ,int ,char*,size_t,size_t,int ,int ,int ,int ,size_t*,TYPE_1__*) ;

__attribute__((used)) static char*
read_manifest(char *path, unsigned char *digest)
{
 struct nameidata nid;
 struct vattr va;
 char *data;
 ssize_t bytes_read, resid;
 int rc;

 data = ((void*)0);
 bytes_read = 0;

 rc = open_file(path, &nid);
 if (rc != 0)
  goto fail;

 rc = VOP_GETATTR(nid.ni_vp, &va, curthread->td_ucred);
 if (rc != 0)
  goto fail;

 data = (char *)malloc(va.va_size + 1, M_VERIEXEC, M_WAITOK);

 while (bytes_read < va.va_size) {
  rc = vn_rdwr(
      UIO_READ, nid.ni_vp, data,
      va.va_size - bytes_read, bytes_read,
      UIO_SYSSPACE, IO_NODELOCKED,
      curthread->td_ucred, NOCRED, &resid, curthread);
  if (rc != 0)
   goto fail;

  bytes_read = va.va_size - resid;
 }

 data[bytes_read] = '\0';

 VOP_UNLOCK(nid.ni_vp, 0);
 (void)vn_close(nid.ni_vp, FREAD, curthread->td_ucred, curthread);




 if (verify_digest(data, va.va_size, digest))
  panic("Manifest hash doesn't match expected value!");

 return (data);

fail:
 if (data != ((void*)0))
  free(data, M_VERIEXEC);

 return (((void*)0));
}
