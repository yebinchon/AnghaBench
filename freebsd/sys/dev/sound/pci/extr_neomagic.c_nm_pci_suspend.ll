; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_neomagic.c_nm_pci_suspend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_neomagic.c_nm_pci_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@NM_PLAYBACK_ENABLE_REG = common dso_local global i32 0, align 4
@NM_AUDIO_MUTE_REG = common dso_local global i32 0, align 4
@NM_AUDIO_MUTE_BOTH = common dso_local global i32 0, align 4
@NM_RECORD_ENABLE_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @nm_pci_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nm_pci_suspend(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sc_info*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.sc_info* @pcm_getdevinfo(i32 %4)
  store %struct.sc_info* %5, %struct.sc_info** %3, align 8
  %6 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %7 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %13 = load i32, i32* @NM_PLAYBACK_ENABLE_REG, align 4
  %14 = call i32 @nm_wr(%struct.sc_info* %12, i32 %13, i32 0, i32 1)
  %15 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %16 = load i32, i32* @NM_AUDIO_MUTE_REG, align 4
  %17 = load i32, i32* @NM_AUDIO_MUTE_BOTH, align 4
  %18 = call i32 @nm_wr(%struct.sc_info* %15, i32 %16, i32 %17, i32 2)
  br label %19

19:                                               ; preds = %11, %1
  %20 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %21 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %27 = load i32, i32* @NM_RECORD_ENABLE_REG, align 4
  %28 = call i32 @nm_wr(%struct.sc_info* %26, i32 %27, i32 0, i32 1)
  br label %29

29:                                               ; preds = %25, %19
  ret i32 0
}

declare dso_local %struct.sc_info* @pcm_getdevinfo(i32) #1

declare dso_local i32 @nm_wr(%struct.sc_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
