; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_osl_cam.c_tw_osli_disallow_new_requests.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_osl_cam.c_tw_osli_disallow_new_requests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twa_softc = type { i32 }
%struct.tw_cl_req_handle = type { %struct.tw_osli_req_context*, i64 }
%struct.tw_osli_req_context = type { i64 }
%union.ccb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CAM_RELEASE_SIMQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tw_osli_disallow_new_requests(%struct.twa_softc* %0, %struct.tw_cl_req_handle* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.twa_softc*, align 8
  %5 = alloca %struct.tw_cl_req_handle*, align 8
  %6 = alloca %struct.tw_osli_req_context*, align 8
  %7 = alloca %union.ccb*, align 8
  store %struct.twa_softc* %0, %struct.twa_softc** %4, align 8
  store %struct.tw_cl_req_handle* %1, %struct.tw_cl_req_handle** %5, align 8
  %8 = load %struct.tw_cl_req_handle*, %struct.tw_cl_req_handle** %5, align 8
  %9 = getelementptr inbounds %struct.tw_cl_req_handle, %struct.tw_cl_req_handle* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %2
  %13 = load %struct.tw_cl_req_handle*, %struct.tw_cl_req_handle** %5, align 8
  %14 = getelementptr inbounds %struct.tw_cl_req_handle, %struct.tw_cl_req_handle* %13, i32 0, i32 0
  %15 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %14, align 8
  store %struct.tw_osli_req_context* %15, %struct.tw_osli_req_context** %6, align 8
  %16 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %6, align 8
  %17 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %union.ccb*
  store %union.ccb* %19, %union.ccb** %7, align 8
  %20 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %21 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @xpt_freeze_simq(i32 %22, i32 1)
  %24 = load i32, i32* @CAM_RELEASE_SIMQ, align 4
  %25 = load %union.ccb*, %union.ccb** %7, align 8
  %26 = bitcast %union.ccb* %25 to %struct.TYPE_2__*
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %24
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %12, %2
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @xpt_freeze_simq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
