
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;
 int pci_get_vendor (int ) ;

const char *
ata_pcivendor2str(device_t dev)
{
    switch (pci_get_vendor(dev)) {
    case 150: return "Acard";
    case 149: return "AcerLabs";
    case 147: return "AMD";
    case 148: return "Adaptec";
    case 146: return "ATI";
    case 143: return "Cyrix";
    case 144: return "Cypress";
    case 142: return "HighPoint";
    case 141: return "Intel";
    case 140: return "ITE";
    case 139: return "JMicron";
    case 137: return "Marvell";
    case 138: return "Marvell";
    case 135: return "National";
    case 134: return "Netcell";
    case 133: return "nVidia";
    case 132: return "Promise";
    case 131: return "ServerWorks";
    case 130: return "SiI";
    case 129: return "SiS";
    case 128: return "VIA";
    case 145: return "Cenatek";
    case 136: return "Micron";
    default: return "Generic";
    }
}
