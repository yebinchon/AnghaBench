
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_audio_ctxt {scalar_t__ run; } ;



__attribute__((used)) static int
hda_audio_ctxt_stop(struct hda_audio_ctxt *actx)
{
 actx->run = 0;
 return (0);
}
