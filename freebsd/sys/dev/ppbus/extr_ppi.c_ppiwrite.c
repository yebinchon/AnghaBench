
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uio {int uio_resid; } ;
struct ppi_data {int ppi_device; } ;
struct TYPE_2__ {int member_2; int member_1; int member_0; } ;
struct ppb_microseq {TYPE_1__ member_1; int member_0; } ;
struct cdev {struct ppi_data* si_drv1; } ;
typedef int device_t ;


 int ADDRESS ;
 int BUFSIZE ;
 int ENODEV ;

 int LENGTH ;
 int MS_OP_PUT ;
 struct ppb_microseq MS_RET (int ) ;
 int MS_UNKNOWN ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int PCATCH ;
 int PPBPRI ;
 int PPB_BYTE ;
 int PPB_ECP ;
 scalar_t__ PPB_PERIPHERAL_IDLE ;
 scalar_t__ PPB_PERIPHERAL_NEGOCIATION ;
 int byte_peripheral_write (int ,char*,int,int*) ;
 int device_get_parent (int ) ;
 int free (char*,int ) ;
 char* malloc (int ,int ,int ) ;
 int min (int ,int ) ;
 scalar_t__ ppb_1284_get_state (int ) ;
 scalar_t__ ppb_1284_negociate (int ,int ,int ) ;
 int ppb_1284_terminate (int ) ;
 int ppb_MS_init_msq (struct ppb_microseq*,int,int ,char*,int ,int) ;
 int ppb_MS_microseq (int ,struct ppb_microseq*,int*) ;
 int ppb_lock (int ) ;
 int ppb_peripheral_negociate (int ,int ,int ) ;
 int ppb_sleep (int ,struct ppi_data*,int,char*,int ) ;
 int ppb_unlock (int ) ;
 int ppi_enable_intr (int ) ;
 int printf (char*) ;
 int uiomove (char*,int,struct uio*) ;

__attribute__((used)) static int
ppiwrite(struct cdev *dev, struct uio *uio, int ioflag)
{
 int error = ENODEV;


 return (error);
}
