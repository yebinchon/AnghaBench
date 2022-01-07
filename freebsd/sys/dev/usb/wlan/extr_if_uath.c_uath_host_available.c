
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uath_softc {int dummy; } ;
struct uath_cmd_host_available {void* sw_ver_build; void* sw_ver_patch; void* sw_ver_minor; void* sw_ver_major; } ;


 int ATH_SW_VER_BUILD ;
 int ATH_SW_VER_MAJOR ;
 int ATH_SW_VER_MINOR ;
 int ATH_SW_VER_PATCH ;
 int UATH_ASSERT_LOCKED (struct uath_softc*) ;
 int WDCMSG_HOST_AVAILABLE ;
 void* htobe32 (int ) ;
 int uath_cmd_read (struct uath_softc*,int ,struct uath_cmd_host_available*,int,int *,int ,int ) ;

__attribute__((used)) static int
uath_host_available(struct uath_softc *sc)
{
 struct uath_cmd_host_available setup;

 UATH_ASSERT_LOCKED(sc);


 setup.sw_ver_major = htobe32(ATH_SW_VER_MAJOR);
 setup.sw_ver_minor = htobe32(ATH_SW_VER_MINOR);
 setup.sw_ver_patch = htobe32(ATH_SW_VER_PATCH);
 setup.sw_ver_build = htobe32(ATH_SW_VER_BUILD);
 return uath_cmd_read(sc, WDCMSG_HOST_AVAILABLE,
  &setup, sizeof setup, ((void*)0), 0, 0);
}
