; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi_cam.c_mfip_cam_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi_cam.c_mfip_cam_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_sim = type { i32 }
%struct.mfip_softc = type { %struct.mfi_softc* }
%struct.mfi_softc = type { i32 (%struct.mfi_softc*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_sim*)* @mfip_cam_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mfip_cam_poll(%struct.cam_sim* %0) #0 {
  %2 = alloca %struct.cam_sim*, align 8
  %3 = alloca %struct.mfip_softc*, align 8
  %4 = alloca %struct.mfi_softc*, align 8
  store %struct.cam_sim* %0, %struct.cam_sim** %2, align 8
  %5 = load %struct.cam_sim*, %struct.cam_sim** %2, align 8
  %6 = call %struct.mfip_softc* @cam_sim_softc(%struct.cam_sim* %5)
  store %struct.mfip_softc* %6, %struct.mfip_softc** %3, align 8
  %7 = load %struct.mfip_softc*, %struct.mfip_softc** %3, align 8
  %8 = getelementptr inbounds %struct.mfip_softc, %struct.mfip_softc* %7, i32 0, i32 0
  %9 = load %struct.mfi_softc*, %struct.mfi_softc** %8, align 8
  store %struct.mfi_softc* %9, %struct.mfi_softc** %4, align 8
  %10 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %11 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %10, i32 0, i32 0
  %12 = load i32 (%struct.mfi_softc*)*, i32 (%struct.mfi_softc*)** %11, align 8
  %13 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %14 = call i32 %12(%struct.mfi_softc* %13)
  ret void
}

declare dso_local %struct.mfip_softc* @cam_sim_softc(%struct.cam_sim*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
