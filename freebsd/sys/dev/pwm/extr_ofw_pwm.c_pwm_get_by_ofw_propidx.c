
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_channel {void* flags; void* period; void* channel; int * dev; } ;
typedef struct pwm_channel* pwm_channel_t ;
typedef int phandle_t ;
typedef void* pcell_t ;
typedef int device_t ;


 int ENODEV ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int * OF_device_from_xref (int ) ;
 int OF_prop_free (void**) ;
 struct pwm_channel* malloc (int,int ,int) ;
 int ofw_bus_parse_xref_list_alloc (int ,char const*,char*,int,int *,int*,void***) ;

int
pwm_get_by_ofw_propidx(device_t consumer, phandle_t node,
    const char *prop_name, int idx, pwm_channel_t *out_channel)
{
 phandle_t xref;
 pcell_t *cells;
 struct pwm_channel channel;
 int ncells, rv;

 rv = ofw_bus_parse_xref_list_alloc(node, prop_name, "#pwm-cells",
   idx, &xref, &ncells, &cells);
 if (rv != 0)
  return (rv);

 channel.dev = OF_device_from_xref(xref);
 if (channel.dev == ((void*)0)) {
  OF_prop_free(cells);
  return (ENODEV);
 }

 channel.channel = cells[0];
 channel.period = cells[1];

 if (ncells >= 3)
  channel.flags = cells[2];

 *out_channel = malloc(sizeof(struct pwm_channel), M_DEVBUF, M_WAITOK | M_ZERO);
 **out_channel = channel;
 return (0);
}
