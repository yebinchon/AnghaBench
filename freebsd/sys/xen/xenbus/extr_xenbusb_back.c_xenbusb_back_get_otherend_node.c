
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device_ivars {char* xd_otherend_path; int xd_otherend_path_len; int xd_otherend_id; int xd_node; } ;
typedef int device_t ;


 int M_XENBUS ;
 int M_XENSTORE ;
 int XST_NIL ;
 int free (char*,int ) ;
 char* strdup (char*,int ) ;
 int strlen (char*) ;
 int xs_gather (int ,int ,char*,char*,int *,char*,int *,char**,int *) ;

__attribute__((used)) static int
xenbusb_back_get_otherend_node(device_t dev, struct xenbus_device_ivars *ivars)
{
 char *otherend_path;
 int error;

 if (ivars->xd_otherend_path != ((void*)0)) {
  free(ivars->xd_otherend_path, M_XENBUS);
  ivars->xd_otherend_path = ((void*)0);
 }

 error = xs_gather(XST_NIL, ivars->xd_node,
     "frontend-id", "%i", &ivars->xd_otherend_id,
     "frontend", ((void*)0), &otherend_path,
     ((void*)0));

 if (error == 0) {
  ivars->xd_otherend_path = strdup(otherend_path, M_XENBUS);
  ivars->xd_otherend_path_len = strlen(otherend_path);
  free(otherend_path, M_XENSTORE);
 }
 return (error);
}
