
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_10__ {void* Status; int MajorFunction; scalar_t__ FunctionSpecificArea; int Length; } ;
typedef TYPE_1__ tiIOCTLPayload_t ;
struct TYPE_11__ {int deviceLength; int realDeviceCount; } ;
typedef TYPE_2__ tdDeviceListPayload_t ;
typedef int tdDeviceInfoIOCTL_t ;
struct thread {int dummy; } ;
struct sema {int dummy; } ;
struct cdev {struct agtiapi_softc* si_drv1; } ;
struct agtiapi_softc {int flags; int cardNo; struct sema* pIoctlSem; int tiRoot; int down_count; int up_count; } ;
struct TYPE_12__ {int datasize; int data; } ;
typedef TYPE_3__ datatosend ;
typedef scalar_t__ caddr_t ;
typedef int U32 ;



 int AGTIAPI_PORT_PANIC ;
 int AGTIAPI_PRINTK (char*,int) ;
 int AGTIAPI_SOFT_RESET ;
 int AGTIAPI_SUCCESS ;
 int ENOTTY ;
 void* IOCTL_CALL_FAIL ;
 int IOCTL_CALL_PENDING ;
 void* IOCTL_CALL_SUCCESS ;
 int IOCTL_MJ_CHECK_DPMC_EVENT ;
 int IOCTL_MJ_CHECK_FATAL_ERROR ;
 int IOCTL_MJ_FATAL_ERROR_DUMP_COMPLETE ;
 void* IOCTL_MJ_FATAL_ERROR_SOFT_RESET_TRIG ;
 void* IOCTL_MJ_FATAL_ERR_CHK_SEND_FALSE ;
 void* IOCTL_MJ_FATAL_ERR_CHK_SEND_TRUE ;
 int IOCTL_MJ_GET_DEVICE_LIST ;
 int IOCTL_MN_GET_CARD_INFO ;
 int M_WAITOK ;
 int TEMP ;
 int agtiapi_ResetCard (struct agtiapi_softc*,unsigned long*) ;
 int agtiapi_getCardInfo (struct agtiapi_softc*,int ,scalar_t__) ;
 int agtiapi_getdevlist (struct agtiapi_softc*,TYPE_1__*) ;
 int copyin (int ,TYPE_1__*,int) ;
 int copyout (TYPE_1__*,int ,int) ;
 int free (TYPE_1__*,int ) ;
 TYPE_1__* malloc (int,int ,int ) ;
 int ostiIOCTLWaitForSignal (int *,int *,int *,int *) ;
 int printf (char*,int) ;
 int sema_init (struct sema*,int ,char*) ;
 int strcpy (scalar_t__,char*) ;
 int tiCOMMgntIOCTL (int *,TYPE_1__*,struct agtiapi_softc*,int *,int *) ;

__attribute__((used)) static int agtiapi_CharIoctl( struct cdev *dev,
                              u_long cmd,
                              caddr_t data,
                              int fflag,
                              struct thread *td )
{
  struct sema mx;
  datatosend *load;
  tiIOCTLPayload_t *pIoctlPayload;
  struct agtiapi_softc *pCard;
  pCard=dev->si_drv1;
  U32 status = 0;
  U32 retValue;
  int err = 0;
  int error = 0;
  tdDeviceListPayload_t *pDeviceList = ((void*)0);
  unsigned long flags;

  switch (cmd)
  {
  case 128:
    load=(datatosend*)data;
    pIoctlPayload = malloc(load->datasize,TEMP,M_WAITOK);
    AGTIAPI_PRINTK( "agtiapi_CharIoctl: old load->datasize = %d\n", load->datasize );

    err = copyin(load->data,pIoctlPayload,load->datasize);
    if (err)
    {
      status = IOCTL_CALL_FAIL;
      return status;
    }
    sema_init(&mx,0,"sem");
    pCard->pIoctlSem =&mx;
    pCard->up_count = pCard->down_count = 0;
    if ( pIoctlPayload->MajorFunction == IOCTL_MJ_GET_DEVICE_LIST )
    {
      retValue = agtiapi_getdevlist(pCard, pIoctlPayload);
      if (retValue == 0)
      {
        pIoctlPayload->Status = IOCTL_CALL_SUCCESS;
        status = IOCTL_CALL_SUCCESS;
      }
      else
      {
        pIoctlPayload->Status = IOCTL_CALL_FAIL;
        status = IOCTL_CALL_FAIL;
      }

      pDeviceList = (tdDeviceListPayload_t*)pIoctlPayload->FunctionSpecificArea;
      load->datasize =load->datasize - sizeof(tdDeviceInfoIOCTL_t) * (pDeviceList->deviceLength - pDeviceList->realDeviceCount);
      AGTIAPI_PRINTK( "agtiapi_CharIoctl: new load->datasize = %d\n", load->datasize );

    }
    else if (pIoctlPayload->MajorFunction == IOCTL_MN_GET_CARD_INFO)
    {
      retValue = agtiapi_getCardInfo( pCard,
                                      pIoctlPayload->Length,
                                      (pIoctlPayload->FunctionSpecificArea) );
      if (retValue == 0)
      {
        pIoctlPayload->Status = IOCTL_CALL_SUCCESS;
        status = IOCTL_CALL_SUCCESS;
      }
      else
      {
        pIoctlPayload->Status = IOCTL_CALL_FAIL;
        status = IOCTL_CALL_FAIL;
      }
    }
    else if ( pIoctlPayload->MajorFunction == IOCTL_MJ_CHECK_DPMC_EVENT )
    {
      if ( pCard->flags & AGTIAPI_PORT_PANIC )
      {
        strcpy ( pIoctlPayload->FunctionSpecificArea, "DPMC LEAN\n" );
      }
      else
      {
        strcpy ( pIoctlPayload->FunctionSpecificArea, "do not dpmc lean\n" );
      }
      pIoctlPayload->Status = IOCTL_CALL_SUCCESS;
      status = IOCTL_CALL_SUCCESS;
    }
    else if (pIoctlPayload->MajorFunction == IOCTL_MJ_CHECK_FATAL_ERROR )
    {
      AGTIAPI_PRINTK("agtiapi_CharIoctl: IOCTL_MJ_CHECK_FATAL_ERROR call received for card %d\n", pCard->cardNo);

      if(pCard->flags & AGTIAPI_PORT_PANIC)
      {
        printf("agtiapi_CharIoctl: Port Panic Status For Card %d is True\n",pCard->cardNo);
        pIoctlPayload->Status = IOCTL_MJ_FATAL_ERR_CHK_SEND_TRUE;
      }
      else
      {
        AGTIAPI_PRINTK("agtiapi_CharIoctl: Port Panic Status For Card %d is False\n",pCard->cardNo);
        pIoctlPayload->Status = IOCTL_MJ_FATAL_ERR_CHK_SEND_FALSE;
      }
      status = IOCTL_CALL_SUCCESS;
    }
    else if (pIoctlPayload->MajorFunction == IOCTL_MJ_FATAL_ERROR_DUMP_COMPLETE)
    {
      AGTIAPI_PRINTK("agtiapi_CharIoctl: IOCTL_MJ_FATAL_ERROR_DUMP_COMPLETE call received for card %d\n", pCard->cardNo);

      pCard->flags |= AGTIAPI_SOFT_RESET;

      retValue = agtiapi_ResetCard (pCard, &flags);

      if(retValue == AGTIAPI_SUCCESS)
      {

        pCard->flags &= ~AGTIAPI_PORT_PANIC;
        pIoctlPayload->Status = IOCTL_MJ_FATAL_ERROR_SOFT_RESET_TRIG;
        status = IOCTL_CALL_SUCCESS;
      }
      else
      {
        pIoctlPayload->Status = IOCTL_CALL_FAIL;
        status = IOCTL_CALL_FAIL;
      }
    }
    else
    {
      status = tiCOMMgntIOCTL( &pCard->tiRoot,
                               pIoctlPayload,
                               pCard,
                               ((void*)0),
                               ((void*)0) );
      if (status == IOCTL_CALL_PENDING)
      {
        ostiIOCTLWaitForSignal(&pCard->tiRoot,((void*)0), ((void*)0), ((void*)0));
        status = IOCTL_CALL_SUCCESS;
      }
    }
    pCard->pIoctlSem = ((void*)0);
    err = 0;


    err=copyout(pIoctlPayload,load->data,load->datasize);
    if (err)
    {
      status = IOCTL_CALL_FAIL;
      return status;
    }
    free(pIoctlPayload,TEMP);
    pIoctlPayload=((void*)0);
    break;
  default:
    error = ENOTTY;
    break;
  }
  return(status);
}
