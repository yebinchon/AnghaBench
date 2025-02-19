; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_zcopy.c_sdp_abort_rdma_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_zcopy.c_sdp_abort_rdma_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sdp_sock = type { %struct.rx_srcavail_state* }
%struct.rx_srcavail_state = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sdp_abort_rdma_read(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  %3 = alloca %struct.sdp_sock*, align 8
  %4 = alloca %struct.rx_srcavail_state*, align 8
  store %struct.socket* %0, %struct.socket** %2, align 8
  %5 = load %struct.socket*, %struct.socket** %2, align 8
  %6 = call %struct.sdp_sock* @sdp_sk(%struct.socket* %5)
  store %struct.sdp_sock* %6, %struct.sdp_sock** %3, align 8
  %7 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %8 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %7, i32 0, i32 0
  %9 = load %struct.rx_srcavail_state*, %struct.rx_srcavail_state** %8, align 8
  store %struct.rx_srcavail_state* %9, %struct.rx_srcavail_state** %4, align 8
  %10 = load %struct.rx_srcavail_state*, %struct.rx_srcavail_state** %4, align 8
  %11 = icmp ne %struct.rx_srcavail_state* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %22

13:                                               ; preds = %1
  %14 = load %struct.socket*, %struct.socket** %2, align 8
  %15 = load %struct.rx_srcavail_state*, %struct.rx_srcavail_state** %4, align 8
  %16 = getelementptr inbounds %struct.rx_srcavail_state, %struct.rx_srcavail_state* %15, i32 0, i32 1
  %17 = load %struct.rx_srcavail_state*, %struct.rx_srcavail_state** %4, align 8
  %18 = getelementptr inbounds %struct.rx_srcavail_state, %struct.rx_srcavail_state* %17, i32 0, i32 0
  %19 = call i32 @sdp_free_fmr(%struct.socket* %14, i32* %16, i32* %18)
  %20 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %21 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %20, i32 0, i32 0
  store %struct.rx_srcavail_state* null, %struct.rx_srcavail_state** %21, align 8
  br label %22

22:                                               ; preds = %13, %12
  ret void
}

declare dso_local %struct.sdp_sock* @sdp_sk(%struct.socket*) #1

declare dso_local i32 @sdp_free_fmr(%struct.socket*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
