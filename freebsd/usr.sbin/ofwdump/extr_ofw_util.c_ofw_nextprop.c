
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofiocdesc {char const* of_name; int of_buflen; char* of_buf; int of_namelen; int of_nodeid; } ;
typedef int phandle_t ;


 scalar_t__ ENOENT ;
 int EX_IOERR ;
 int OFIOCNEXTPROP ;
 int err (int ,char*) ;
 scalar_t__ errno ;
 int ioctl (int,int ,struct ofiocdesc*) ;
 int strlen (char const*) ;

int
ofw_nextprop(int fd, phandle_t node, const char *prev, char *buf, int buflen)
{
 struct ofiocdesc d;

 d.of_nodeid = node;
 d.of_namelen = prev != ((void*)0) ? strlen(prev) : 0;
 d.of_name = prev;
 d.of_buflen = buflen;
 d.of_buf = buf;
 if (ioctl(fd, OFIOCNEXTPROP, &d) == -1) {
  if (errno == ENOENT)
   return (0);
  else
   err(EX_IOERR, "ioctl(..., OFIOCNEXTPROP, ...) failed");
 }
 return (d.of_buflen);
}
