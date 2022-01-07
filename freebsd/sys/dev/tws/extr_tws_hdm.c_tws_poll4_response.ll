; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_hdm.c_tws_poll4_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_hdm.c_tws_poll4_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tws_softc = type { i32 }

@TWS_LOCAL_TIME = common dso_local global i64 0, align 8
@TWS_POLL_TIMEOUT = common dso_local global i64 0, align 8
@TWS_INVALID_REQID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"invalid req_id\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"poll timeout\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @tws_poll4_response(%struct.tws_softc* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.tws_softc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.tws_softc* %0, %struct.tws_softc** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i64, i64* @TWS_LOCAL_TIME, align 8
  %9 = load i64, i64* @TWS_POLL_TIMEOUT, align 8
  %10 = add nsw i64 %8, %9
  store i64 %10, i64* %7, align 8
  br label %11

11:                                               ; preds = %28, %2
  %12 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i64 @tws_get_response(%struct.tws_softc* %12, i64* %6, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %11
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @TWS_INVALID_REQID, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @TWS_TRACE_DEBUG(%struct.tws_softc* %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 0, i64 %22)
  %24 = load i64, i64* @TWS_INVALID_REQID, align 8
  store i64 %24, i64* %3, align 8
  br label %36

25:                                               ; preds = %16
  %26 = load i64, i64* %6, align 8
  store i64 %26, i64* %3, align 8
  br label %36

27:                                               ; preds = %11
  br label %28

28:                                               ; preds = %27
  %29 = load i64, i64* @TWS_LOCAL_TIME, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp sle i64 %29, %30
  br i1 %31, label %11, label %32

32:                                               ; preds = %28
  %33 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %34 = call i32 @TWS_TRACE_DEBUG(%struct.tws_softc* %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 0, i64 0)
  %35 = load i64, i64* @TWS_INVALID_REQID, align 8
  store i64 %35, i64* %3, align 8
  br label %36

36:                                               ; preds = %32, %25, %20
  %37 = load i64, i64* %3, align 8
  ret i64 %37
}

declare dso_local i64 @tws_get_response(%struct.tws_softc*, i64*, i32*) #1

declare dso_local i32 @TWS_TRACE_DEBUG(%struct.tws_softc*, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
