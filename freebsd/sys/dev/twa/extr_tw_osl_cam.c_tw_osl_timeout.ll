; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_osl_cam.c_tw_osl_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_osl_cam.c_tw_osl_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw_cl_req_handle = type { %struct.tw_osli_req_context* }
%struct.tw_osli_req_context = type { i64, i64 }
%union.ccb = type { %struct.ccb_hdr }
%struct.ccb_hdr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tw_osl_timeout(%struct.tw_cl_req_handle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tw_cl_req_handle*, align 8
  %4 = alloca %struct.tw_osli_req_context*, align 8
  %5 = alloca %union.ccb*, align 8
  %6 = alloca %struct.ccb_hdr*, align 8
  store %struct.tw_cl_req_handle* %0, %struct.tw_cl_req_handle** %3, align 8
  %7 = load %struct.tw_cl_req_handle*, %struct.tw_cl_req_handle** %3, align 8
  %8 = getelementptr inbounds %struct.tw_cl_req_handle, %struct.tw_cl_req_handle* %7, i32 0, i32 0
  %9 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %8, align 8
  store %struct.tw_osli_req_context* %9, %struct.tw_osli_req_context** %4, align 8
  %10 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %4, align 8
  %11 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %union.ccb*
  store %union.ccb* %13, %union.ccb** %5, align 8
  %14 = load %union.ccb*, %union.ccb** %5, align 8
  %15 = bitcast %union.ccb* %14 to %struct.ccb_hdr*
  store %struct.ccb_hdr* %15, %struct.ccb_hdr** %6, align 8
  %16 = call i64 (...) @tw_osl_get_local_time()
  %17 = load %struct.ccb_hdr*, %struct.ccb_hdr** %6, align 8
  %18 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sdiv i32 %19, 1000
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %16, %21
  %23 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %4, align 8
  %24 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i64 @tw_osl_get_local_time(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
