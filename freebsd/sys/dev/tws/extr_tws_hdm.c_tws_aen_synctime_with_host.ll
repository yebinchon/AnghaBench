; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_hdm.c_tws_aen_synctime_with_host.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_hdm.c_tws_aen_synctime_with_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tws_softc = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@TWS_LOCAL_TIME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"sync_time,ts\00", align 1
@time_second = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"utc_offset\00", align 1
@TWS_PARAM_TIME_TABLE = common dso_local global i32 0, align 4
@TWS_PARAM_TIME_SCHED_TIME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"set param failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tws_aen_synctime_with_host(%struct.tws_softc* %0) #0 {
  %2 = alloca %struct.tws_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.tws_softc* %0, %struct.tws_softc** %2, align 8
  %5 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %6 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %7 = ptrtoint %struct.tws_softc* %6 to i64
  %8 = call i32 @TWS_TRACE_DEBUG(%struct.tws_softc* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %7, i32 0)
  %9 = load i32, i32* @TWS_LOCAL_TIME, align 4
  %10 = sub nsw i32 %9, 259200
  %11 = srem i32 %10, 604800
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %4, align 8
  %13 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load i32, i32* @time_second, align 4
  %16 = call i32 @TWS_TRACE_DEBUG(%struct.tws_softc* %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64 %14, i32 %15)
  %17 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %18 = call i64 (...) @utc_offset()
  %19 = call i32 @TWS_TRACE_DEBUG(%struct.tws_softc* %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i64 %18, i32 0)
  %20 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %21 = load i32, i32* @TWS_PARAM_TIME_TABLE, align 4
  %22 = load i32, i32* @TWS_PARAM_TIME_SCHED_TIME, align 4
  %23 = call i32 @tws_set_param(%struct.tws_softc* %20, i32 %21, i32 %22, i32 4, i64* %4)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %1
  %27 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %28 = load i64, i64* %4, align 8
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @TWS_TRACE_DEBUG(%struct.tws_softc* %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i64 %28, i32 %29)
  br label %31

31:                                               ; preds = %26, %1
  ret void
}

declare dso_local i32 @TWS_TRACE_DEBUG(%struct.tws_softc*, i8*, i64, i32) #1

declare dso_local i64 @utc_offset(...) #1

declare dso_local i32 @tws_set_param(%struct.tws_softc*, i32, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
