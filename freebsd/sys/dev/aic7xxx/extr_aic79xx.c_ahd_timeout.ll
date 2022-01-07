; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scb = type { i32, %struct.ahd_softc* }
%struct.ahd_softc = type { i32 }

@SCB_ACTIVE = common dso_local global i32 0, align 4
@SCB_TIMEDOUT = common dso_local global i32 0, align 4
@timedout_links = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ahd_timeout(%struct.scb* %0) #0 {
  %2 = alloca %struct.scb*, align 8
  %3 = alloca %struct.ahd_softc*, align 8
  store %struct.scb* %0, %struct.scb** %2, align 8
  %4 = load %struct.scb*, %struct.scb** %2, align 8
  %5 = getelementptr inbounds %struct.scb, %struct.scb* %4, i32 0, i32 1
  %6 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  store %struct.ahd_softc* %6, %struct.ahd_softc** %3, align 8
  %7 = load %struct.scb*, %struct.scb** %2, align 8
  %8 = getelementptr inbounds %struct.scb, %struct.scb* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @SCB_ACTIVE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %34

13:                                               ; preds = %1
  %14 = load %struct.scb*, %struct.scb** %2, align 8
  %15 = getelementptr inbounds %struct.scb, %struct.scb* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @SCB_TIMEDOUT, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %13
  %21 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %22 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %21, i32 0, i32 0
  %23 = load %struct.scb*, %struct.scb** %2, align 8
  %24 = load i32, i32* @timedout_links, align 4
  %25 = call i32 @LIST_INSERT_HEAD(i32* %22, %struct.scb* %23, i32 %24)
  %26 = load i32, i32* @SCB_TIMEDOUT, align 4
  %27 = load %struct.scb*, %struct.scb** %2, align 8
  %28 = getelementptr inbounds %struct.scb, %struct.scb* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 8
  br label %31

31:                                               ; preds = %20, %13
  %32 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %33 = call i32 @ahd_wakeup_recovery_thread(%struct.ahd_softc* %32)
  br label %34

34:                                               ; preds = %31, %1
  ret void
}

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.scb*, i32) #1

declare dso_local i32 @ahd_wakeup_recovery_thread(%struct.ahd_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
