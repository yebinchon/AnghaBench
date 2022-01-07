; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas_cam.c_mrsas_cam_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas_cam.c_mrsas_cam_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_sim = type { i32 }
%struct.mrsas_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_sim*)* @mrsas_cam_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mrsas_cam_poll(%struct.cam_sim* %0) #0 {
  %2 = alloca %struct.cam_sim*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mrsas_softc*, align 8
  store %struct.cam_sim* %0, %struct.cam_sim** %2, align 8
  %5 = load %struct.cam_sim*, %struct.cam_sim** %2, align 8
  %6 = call i64 @cam_sim_softc(%struct.cam_sim* %5)
  %7 = inttoptr i64 %6 to %struct.mrsas_softc*
  store %struct.mrsas_softc* %7, %struct.mrsas_softc** %4, align 8
  %8 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %9 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %23, %12
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %16 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %13
  %20 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @mrsas_complete_cmd(%struct.mrsas_softc* %20, i32 %21)
  br label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %13

26:                                               ; preds = %13
  br label %30

27:                                               ; preds = %1
  %28 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %29 = call i32 @mrsas_complete_cmd(%struct.mrsas_softc* %28, i32 0)
  br label %30

30:                                               ; preds = %27, %26
  ret void
}

declare dso_local i64 @cam_sim_softc(%struct.cam_sim*) #1

declare dso_local i32 @mrsas_complete_cmd(%struct.mrsas_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
