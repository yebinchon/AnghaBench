
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ipw_softc {int dummy; } ;
struct ipw_scan_options {void* flags; void* channels; } ;
typedef int opts ;


 int DPRINTF (char*) ;
 int IPW_CMD_SET_SCAN_OPTIONS ;
 void* htole32 (int ) ;
 int ipw_cmd (struct ipw_softc*,int ,struct ipw_scan_options*,int) ;

__attribute__((used)) static int
ipw_setscanopts(struct ipw_softc *sc, uint32_t chanmask, uint32_t flags)
{
 struct ipw_scan_options opts;

 DPRINTF(("Scan options: mask 0x%x flags 0x%x\n", chanmask, flags));
 opts.channels = htole32(chanmask);
 opts.flags = htole32(flags);
 return ipw_cmd(sc, IPW_CMD_SET_SCAN_OPTIONS, &opts, sizeof(opts));
}
