
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofiocdesc {char const* of_name; scalar_t__ of_nodeid; int * of_buf; scalar_t__ of_buflen; int of_namelen; } ;
typedef scalar_t__ phandle_t ;


 scalar_t__ ENOENT ;
 int EX_IOERR ;
 int EX_UNAVAILABLE ;
 int OFIOCFINDDEVICE ;
 int err (int ,char*,...) ;
 scalar_t__ errno ;
 int ioctl (int,int ,struct ofiocdesc*) ;
 int strlen (char const*) ;

phandle_t
ofw_finddevice(int fd, const char *name)
{
 struct ofiocdesc d;

 d.of_nodeid = 0;
 d.of_namelen = strlen(name);
 d.of_name = name;
 d.of_buflen = 0;
 d.of_buf = ((void*)0);
 if (ioctl(fd, OFIOCFINDDEVICE, &d) == -1) {
  if (errno == ENOENT)
   err(EX_UNAVAILABLE, "Node '%s' not found", name);
  else
   err(EX_IOERR,
       "ioctl(..., OFIOCFINDDEVICE, ...) failed");
 }
 return (d.of_nodeid);
}
