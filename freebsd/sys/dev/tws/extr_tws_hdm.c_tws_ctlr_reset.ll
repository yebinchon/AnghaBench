; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_hdm.c_tws_ctlr_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_hdm.c_tws_ctlr_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tws_softc = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@TWS_I2O0_SCRPD3 = common dso_local global i32 0, align 4
@TWS_BIT13 = common dso_local global i32 0, align 4
@TWS_LOCAL_TIME = common dso_local global i64 0, align 8
@TWS_RESET_TIMEOUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tws_ctlr_reset(%struct.tws_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tws_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.tws_softc* %0, %struct.tws_softc** %3, align 8
  %6 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %7 = call i32 @TWS_TRACE_DEBUG(%struct.tws_softc* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  %8 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %9 = call i32 @tws_assert_soft_reset(%struct.tws_softc* %8)
  br label %10

10:                                               ; preds = %14, %1
  %11 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %12 = load i32, i32* @TWS_I2O0_SCRPD3, align 4
  %13 = call i32 @tws_read_reg(%struct.tws_softc* %11, i32 %12, i32 4)
  store i32 %13, i32* %4, align 4
  br label %14

14:                                               ; preds = %10
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @TWS_BIT13, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %10, label %19

19:                                               ; preds = %14
  %20 = load i64, i64* @TWS_LOCAL_TIME, align 8
  %21 = load i64, i64* @TWS_RESET_TIMEOUT, align 8
  %22 = add nsw i64 %20, %21
  store i64 %22, i64* %5, align 8
  br label %23

23:                                               ; preds = %29, %19
  %24 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %25 = call i64 @tws_ctlr_ready(%struct.tws_softc* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 1, i32* %2, align 4
  br label %34

28:                                               ; preds = %23
  br label %29

29:                                               ; preds = %28
  %30 = load i64, i64* @TWS_LOCAL_TIME, align 8
  %31 = load i64, i64* %5, align 8
  %32 = icmp sle i64 %30, %31
  br i1 %32, label %23, label %33

33:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %27
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @TWS_TRACE_DEBUG(%struct.tws_softc*, i8*, i32, i32) #1

declare dso_local i32 @tws_assert_soft_reset(%struct.tws_softc*) #1

declare dso_local i32 @tws_read_reg(%struct.tws_softc*, i32, i32) #1

declare dso_local i64 @tws_ctlr_ready(%struct.tws_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
