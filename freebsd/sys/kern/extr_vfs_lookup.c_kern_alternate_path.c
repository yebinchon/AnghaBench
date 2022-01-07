
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct nameidata {scalar_t__ ni_vp; } ;
typedef enum uio_seg { ____Placeholder_uio_seg } uio_seg ;


 int AT_FDCWD ;
 int EINVAL ;
 int ENOENT ;
 int FOLLOW ;
 int LOOKUP ;
 size_t MAXPATHLEN ;
 int M_TEMP ;
 int M_WAITOK ;
 int NDFREE (struct nameidata*,int ) ;
 int NDF_ONLY_PNBUF ;
 int NDINIT (struct nameidata*,int ,int ,int,char const*,struct thread*) ;
 int NOFOLLOW ;
 int UIO_SYSSPACE ;
 int bcopy (char*,char*,size_t) ;
 int copyinstr (char const*,char*,size_t,size_t*) ;
 int copystr (char const*,char*,size_t,size_t*) ;
 int free (char*,int ) ;
 scalar_t__ malloc (size_t,int ,int ) ;
 int namei (struct nameidata*) ;
 size_t strlcpy (char*,char const*,size_t) ;
 int vrele (scalar_t__) ;

int
kern_alternate_path(struct thread *td, const char *prefix, const char *path,
    enum uio_seg pathseg, char **pathbuf, int create, int dirfd)
{
 struct nameidata nd, ndroot;
 char *ptr, *buf, *cp;
 size_t len, sz;
 int error;

 buf = (char *) malloc(MAXPATHLEN, M_TEMP, M_WAITOK);
 *pathbuf = buf;


 len = strlcpy(buf, prefix, MAXPATHLEN);
 if (len >= MAXPATHLEN) {
  *pathbuf = ((void*)0);
  free(buf, M_TEMP);
  return (EINVAL);
 }
 sz = MAXPATHLEN - len;
 ptr = buf + len;


 if (pathseg == UIO_SYSSPACE)
  error = copystr(path, ptr, sz, &len);
 else
  error = copyinstr(path, ptr, sz, &len);

 if (error) {
  *pathbuf = ((void*)0);
  free(buf, M_TEMP);
  return (error);
 }


 if (*ptr != '/') {
  error = EINVAL;
  goto keeporig;
 }

 if (dirfd != AT_FDCWD) {




  bcopy(ptr, buf, len);
  return (0);
 }
 if (create) {
  for (cp = &ptr[len] - 1; *cp != '/'; cp--);
  *cp = '\0';

  NDINIT(&nd, LOOKUP, NOFOLLOW, UIO_SYSSPACE, buf, td);
  error = namei(&nd);
  *cp = '/';
  if (error != 0)
   goto keeporig;
 } else {
  NDINIT(&nd, LOOKUP, NOFOLLOW, UIO_SYSSPACE, buf, td);

  error = namei(&nd);
  if (error != 0)
   goto keeporig;
  NDINIT(&ndroot, LOOKUP, FOLLOW, UIO_SYSSPACE, prefix,
      td);


  error = namei(&ndroot);
  if (error == 0) {
   if (nd.ni_vp == ndroot.ni_vp)
    error = ENOENT;

   NDFREE(&ndroot, NDF_ONLY_PNBUF);
   vrele(ndroot.ni_vp);
  }
 }

 NDFREE(&nd, NDF_ONLY_PNBUF);
 vrele(nd.ni_vp);

keeporig:

 if (error)
  bcopy(ptr, buf, len);
 return (error);
}
