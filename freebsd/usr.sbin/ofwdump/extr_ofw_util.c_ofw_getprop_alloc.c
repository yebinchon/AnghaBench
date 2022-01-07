
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofiocdesc {char const* of_name; int of_buflen; void* of_buf; int of_namelen; int of_nodeid; } ;
typedef int phandle_t ;


 scalar_t__ ENOMEM ;
 int EX_IOERR ;
 int OFIOCGET ;
 int OFIOCMAXVALUE ;
 int err (int ,char*) ;
 scalar_t__ errno ;
 int free (void*) ;
 int ioctl (int,int ,struct ofiocdesc*) ;
 int ofw_getproplen (int,int ,char const*) ;
 void* ofw_malloc (int) ;
 int strlen (char const*) ;

int
ofw_getprop_alloc(int fd, phandle_t node, const char *name, void **buf,
    int *buflen, int reserve)
{
 struct ofiocdesc d;
 int len, rv;

 do {
  len = ofw_getproplen(fd, node, name);
  if (len < 0)
   return (len);
  if (*buflen < len + reserve) {
   if (*buf != ((void*)0))
    free(*buf);
   *buflen = len + reserve + OFIOCMAXVALUE;
   *buf = ofw_malloc(*buflen);
  }
  d.of_nodeid = node;
  d.of_namelen = strlen(name);
  d.of_name = name;
  d.of_buflen = *buflen - reserve;
  d.of_buf = *buf;
  rv = ioctl(fd, OFIOCGET, &d);
 } while (rv == -1 && errno == ENOMEM);
 if (rv == -1)
  err(EX_IOERR, "ioctl(..., OFIOCGET, ...) failed");
 return (d.of_buflen);
}
