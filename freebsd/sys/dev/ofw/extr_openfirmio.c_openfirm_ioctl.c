
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int ;
struct thread {int dummy; } ;
struct ofiocdesc {scalar_t__ of_nodeid; int of_buflen; int of_name; int of_namelen; int of_buf; } ;
struct cdev {int dummy; } ;
typedef scalar_t__ phandle_t ;
typedef int newname ;
typedef scalar_t__ caddr_t ;


 int EBADF ;
 int EINVAL ;
 int ENAMETOOLONG ;
 int ENOENT ;
 int ENOIOCTL ;
 int ENOMEM ;
 int FREAD ;
 int FWRITE ;
 int M_TEMP ;
 int M_WAITOK ;






 int OFIOCMAXVALUE ;


 scalar_t__ OF_child (scalar_t__) ;
 scalar_t__ OF_finddevice (char*) ;
 int OF_getprop (scalar_t__,char*,void*,int) ;
 int OF_getproplen (scalar_t__,char*) ;
 int OF_nextprop (scalar_t__,char*,char*,int) ;
 scalar_t__ OF_peer (scalar_t__) ;
 int OF_setprop (scalar_t__,char*,char*,int) ;
 int copyin (int ,char*,int) ;
 int copyout (char*,int ,int) ;
 int free (char*,int ) ;
 scalar_t__ lastnode ;
 char* malloc (int,int ,int ) ;
 int openfirm_checkid (scalar_t__,scalar_t__) ;
 int openfirm_getstr (int ,int ,char**) ;
 int strlen (char*) ;

int
openfirm_ioctl(struct cdev *dev, u_long cmd, caddr_t data, int flags,
    struct thread *td)
{
 struct ofiocdesc *of;
 phandle_t node;
 int len, ok, error;
 char *name, *value;
 char newname[32];

 if ((flags & FREAD) == 0)
  return (EBADF);

 of = (struct ofiocdesc *)data;
 switch (cmd) {
 case 131:
  *(phandle_t *) data = OF_finddevice("/options");
  return (0);
 case 134:
 case 128:
 case 129:
 case 135:
 case 130:
  node = of->of_nodeid;
  break;
 case 132:
 case 133:
  node = *(phandle_t *)data;
  break;
 default:
  return (ENOIOCTL);
 }

 if (node != 0 && node != lastnode) {

  ok = openfirm_checkid(OF_peer(0), node);
  if (!ok)
   return (EINVAL);
  lastnode = node;
 }

 name = value = ((void*)0);
 error = 0;
 switch (cmd) {

 case 134:
 case 130:
  if (node == 0)
   return (EINVAL);
  error = openfirm_getstr(of->of_namelen, of->of_name, &name);
  if (error)
   break;
  len = OF_getproplen(node, name);
  if (cmd == 130) {
   of->of_buflen = len;
   break;
  }
  if (len > of->of_buflen) {
   error = ENOMEM;
   break;
  }
  of->of_buflen = len;

  if (len <= 0)
   break;
  value = malloc(len, M_TEMP, M_WAITOK);
  len = OF_getprop(node, name, (void *)value, len);
  error = copyout(value, of->of_buf, len);
  break;

 case 128:







  if ((flags & FWRITE) == 0)
   return (EBADF);
  if (node == 0)
   return (EINVAL);
  if ((u_int)of->of_buflen > OFIOCMAXVALUE)
   return (ENAMETOOLONG);
  error = openfirm_getstr(of->of_namelen, of->of_name, &name);
  if (error)
   break;
  value = malloc(of->of_buflen, M_TEMP, M_WAITOK);
  error = copyin(of->of_buf, value, of->of_buflen);
  if (error)
   break;
  len = OF_setprop(node, name, value, of->of_buflen);
  if (len < 0)
   error = EINVAL;
  of->of_buflen = len;
  break;

 case 129:
  if (node == 0 || of->of_buflen < 0)
   return (EINVAL);
  if (of->of_namelen != 0) {
   error = openfirm_getstr(of->of_namelen, of->of_name,
       &name);
   if (error)
    break;
  }
  ok = OF_nextprop(node, name, newname, sizeof(newname));
  if (ok == 0) {
   error = ENOENT;
   break;
  }
  if (ok == -1) {
   error = EINVAL;
   break;
  }
  len = strlen(newname) + 1;
  if (len > of->of_buflen)
   len = of->of_buflen;
  else
   of->of_buflen = len;
  error = copyout(newname, of->of_buf, len);
  break;

 case 132:
  node = OF_peer(node);
  *(phandle_t *)data = lastnode = node;
  break;

 case 133:
  if (node == 0)
   return (EINVAL);
  node = OF_child(node);
  *(phandle_t *)data = lastnode = node;
  break;

 case 135:
  error = openfirm_getstr(of->of_namelen, of->of_name, &name);
  if (error)
   break;
  node = OF_finddevice(name);
  if (node == -1) {
   error = ENOENT;
   break;
  }
  of->of_nodeid = lastnode = node;
  break;
 }

 if (name != ((void*)0))
  free(name, M_TEMP);
 if (value != ((void*)0))
  free(value, M_TEMP);

 return (error);
}
