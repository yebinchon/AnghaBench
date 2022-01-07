
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {struct an_softc* if_softc; } ;
struct an_softc {int * an_flash_buffer; int areq; scalar_t__ mpi350; } ;
struct aironet_ioctl {int command; int len; int data; } ;
 int AN_LOCK (struct an_softc*) ;
 int AN_UNLOCK (struct an_softc*) ;
 int EINVAL ;
 int EIO ;
 int ENOBUFS ;
 int FLASH_SIZE ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int cmdreset (struct ifnet*) ;
 int copyin (int ,int *,int) ;
 int flashgchar (struct ifnet*,int,int) ;
 int flashpchar (struct ifnet*,int,int) ;
 int flashputbuf (struct ifnet*) ;
 int flashrestart (struct ifnet*) ;
 int free (int *,int ) ;
 int if_printf (struct ifnet*,char*,...) ;
 int * malloc (int,int ,int ) ;
 int setflashmode (struct ifnet*) ;

__attribute__((used)) static int
flashcard(struct ifnet *ifp, struct aironet_ioctl *l_ioctl)
{
 int z = 0, status;
 struct an_softc *sc;

 sc = ifp->if_softc;
 if (sc->mpi350) {
  if_printf(ifp, "flashing not supported on MPI 350 yet\n");
  return(-1);
 }
 status = l_ioctl->command;

 switch (l_ioctl->command) {
 case 130:
  return cmdreset(ifp);
  break;
 case 129:
  if (sc->an_flash_buffer) {
   free(sc->an_flash_buffer, M_DEVBUF);
   sc->an_flash_buffer = ((void*)0);
  }
  sc->an_flash_buffer = malloc(FLASH_SIZE, M_DEVBUF, M_WAITOK);
  if (sc->an_flash_buffer)
   return setflashmode(ifp);
  else
   return ENOBUFS;
  break;
 case 132:
  if (l_ioctl->len > sizeof(sc->areq)) {
   return -EINVAL;
  }
  AN_UNLOCK(sc);
  status = copyin(l_ioctl->data, &sc->areq, l_ioctl->len);
  AN_LOCK(sc);
  if (status)
   return status;
  z = *(int *)&sc->areq;
  if ((status = flashgchar(ifp, z, 8000)) == 1)
   return 0;
  else
   return -1;
 case 131:
  if (l_ioctl->len > sizeof(sc->areq)) {
   return -EINVAL;
  }
  AN_UNLOCK(sc);
  status = copyin(l_ioctl->data, &sc->areq, l_ioctl->len);
  AN_LOCK(sc);
  if (status)
   return status;
  z = *(int *)&sc->areq;
  if ((status = flashpchar(ifp, z, 8000)) == -1)
   return -EIO;
  else
   return 0;
  break;
 case 133:
  if (l_ioctl->len > FLASH_SIZE) {
   if_printf(ifp, "Buffer to big, %x %x\n",
          l_ioctl->len, FLASH_SIZE);
   return -EINVAL;
  }
  AN_UNLOCK(sc);
  status = copyin(l_ioctl->data, sc->an_flash_buffer, l_ioctl->len);
  AN_LOCK(sc);
  if (status)
   return status;

  if ((status = flashputbuf(ifp)) != 0)
   return -EIO;
  else
   return 0;
  break;
 case 128:
  if ((status = flashrestart(ifp)) != 0) {
   if_printf(ifp, "FLASHRESTART returned %d\n", status);
   return -EIO;
  } else
   return 0;

  break;
 default:
  return -EINVAL;
 }

 return -EINVAL;
}
