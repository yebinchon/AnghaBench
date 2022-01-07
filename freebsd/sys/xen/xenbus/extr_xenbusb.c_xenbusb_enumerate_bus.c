
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct xenbusb_softc {int xbs_dev; int xbs_node; } ;


 int M_XENSTORE ;
 int XENBUSB_ENUMERATE_TYPE (int ,char const*) ;
 int XST_NIL ;
 int free (char const**,int ) ;
 int xs_directory (int ,int ,char*,size_t*,char const***) ;

__attribute__((used)) static int
xenbusb_enumerate_bus(struct xenbusb_softc *xbs)
{
 const char **types;
 u_int type_idx;
 u_int type_count;
 int error;

 error = xs_directory(XST_NIL, xbs->xbs_node, "", &type_count, &types);
 if (error)
  return (error);

 for (type_idx = 0; type_idx < type_count; type_idx++)
  XENBUSB_ENUMERATE_TYPE(xbs->xbs_dev, types[type_idx]);

 free(types, M_XENSTORE);

 return (0);
}
