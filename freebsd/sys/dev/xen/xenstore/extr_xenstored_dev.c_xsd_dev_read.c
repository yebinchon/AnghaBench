
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {int uio_resid; } ;
struct cdev {int dummy; } ;
typedef int evtchn ;


 int EINVAL ;
 int XSD_READ_SIZE ;
 int snprintf (char*,int,char*,int) ;
 int uiomove (char*,int,struct uio*) ;
 int xs_evtchn () ;

__attribute__((used)) static int
xsd_dev_read(struct cdev *dev, struct uio *uio, int ioflag)
{
 char evtchn[XSD_READ_SIZE];
 int error, len;

 len = snprintf(evtchn, sizeof(evtchn), "%u", xs_evtchn());
 if (len < 0 || len > uio->uio_resid)
  return (EINVAL);

 error = uiomove(evtchn, len, uio);
 if (error)
  return (error);

 return (0);
}
