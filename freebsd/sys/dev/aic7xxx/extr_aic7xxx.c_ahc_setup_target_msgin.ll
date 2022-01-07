; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_setup_target_msgin.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_setup_target_msgin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32, i64, i64 }
%struct.ahc_devinfo = type { i32 }
%struct.scb = type { i32 }

@SCB_AUTO_NEGOTIATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"ahc_intr: AWAITING target message with no message\00", align 1
@MSG_TYPE_TARGET_MSGIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahc_softc*, %struct.ahc_devinfo*, %struct.scb*)* @ahc_setup_target_msgin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahc_setup_target_msgin(%struct.ahc_softc* %0, %struct.ahc_devinfo* %1, %struct.scb* %2) #0 {
  %4 = alloca %struct.ahc_softc*, align 8
  %5 = alloca %struct.ahc_devinfo*, align 8
  %6 = alloca %struct.scb*, align 8
  store %struct.ahc_softc* %0, %struct.ahc_softc** %4, align 8
  store %struct.ahc_devinfo* %1, %struct.ahc_devinfo** %5, align 8
  store %struct.scb* %2, %struct.scb** %6, align 8
  %7 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %8 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %7, i32 0, i32 1
  store i64 0, i64* %8, align 8
  %9 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %10 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %9, i32 0, i32 2
  store i64 0, i64* %10, align 8
  %11 = load %struct.scb*, %struct.scb** %6, align 8
  %12 = icmp ne %struct.scb* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %3
  %14 = load %struct.scb*, %struct.scb** %6, align 8
  %15 = getelementptr inbounds %struct.scb, %struct.scb* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SCB_AUTO_NEGOTIATE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %22 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %5, align 8
  %23 = call i32 @ahc_build_transfer_msg(%struct.ahc_softc* %21, %struct.ahc_devinfo* %22)
  br label %26

24:                                               ; preds = %13, %3
  %25 = call i32 @panic(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %20
  %27 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %28 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load i32, i32* @MSG_TYPE_TARGET_MSGIN, align 4
  %30 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %31 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  ret void
}

declare dso_local i32 @ahc_build_transfer_msg(%struct.ahc_softc*, %struct.ahc_devinfo*) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
