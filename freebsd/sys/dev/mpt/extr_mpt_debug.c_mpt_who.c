
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
mpt_who(int who_init)
{
 const char *who;

 switch (who_init) {
 case 130: who = "No One"; break;
 case 133: who = "BIOS"; break;
 case 128: who = "ROM BIOS"; break;
 case 129: who = "PCI Peer"; break;
 case 132: who = "Host Driver"; break;
 case 131: who = "Manufacturing"; break;
 default: who = "Unknown"; break;
 }
 return who;
}
