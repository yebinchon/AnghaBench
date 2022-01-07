
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct ipmi_softc {int ipmi_opened; } ;
struct ipmi_device {struct ipmi_softc* ipmi_softc; int ipmi_lun; int ipmi_address; int ipmi_completed_requests; } ;
struct cdev {struct ipmi_softc* si_drv1; } ;


 int ENOENT ;
 int IPMI_BMC_SLAVE_ADDR ;
 int IPMI_BMC_SMS_LUN ;
 int IPMI_LOCK (struct ipmi_softc*) ;
 int IPMI_UNLOCK (struct ipmi_softc*) ;
 int M_IPMI ;
 int M_WAITOK ;
 int M_ZERO ;
 int TAILQ_INIT (int *) ;
 int devfs_set_cdevpriv (struct ipmi_device*,int ) ;
 int free (struct ipmi_device*,int ) ;
 int ipmi_dtor ;
 struct ipmi_device* malloc (int,int ,int) ;
 int on ;

__attribute__((used)) static int
ipmi_open(struct cdev *cdev, int flags, int fmt, struct thread *td)
{
 struct ipmi_device *dev;
 struct ipmi_softc *sc;
 int error;

 if (!on)
  return (ENOENT);


 dev = malloc(sizeof(struct ipmi_device), M_IPMI, M_WAITOK | M_ZERO);
 error = devfs_set_cdevpriv(dev, ipmi_dtor);
 if (error) {
  free(dev, M_IPMI);
  return (error);
 }

 sc = cdev->si_drv1;
 TAILQ_INIT(&dev->ipmi_completed_requests);
 dev->ipmi_address = IPMI_BMC_SLAVE_ADDR;
 dev->ipmi_lun = IPMI_BMC_SMS_LUN;
 dev->ipmi_softc = sc;
 IPMI_LOCK(sc);
 sc->ipmi_opened++;
 IPMI_UNLOCK(sc);

 return (0);
}
