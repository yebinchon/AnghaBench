
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofiocdesc {char const* of_name; int of_buflen; int of_buf; int of_namelen; int of_nodeid; } ;
typedef int phandle_t ;


 int OFIOCSET ;
 int OFW_IOCTL (int,int ,struct ofiocdesc*) ;
 int free (int ) ;
 int memcpy (int ,void const*,int) ;
 int ofw_malloc (int) ;
 int strlen (char const*) ;

int
ofw_setprop(int fd, phandle_t node, const char *name, const void *buf,
    int buflen)
{
 struct ofiocdesc d;

 d.of_nodeid = node;
 d.of_namelen = strlen(name);
 d.of_name = name;
 d.of_buflen = buflen;
 d.of_buf = ofw_malloc(buflen);
 memcpy(d.of_buf, buf, buflen);
 OFW_IOCTL(fd, OFIOCSET, &d);
 free(d.of_buf);
 return (d.of_buflen);
}
