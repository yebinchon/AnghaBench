; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_freeze_devq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_freeze_devq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32 }
%struct.scb = type { i32 }

@SCB_LIST_NULL = common dso_local global i32 0, align 4
@ROLE_UNKNOWN = common dso_local global i32 0, align 4
@CAM_REQUEUE_REQ = common dso_local global i32 0, align 4
@SEARCH_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ahc_freeze_devq(%struct.ahc_softc* %0, %struct.scb* %1) #0 {
  %3 = alloca %struct.ahc_softc*, align 8
  %4 = alloca %struct.scb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store %struct.ahc_softc* %0, %struct.ahc_softc** %3, align 8
  store %struct.scb* %1, %struct.scb** %4, align 8
  %8 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %9 = load %struct.scb*, %struct.scb** %4, align 8
  %10 = call i32 @SCB_GET_TARGET(%struct.ahc_softc* %8, %struct.scb* %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.scb*, %struct.scb** %4, align 8
  %12 = call i32 @SCB_GET_LUN(%struct.scb* %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %14 = load %struct.scb*, %struct.scb** %4, align 8
  %15 = call signext i8 @SCB_GET_CHANNEL(%struct.ahc_softc* %13, %struct.scb* %14)
  store i8 %15, i8* %6, align 1
  %16 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i8, i8* %6, align 1
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @SCB_LIST_NULL, align 4
  %21 = load i32, i32* @ROLE_UNKNOWN, align 4
  %22 = load i32, i32* @CAM_REQUEUE_REQ, align 4
  %23 = load i32, i32* @SEARCH_COMPLETE, align 4
  %24 = call i32 @ahc_search_qinfifo(%struct.ahc_softc* %16, i32 %17, i8 signext %18, i32 %19, i32 %20, i32 %21, i32 %22, i32 %23)
  %25 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %26 = load %struct.scb*, %struct.scb** %4, align 8
  %27 = call i32 @ahc_platform_freeze_devq(%struct.ahc_softc* %25, %struct.scb* %26)
  ret void
}

declare dso_local i32 @SCB_GET_TARGET(%struct.ahc_softc*, %struct.scb*) #1

declare dso_local i32 @SCB_GET_LUN(%struct.scb*) #1

declare dso_local signext i8 @SCB_GET_CHANNEL(%struct.ahc_softc*, %struct.scb*) #1

declare dso_local i32 @ahc_search_qinfifo(%struct.ahc_softc*, i32, i8 signext, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ahc_platform_freeze_devq(%struct.ahc_softc*, %struct.scb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
