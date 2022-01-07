
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbusb_softc {int xbs_node; } ;
typedef int device_t ;


 int M_XENSTORE ;
 int XST_NIL ;
 struct xenbusb_softc* device_get_softc (int ) ;
 int free (char const**,int ) ;
 int xenbusb_add_device (int ,char const*,char const*) ;
 int xs_directory (int ,int ,char const*,unsigned int*,char const***) ;

__attribute__((used)) static int
xenbusb_front_enumerate_type(device_t dev, const char *type)
{
 struct xenbusb_softc *xbs;
 const char **dir;
 unsigned int i, count;
 int error;

 xbs = device_get_softc(dev);
 error = xs_directory(XST_NIL, xbs->xbs_node, type, &count, &dir);
 if (error)
  return (error);
 for (i = 0; i < count; i++)
  xenbusb_add_device(dev, type, dir[i]);

 free(dir, M_XENSTORE);

 return (0);
}
