; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_cam.c_tws_drain_reserved_reqs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_cam.c_tws_drain_reserved_reqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tws_softc = type { %struct.tws_request* }
%struct.tws_request = type { i64, i8*, i32, i32 }

@TWS_REQ_TYPE_AEN_FETCH = common dso_local global i64 0, align 8
@TWS_REQ_STATE_FREE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"reset aen req\00", align 1
@M_TWS = common dso_local global i32 0, align 4
@TWS_REQ_RET_RESET = common dso_local global i8* null, align 8
@TWS_REQ_TYPE_PASSTHRU = common dso_local global i64 0, align 8
@TWS_REQ_STATE_BUSY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"reset passthru req\00", align 1
@TWS_REQ_TYPE_GETSET_PARAM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"reset setparam req\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tws_softc*)* @tws_drain_reserved_reqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tws_drain_reserved_reqs(%struct.tws_softc* %0) #0 {
  %2 = alloca %struct.tws_softc*, align 8
  %3 = alloca %struct.tws_request*, align 8
  store %struct.tws_softc* %0, %struct.tws_softc** %2, align 8
  %4 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %5 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %4, i32 0, i32 0
  %6 = load %struct.tws_request*, %struct.tws_request** %5, align 8
  %7 = load i64, i64* @TWS_REQ_TYPE_AEN_FETCH, align 8
  %8 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %6, i64 %7
  store %struct.tws_request* %8, %struct.tws_request** %3, align 8
  %9 = load %struct.tws_request*, %struct.tws_request** %3, align 8
  %10 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @TWS_REQ_STATE_FREE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %34

14:                                               ; preds = %1
  %15 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %16 = call i32 @TWS_TRACE_DEBUG(%struct.tws_softc* %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  %17 = load %struct.tws_request*, %struct.tws_request** %3, align 8
  %18 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %17, i32 0, i32 3
  %19 = call i32 @callout_stop(i32* %18)
  %20 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %21 = load %struct.tws_request*, %struct.tws_request** %3, align 8
  %22 = call i32 @tws_unmap_request(%struct.tws_softc* %20, %struct.tws_request* %21)
  %23 = load %struct.tws_request*, %struct.tws_request** %3, align 8
  %24 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @M_TWS, align 4
  %27 = call i32 @free(i32 %25, i32 %26)
  %28 = load i64, i64* @TWS_REQ_STATE_FREE, align 8
  %29 = load %struct.tws_request*, %struct.tws_request** %3, align 8
  %30 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load i8*, i8** @TWS_REQ_RET_RESET, align 8
  %32 = load %struct.tws_request*, %struct.tws_request** %3, align 8
  %33 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  br label %34

34:                                               ; preds = %14, %1
  %35 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %36 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %35, i32 0, i32 0
  %37 = load %struct.tws_request*, %struct.tws_request** %36, align 8
  %38 = load i64, i64* @TWS_REQ_TYPE_PASSTHRU, align 8
  %39 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %37, i64 %38
  store %struct.tws_request* %39, %struct.tws_request** %3, align 8
  %40 = load %struct.tws_request*, %struct.tws_request** %3, align 8
  %41 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @TWS_REQ_STATE_BUSY, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %34
  %46 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %47 = call i32 @TWS_TRACE_DEBUG(%struct.tws_softc* %46, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 0)
  %48 = load i8*, i8** @TWS_REQ_RET_RESET, align 8
  %49 = load %struct.tws_request*, %struct.tws_request** %3, align 8
  %50 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  br label %51

51:                                               ; preds = %45, %34
  %52 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %53 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %52, i32 0, i32 0
  %54 = load %struct.tws_request*, %struct.tws_request** %53, align 8
  %55 = load i64, i64* @TWS_REQ_TYPE_GETSET_PARAM, align 8
  %56 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %54, i64 %55
  store %struct.tws_request* %56, %struct.tws_request** %3, align 8
  %57 = load %struct.tws_request*, %struct.tws_request** %3, align 8
  %58 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @TWS_REQ_STATE_FREE, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %82

62:                                               ; preds = %51
  %63 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %64 = call i32 @TWS_TRACE_DEBUG(%struct.tws_softc* %63, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 0)
  %65 = load %struct.tws_request*, %struct.tws_request** %3, align 8
  %66 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %65, i32 0, i32 3
  %67 = call i32 @callout_stop(i32* %66)
  %68 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %69 = load %struct.tws_request*, %struct.tws_request** %3, align 8
  %70 = call i32 @tws_unmap_request(%struct.tws_softc* %68, %struct.tws_request* %69)
  %71 = load %struct.tws_request*, %struct.tws_request** %3, align 8
  %72 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @M_TWS, align 4
  %75 = call i32 @free(i32 %73, i32 %74)
  %76 = load i64, i64* @TWS_REQ_STATE_FREE, align 8
  %77 = load %struct.tws_request*, %struct.tws_request** %3, align 8
  %78 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  %79 = load i8*, i8** @TWS_REQ_RET_RESET, align 8
  %80 = load %struct.tws_request*, %struct.tws_request** %3, align 8
  %81 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %80, i32 0, i32 1
  store i8* %79, i8** %81, align 8
  br label %82

82:                                               ; preds = %62, %51
  ret void
}

declare dso_local i32 @TWS_TRACE_DEBUG(%struct.tws_softc*, i8*, i32, i32) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @tws_unmap_request(%struct.tws_softc*, %struct.tws_request*) #1

declare dso_local i32 @free(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
