; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_cam_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_cam_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_sim = type { i32 }
%struct.ciss_softc = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_sim*)* @ciss_cam_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ciss_cam_poll(%struct.cam_sim* %0) #0 {
  %2 = alloca %struct.cam_sim*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ciss_softc*, align 8
  store %struct.cam_sim* %0, %struct.cam_sim** %2, align 8
  %5 = load %struct.cam_sim*, %struct.cam_sim** %2, align 8
  %6 = call %struct.ciss_softc* @cam_sim_softc(%struct.cam_sim* %5)
  store %struct.ciss_softc* %6, %struct.ciss_softc** %4, align 8
  %7 = call i32 @debug_called(i32 2)
  %8 = call i32 @STAILQ_INIT(i32* %3)
  %9 = load %struct.ciss_softc*, %struct.ciss_softc** %4, align 8
  %10 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.ciss_softc*, %struct.ciss_softc** %4, align 8
  %15 = call i32 @ciss_perf_done(%struct.ciss_softc* %14, i32* %3)
  br label %19

16:                                               ; preds = %1
  %17 = load %struct.ciss_softc*, %struct.ciss_softc** %4, align 8
  %18 = call i32 @ciss_done(%struct.ciss_softc* %17, i32* %3)
  br label %19

19:                                               ; preds = %16, %13
  %20 = load %struct.ciss_softc*, %struct.ciss_softc** %4, align 8
  %21 = call i32 @ciss_complete(%struct.ciss_softc* %20, i32* %3)
  ret void
}

declare dso_local %struct.ciss_softc* @cam_sim_softc(%struct.cam_sim*) #1

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @ciss_perf_done(%struct.ciss_softc*, i32*) #1

declare dso_local i32 @ciss_done(%struct.ciss_softc*, i32*) #1

declare dso_local i32 @ciss_complete(%struct.ciss_softc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
