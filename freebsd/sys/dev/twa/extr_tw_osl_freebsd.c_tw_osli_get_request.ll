; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_osl_freebsd.c_tw_osli_get_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_osl_freebsd.c_tw_osli_get_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw_osli_req_context = type { i32, i32*, i64, i64, i32, i64, i32*, i64, i64, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32*, i32* }
%struct.twa_softc = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"entered\00", align 1
@TW_OSLI_FREE_Q = common dso_local global i32 0, align 4
@TW_OSLI_REQ_STATE_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tw_osli_req_context* @tw_osli_get_request(%struct.twa_softc* %0) #0 {
  %2 = alloca %struct.twa_softc*, align 8
  %3 = alloca %struct.tw_osli_req_context*, align 8
  store %struct.twa_softc* %0, %struct.twa_softc** %2, align 8
  %4 = load %struct.twa_softc*, %struct.twa_softc** %2, align 8
  %5 = call i32 @tw_osli_dbg_dprintf(i32 4, %struct.twa_softc* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.twa_softc*, %struct.twa_softc** %2, align 8
  %7 = load i32, i32* @TW_OSLI_FREE_Q, align 4
  %8 = call %struct.tw_osli_req_context* @tw_osli_req_q_remove_head(%struct.twa_softc* %6, i32 %7)
  store %struct.tw_osli_req_context* %8, %struct.tw_osli_req_context** %3, align 8
  %9 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %10 = icmp ne %struct.tw_osli_req_context* %9, null
  br i1 %10, label %11, label %43

11:                                               ; preds = %1
  %12 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %13 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %12, i32 0, i32 10
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  store i32* null, i32** %14, align 8
  %15 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %16 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %15, i32 0, i32 10
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store i32* null, i32** %17, align 8
  %18 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %19 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %18, i32 0, i32 10
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %22 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %21, i32 0, i32 9
  store i32* null, i32** %22, align 8
  %23 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %24 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %23, i32 0, i32 8
  store i64 0, i64* %24, align 8
  %25 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %26 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %25, i32 0, i32 7
  store i64 0, i64* %26, align 8
  %27 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %28 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %27, i32 0, i32 6
  store i32* null, i32** %28, align 8
  %29 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %30 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %29, i32 0, i32 5
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* @TW_OSLI_REQ_STATE_INIT, align 4
  %32 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %33 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 8
  %34 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %35 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %34, i32 0, i32 3
  store i64 0, i64* %35, align 8
  %36 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %37 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %36, i32 0, i32 2
  store i64 0, i64* %37, align 8
  %38 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %39 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %38, i32 0, i32 1
  store i32* null, i32** %39, align 8
  %40 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %41 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %40, i32 0, i32 0
  %42 = call i32 @bzero(i32* %41, i32 4)
  br label %43

43:                                               ; preds = %11, %1
  %44 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  ret %struct.tw_osli_req_context* %44
}

declare dso_local i32 @tw_osli_dbg_dprintf(i32, %struct.twa_softc*, i8*) #1

declare dso_local %struct.tw_osli_req_context* @tw_osli_req_q_remove_head(%struct.twa_softc*, i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
