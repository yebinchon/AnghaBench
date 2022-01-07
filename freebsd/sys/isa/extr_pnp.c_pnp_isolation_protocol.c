
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_4__ {int vendor_id; } ;
typedef TYPE_1__ pnp_id ;
typedef int device_t ;


 int DELAY (int) ;
 int M_TEMP ;
 int PNP_CONFIG_CONTROL ;
 int PNP_CONFIG_CONTROL_RESET_CSN ;
 int PNP_CONFIG_CONTROL_WAIT_FOR_KEY ;
 int PNP_MAX_CARDS ;
 int PNP_SERIAL_ISOLATION ;
 int PNP_SET_CSN ;
 int PNP_SET_RD_DATA ;
 int PNP_WAKE ;
 int _PNP_ADDRESS ;
 scalar_t__ bootverbose ;
 int free (int *,int ) ;
 int outb (int ,int ) ;
 int pnp_create_devices (int ,TYPE_1__*,int,int *,int) ;
 char* pnp_eisaformat (int ) ;
 scalar_t__ pnp_get_serial (TYPE_1__*) ;
 int pnp_rd_port ;
 int pnp_read_resources (int **,int*,int*) ;
 int pnp_send_initiation_key () ;
 int pnp_write (int ,int) ;
 int printf (char*,char*) ;

__attribute__((used)) static int
pnp_isolation_protocol(device_t parent)
{
 int csn;
 pnp_id id;
 int found = 0, len;
 u_char *resources = ((void*)0);
 int space = 0;
 int error;





 pnp_send_initiation_key();




 pnp_write(PNP_CONFIG_CONTROL, PNP_CONFIG_CONTROL_RESET_CSN);




 pnp_write(PNP_WAKE, 0);




 pnp_write(PNP_SET_RD_DATA, pnp_rd_port);

 for (csn = 1; csn < PNP_MAX_CARDS; csn++) {



  outb(_PNP_ADDRESS, PNP_SERIAL_ISOLATION);
  DELAY(1000);

  if (pnp_get_serial(&id)) {
   pnp_write(PNP_SET_CSN, csn);
   if (bootverbose)
    printf("Reading PnP configuration for %s.\n",
        pnp_eisaformat(id.vendor_id));
   error = pnp_read_resources(&resources, &space, &len);
   if (error)
    break;
   pnp_create_devices(parent, &id, csn, resources, len);
   found++;
  } else
   break;






  pnp_write(PNP_WAKE, 0);
 }






 pnp_write(PNP_CONFIG_CONTROL, PNP_CONFIG_CONTROL_WAIT_FOR_KEY);




 if (resources)
  free(resources, M_TEMP);

 return (found);
}
