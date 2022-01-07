
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct emu_sc_info {int root; int ctx; int rm; } ;


 int CTLFLAG_RW ;
 int CTLTYPE_INT ;
 int OID_AUTO ;
 int SYSCTL_ADD_PROC (int ,int ,int ,char*,int,struct emu_sc_info*,int const,int ,char*,char*) ;
 int SYSCTL_CHILDREN (int ) ;
 int emu_rm_gpr_alloc (int ,int) ;
 int emumix_set_fxvol (struct emu_sc_info*,int,int ) ;
 int snprintf (char*,int,char*,char const*) ;
 int sysctl_emu_mixer_control ;

__attribute__((used)) static int
emu_addefxmixer(struct emu_sc_info *sc, const char *mix_name, const int mix_id, uint32_t defvolume)
{
 int volgpr;
 char sysctl_name[32];

 volgpr = emu_rm_gpr_alloc(sc->rm, 1);
 emumix_set_fxvol(sc, volgpr, defvolume);




 if (mix_name != ((void*)0)) {





  snprintf(sysctl_name, 32, "_%s", mix_name);
  SYSCTL_ADD_PROC(sc->ctx,
   SYSCTL_CHILDREN(sc->root),
   OID_AUTO, sysctl_name,
   CTLTYPE_INT | CTLFLAG_RW, sc, mix_id,
   sysctl_emu_mixer_control, "I", "");
 }

 return (volgpr);
}
