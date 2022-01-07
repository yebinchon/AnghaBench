
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int device_t ;


 int ENOENT ;
 int ETHER_ADDR_LEN ;
 int M_XENBUS ;
 int XST_NIL ;
 int free (char*,int ) ;
 int strtoul (char*,char**,int) ;
 int xenbus_dev_fatal (int ,int,char*,char const*) ;
 char* xenbus_get_node (int ) ;
 char* xenbus_get_otherend_path (int ) ;
 int xs_read (int ,char const*,char*,int *,void**) ;

__attribute__((used)) static int
xen_net_read_mac(device_t dev, uint8_t mac[])
{
 int error, i;
 char *s, *e, *macstr;
 const char *path;

 path = xenbus_get_node(dev);
 error = xs_read(XST_NIL, path, "mac", ((void*)0), (void **) &macstr);
 if (error == ENOENT) {
  path = xenbus_get_otherend_path(dev);
  error = xs_read(XST_NIL, path, "mac", ((void*)0), (void **) &macstr);
 }
 if (error != 0) {
  xenbus_dev_fatal(dev, error, "parsing %s/mac", path);
  return (error);
 }

 s = macstr;
 for (i = 0; i < ETHER_ADDR_LEN; i++) {
  mac[i] = strtoul(s, &e, 16);
  if (s == e || (e[0] != ':' && e[0] != 0)) {
   free(macstr, M_XENBUS);
   return (ENOENT);
  }
  s = &e[1];
 }
 free(macstr, M_XENBUS);
 return (0);
}
