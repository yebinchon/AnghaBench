
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofiocdesc {char const* of_name; int of_buflen; int of_namelen; int of_nodeid; } ;
typedef int phandle_t ;


 int OFIOCGETPROPLEN ;
 int OFW_IOCTL (int,int ,struct ofiocdesc*) ;
 int strlen (char const*) ;

int
ofw_getproplen(int fd, phandle_t node, const char *name)
{
 struct ofiocdesc d;

 d.of_nodeid = node;
 d.of_namelen = strlen(name);
 d.of_name = name;
 OFW_IOCTL(fd, OFIOCGETPROPLEN, &d);
 return (d.of_buflen);
}
