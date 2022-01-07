; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_osl_freebsd.c_twa_watchdog.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_osl_freebsd.c_twa_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw_cl_ctlr_handle = type { %struct.twa_softc* }
%struct.twa_softc = type { i32, i32, i32*, i32, %struct.tw_osli_req_context* }
%struct.tw_osli_req_context = type { i64, i64 }

@TW_OSLI_MAX_NUM_REQUESTS = common dso_local global i32 0, align 4
@TW_OSLI_REQ_STATE_BUSY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Request %d timed out!\0A\00", align 1
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @twa_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twa_watchdog(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.tw_cl_ctlr_handle*, align 8
  %5 = alloca %struct.twa_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.tw_osli_req_context*, align 8
  store i32* %0, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = bitcast i32* %12 to %struct.tw_cl_ctlr_handle*
  store %struct.tw_cl_ctlr_handle* %13, %struct.tw_cl_ctlr_handle** %4, align 8
  %14 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %4, align 8
  %15 = getelementptr inbounds %struct.tw_cl_ctlr_handle, %struct.tw_cl_ctlr_handle* %14, i32 0, i32 0
  %16 = load %struct.twa_softc*, %struct.twa_softc** %15, align 8
  store %struct.twa_softc* %16, %struct.twa_softc** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 1234, i32* %9, align 4
  %17 = call i64 (...) @tw_osl_get_local_time()
  store i64 %17, i64* %10, align 8
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %54, %1
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @TW_OSLI_MAX_NUM_REQUESTS, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %57

22:                                               ; preds = %18
  %23 = load %struct.twa_softc*, %struct.twa_softc** %5, align 8
  %24 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %23, i32 0, i32 4
  %25 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %25, i64 %27
  store %struct.tw_osli_req_context* %28, %struct.tw_osli_req_context** %11, align 8
  %29 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %11, align 8
  %30 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @TW_OSLI_REQ_STATE_BUSY, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %53

34:                                               ; preds = %22
  %35 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %11, align 8
  %36 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %34
  %40 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %11, align 8
  %41 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %10, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %39
  %46 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %4, align 8
  %47 = call i32 @tw_cl_set_reset_needed(%struct.tw_cl_ctlr_handle* %46)
  %48 = load %struct.twa_softc*, %struct.twa_softc** %5, align 8
  %49 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 (i32, i8*, ...) @device_printf(i32 %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %51)
  br label %57

53:                                               ; preds = %39, %34, %22
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %18

57:                                               ; preds = %45, %18
  %58 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %4, align 8
  %59 = call i32 @tw_cl_is_reset_needed(%struct.tw_cl_ctlr_handle* %58)
  store i32 %59, i32* %7, align 4
  %60 = load %struct.twa_softc*, %struct.twa_softc** %5, align 8
  %61 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 8
  %64 = and i32 %62, 1
  store i32 %64, i32* %6, align 4
  %65 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %4, align 8
  %66 = call i32 @tw_cl_is_active(%struct.tw_cl_ctlr_handle* %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %83

69:                                               ; preds = %57
  %70 = load %struct.twa_softc*, %struct.twa_softc** %5, align 8
  %71 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* @hz, align 4
  %77 = mul nsw i32 70, %76
  %78 = load %struct.twa_softc*, %struct.twa_softc** %5, align 8
  %79 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %78, i32 0, i32 1
  %80 = call i32 @callout_reset(i32* %75, i32 %77, i32 (i32*)* @twa_watchdog, i32* %79)
  store i32 %80, i32* %9, align 4
  %81 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %4, align 8
  %82 = call i32 @tw_cl_reset_ctlr(%struct.tw_cl_ctlr_handle* %81)
  br label %99

83:                                               ; preds = %57
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %83
  %87 = load %struct.twa_softc*, %struct.twa_softc** %5, align 8
  %88 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* @hz, align 4
  %94 = mul nsw i32 5, %93
  %95 = load %struct.twa_softc*, %struct.twa_softc** %5, align 8
  %96 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %95, i32 0, i32 1
  %97 = call i32 @callout_reset(i32* %92, i32 %94, i32 (i32*)* @twa_watchdog, i32* %96)
  store i32 %97, i32* %9, align 4
  br label %98

98:                                               ; preds = %86, %83
  br label %99

99:                                               ; preds = %98, %69
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i64 @tw_osl_get_local_time(...) #1

declare dso_local i32 @tw_cl_set_reset_needed(%struct.tw_cl_ctlr_handle*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @tw_cl_is_reset_needed(%struct.tw_cl_ctlr_handle*) #1

declare dso_local i32 @tw_cl_is_active(%struct.tw_cl_ctlr_handle*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32 (i32*)*, i32*) #1

declare dso_local i32 @tw_cl_reset_ctlr(%struct.tw_cl_ctlr_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
