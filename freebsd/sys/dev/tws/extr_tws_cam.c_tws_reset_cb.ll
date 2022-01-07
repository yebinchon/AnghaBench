; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_cam.c_tws_reset_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_cam.c_tws_reset_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tws_softc = type { i32 }

@TWS_RESET = common dso_local global i64 0, align 8
@TWS_LOCAL_TIME = common dso_local global i64 0, align 8
@TWS_POLL_TIMEOUT = common dso_local global i64 0, align 8
@TWS_I2O0_SCRPD3 = common dso_local global i32 0, align 4
@TWS_BIT13 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c" ... Controller ready flag NOT found!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @tws_reset_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tws_reset_cb(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.tws_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.tws_softc*
  store %struct.tws_softc* %8, %struct.tws_softc** %3, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %10 = call i64 @tws_get_state(%struct.tws_softc* %9)
  %11 = load i64, i64* @TWS_RESET, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %52

14:                                               ; preds = %1
  %15 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %16 = call i32 @tws_drain_busy_queue(%struct.tws_softc* %15)
  %17 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %18 = call i32 @tws_drain_reserved_reqs(%struct.tws_softc* %17)
  %19 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %20 = call i32 @tws_drain_response_queue(%struct.tws_softc* %19)
  %21 = load i64, i64* @TWS_LOCAL_TIME, align 8
  %22 = load i64, i64* @TWS_POLL_TIMEOUT, align 8
  %23 = add nsw i64 %21, %22
  store i64 %23, i64* %4, align 8
  br label %24

24:                                               ; preds = %43, %14
  %25 = load i64, i64* @TWS_LOCAL_TIME, align 8
  %26 = load i64, i64* %4, align 8
  %27 = icmp sle i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br label %32

32:                                               ; preds = %28, %24
  %33 = phi i1 [ false, %24 ], [ %31, %28 ]
  br i1 %33, label %34, label %44

34:                                               ; preds = %32
  %35 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %36 = load i32, i32* @TWS_I2O0_SCRPD3, align 4
  %37 = call i32 @tws_read_reg(%struct.tws_softc* %35, i32 %36, i32 4)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @TWS_BIT13, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  store i32 1, i32* %5, align 4
  br label %43

43:                                               ; preds = %42, %34
  br label %24

44:                                               ; preds = %32
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %44
  %48 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %49 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @device_printf(i32 %50, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %13, %47, %44
  ret void
}

declare dso_local i64 @tws_get_state(%struct.tws_softc*) #1

declare dso_local i32 @tws_drain_busy_queue(%struct.tws_softc*) #1

declare dso_local i32 @tws_drain_reserved_reqs(%struct.tws_softc*) #1

declare dso_local i32 @tws_drain_response_queue(%struct.tws_softc*) #1

declare dso_local i32 @tws_read_reg(%struct.tws_softc*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
