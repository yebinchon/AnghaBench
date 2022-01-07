
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int channel; int buffer; } ;
struct TYPE_3__ {int channel; int buffer; } ;
struct sb_info {TYPE_2__ rch; TYPE_1__ pch; } ;


 int DSP_DATA_AVAIL ;
 int chn_intr (int ) ;
 int sb_lock (struct sb_info*) ;
 int sb_rd (struct sb_info*,int ) ;
 int sb_unlock (struct sb_info*) ;
 scalar_t__ sndbuf_runsz (int ) ;

__attribute__((used)) static void
sb_intr(void *arg)
{
     struct sb_info *sb = (struct sb_info *)arg;

 sb_lock(sb);
     if (sndbuf_runsz(sb->pch.buffer) > 0) {
  sb_unlock(sb);
  chn_intr(sb->pch.channel);
  sb_lock(sb);
 }

     if (sndbuf_runsz(sb->rch.buffer) > 0) {
  sb_unlock(sb);
  chn_intr(sb->rch.channel);
  sb_lock(sb);
 }

 sb_rd(sb, DSP_DATA_AVAIL);
 sb_unlock(sb);
}
