; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_hdspe-pcm.c_hdspe_start_audio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_hdspe-pcm.c_hdspe_start_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32 }

@HDSPE_AUDIO_INT_ENABLE = common dso_local global i32 0, align 4
@HDSPE_ENABLE = common dso_local global i32 0, align 4
@HDSPE_CONTROL_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sc_info*)* @hdspe_start_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdspe_start_audio(%struct.sc_info* %0) #0 {
  %2 = alloca %struct.sc_info*, align 8
  store %struct.sc_info* %0, %struct.sc_info** %2, align 8
  %3 = load i32, i32* @HDSPE_AUDIO_INT_ENABLE, align 4
  %4 = load i32, i32* @HDSPE_ENABLE, align 4
  %5 = or i32 %3, %4
  %6 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %7 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = or i32 %8, %5
  store i32 %9, i32* %7, align 4
  %10 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %11 = load i32, i32* @HDSPE_CONTROL_REG, align 4
  %12 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %13 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @hdspe_write_4(%struct.sc_info* %10, i32 %11, i32 %14)
  ret void
}

declare dso_local i32 @hdspe_write_4(%struct.sc_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
