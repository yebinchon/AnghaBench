; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_if_dtsec_rm.c_dtsec_rm_fi_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_if_dtsec_rm.c_dtsec_rm_fi_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dtsec_rm_frame_info = type { i32 }
%struct.dtsec_softc = type { i32 }

@M_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dtsec_rm_frame_info* (%struct.dtsec_softc*)* @dtsec_rm_fi_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dtsec_rm_frame_info* @dtsec_rm_fi_alloc(%struct.dtsec_softc* %0) #0 {
  %2 = alloca %struct.dtsec_softc*, align 8
  %3 = alloca %struct.dtsec_rm_frame_info*, align 8
  store %struct.dtsec_softc* %0, %struct.dtsec_softc** %2, align 8
  %4 = load %struct.dtsec_softc*, %struct.dtsec_softc** %2, align 8
  %5 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @M_NOWAIT, align 4
  %8 = call %struct.dtsec_rm_frame_info* @uma_zalloc(i32 %6, i32 %7)
  store %struct.dtsec_rm_frame_info* %8, %struct.dtsec_rm_frame_info** %3, align 8
  %9 = load %struct.dtsec_rm_frame_info*, %struct.dtsec_rm_frame_info** %3, align 8
  ret %struct.dtsec_rm_frame_info* %9
}

declare dso_local %struct.dtsec_rm_frame_info* @uma_zalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
