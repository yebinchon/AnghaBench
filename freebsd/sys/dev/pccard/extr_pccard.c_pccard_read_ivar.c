
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_2__ {int prodext; char** cis1_info; int product; int manufacturer; } ;
struct pccard_softc {TYPE_1__ card; } ;
struct pccard_ivar {struct pccard_function* pf; } ;
struct pccard_function {int pf_funce_disk_interface; int pf_funce_disk_power; int number; int function; int pf_funce_lan_nid; } ;
typedef int device_t ;


 int EINVAL ;
 int ETHER_ADDR_LEN ;
 struct pccard_ivar* PCCARD_IVAR (int ) ;
 struct pccard_softc* PCCARD_SOFTC (int ) ;
 int bcopy (int ,uintptr_t*,int ) ;
 int panic (char*) ;

__attribute__((used)) static int
pccard_read_ivar(device_t bus, device_t child, int which, uintptr_t *result)
{
 struct pccard_ivar *devi = PCCARD_IVAR(child);
 struct pccard_function *pf = devi->pf;
 struct pccard_softc *sc = PCCARD_SOFTC(bus);

 if (!pf)
  panic("No pccard function pointer");
 switch (which) {
 default:
  return (EINVAL);
 case 135:
  *(uint16_t *)result = pf->pf_funce_disk_interface |
      (pf->pf_funce_disk_power << 8);
  break;
 case 136:
  bcopy(pf->pf_funce_lan_nid, result, ETHER_ADDR_LEN);
  break;
 case 129:
  *(uint32_t *)result = sc->card.manufacturer;
  break;
 case 131:
  *(uint32_t *)result = sc->card.product;
  break;
 case 132:
  *(uint16_t *)result = sc->card.prodext;
  break;
 case 134:
  *(uint32_t *)result = pf->function;
  break;
 case 133:
  *(uint32_t *)result = pf->number;
  break;
 case 128:
  *(const char **)result = sc->card.cis1_info[0];
  break;
 case 130:
  *(const char **)result = sc->card.cis1_info[1];
  break;
 case 138:
  *(const char **)result = sc->card.cis1_info[2];
  break;
 case 137:
  *(const char **)result = sc->card.cis1_info[3];
  break;
 }
 return (0);
}
