
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct emu_pcm_info {int dev; int bufsz; } ;


 int EMUPAGESIZE ;
 int EMU_MAX_BUFSZ ;
 int EMU_REC_BUFSZ ;
 int pcm_getbuffersize (int ,int ,int ,int ) ;

__attribute__((used)) static int
emu_pcm_init(struct emu_pcm_info *sc)
{
 sc->bufsz = pcm_getbuffersize(sc->dev, EMUPAGESIZE, EMU_REC_BUFSZ, EMU_MAX_BUFSZ);
 return (0);
}
