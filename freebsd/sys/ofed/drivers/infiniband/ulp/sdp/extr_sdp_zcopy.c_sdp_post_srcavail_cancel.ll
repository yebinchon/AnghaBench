; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_zcopy.c_sdp_post_srcavail_cancel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_zcopy.c_sdp_post_srcavail_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sdp_sock = type { i32, i32 }
%struct.mbuf = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Posting srcavail cancel\0A\00", align 1
@SDP_SRCAVAIL_CANCEL_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*)* @sdp_post_srcavail_cancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdp_post_srcavail_cancel(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  %3 = alloca %struct.sdp_sock*, align 8
  %4 = alloca %struct.mbuf*, align 8
  store %struct.socket* %0, %struct.socket** %2, align 8
  %5 = load %struct.socket*, %struct.socket** %2, align 8
  %6 = call %struct.sdp_sock* @sdp_sk(%struct.socket* %5)
  store %struct.sdp_sock* %6, %struct.sdp_sock** %3, align 8
  %7 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %8 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @sdp_dbg_data(i32 %9, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.socket*, %struct.socket** %2, align 8
  %12 = call %struct.mbuf* @sdp_alloc_mb_srcavail_cancel(%struct.socket* %11, i32 0)
  store %struct.mbuf* %12, %struct.mbuf** %4, align 8
  %13 = load %struct.socket*, %struct.socket** %2, align 8
  %14 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %15 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %16 = call i32 @mb_entail(%struct.socket* %13, %struct.sdp_sock* %14, %struct.mbuf* %15)
  %17 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %18 = call i32 @sdp_post_sends(%struct.sdp_sock* %17, i32 0)
  %19 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %20 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %19, i32 0, i32 0
  %21 = load i32, i32* @SDP_SRCAVAIL_CANCEL_TIMEOUT, align 4
  %22 = call i32 @schedule_delayed_work(i32* %20, i32 %21)
  ret i32 0
}

declare dso_local %struct.sdp_sock* @sdp_sk(%struct.socket*) #1

declare dso_local i32 @sdp_dbg_data(i32, i8*) #1

declare dso_local %struct.mbuf* @sdp_alloc_mb_srcavail_cancel(%struct.socket*, i32) #1

declare dso_local i32 @mb_entail(%struct.socket*, %struct.sdp_sock*, %struct.mbuf*) #1

declare dso_local i32 @sdp_post_sends(%struct.sdp_sock*, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
