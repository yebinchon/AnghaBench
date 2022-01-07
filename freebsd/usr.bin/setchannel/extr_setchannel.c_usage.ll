; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/setchannel/extr_setchannel.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/setchannel/extr_setchannel.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [823 x i8] c"Usage: setchannel [-a {on|off}] [-c | -r | -s | -t] [-g geom] [-m chnl_set] [chnl | freq]\0A  -a    Enable / disable AFC.\0A  -c    Select composite input.\0A  -d    Select tuner unit number.\0A  -r    Select radio input.\0A  -s    Select svideo input.\0A  -t    Select tuner.\0A  -g    Select geometry.\0A          352x240 or 352x288 = VCD\0A          480x480 or 480x576 = SVCD\0A          352x480 or 352x576 = DVD (half D1)\0A          720x480 or 720x576 = DVD (full D1)\0A  -m    Select channel set / system.\0A          0 = Tuner Default\0A          %u = US Broadcast / NTSC\0A          %u = US Cable / NTSC\0A          %u = Western Europe / PAL\0A          %u = Japan Broadcast / NTSC\0A          %u = Japan Cable / NTSC\0A          %u = Australia / PAL\0A          %u = France / SECAM\0A  chnl  Channel\0A  freq  Frequency in MHz (must include decimal point).\0A\00", align 1
@CHNLSET_NABCST = common dso_local global i32 0, align 4
@CHNLSET_CABLEIRC = common dso_local global i32 0, align 4
@CHNLSET_WEUROPE = common dso_local global i32 0, align 4
@CHNLSET_JPNBCST = common dso_local global i32 0, align 4
@CHNLSET_JPNCABLE = common dso_local global i32 0, align 4
@CHNLSET_AUSTRALIA = common dso_local global i32 0, align 4
@CHNLSET_FRANCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage() #0 {
  %1 = load i32, i32* @CHNLSET_NABCST, align 4
  %2 = load i32, i32* @CHNLSET_CABLEIRC, align 4
  %3 = load i32, i32* @CHNLSET_WEUROPE, align 4
  %4 = load i32, i32* @CHNLSET_JPNBCST, align 4
  %5 = load i32, i32* @CHNLSET_JPNCABLE, align 4
  %6 = load i32, i32* @CHNLSET_AUSTRALIA, align 4
  %7 = load i32, i32* @CHNLSET_FRANCE, align 4
  %8 = call i32 @printf(i8* getelementptr inbounds ([823 x i8], [823 x i8]* @.str, i64 0, i64 0), i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7)
  ret void
}

declare dso_local i32 @printf(i8*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
