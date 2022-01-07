
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
struct pcib_softc {int dummy; } ;
typedef int device_t ;


 int PCIB_WRITE_CONFIG (int ,int ,int ,int ,int ,int ,int) ;
 int device_get_parent (int ) ;
 struct pcib_softc* device_get_softc (int ) ;
 int pcib_present (struct pcib_softc*) ;
 int pcib_xlate_ari (int ,int ,int *,int *) ;

__attribute__((used)) static void
pcib_write_config(device_t dev, u_int b, u_int s, u_int f, u_int reg, uint32_t val, int width)
{







 pcib_xlate_ari(dev, b, &s, &f);
 PCIB_WRITE_CONFIG(device_get_parent(device_get_parent(dev)), b, s, f,
     reg, val, width);
}
