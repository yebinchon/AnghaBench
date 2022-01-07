; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cm.c_cm_alloc_response_msg_no_ah.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cm.c_cm_alloc_response_msg_no_ah.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_send_buf = type { i32 }
%struct.cm_port = type { i32 }
%struct.ib_mad_recv_wc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IB_MGMT_MAD_HDR = common dso_local global i32 0, align 4
@IB_MGMT_MAD_DATA = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@IB_MGMT_BASE_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_mad_send_buf* (%struct.cm_port*, %struct.ib_mad_recv_wc*)* @cm_alloc_response_msg_no_ah to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_mad_send_buf* @cm_alloc_response_msg_no_ah(%struct.cm_port* %0, %struct.ib_mad_recv_wc* %1) #0 {
  %3 = alloca %struct.cm_port*, align 8
  %4 = alloca %struct.ib_mad_recv_wc*, align 8
  store %struct.cm_port* %0, %struct.cm_port** %3, align 8
  store %struct.ib_mad_recv_wc* %1, %struct.ib_mad_recv_wc** %4, align 8
  %5 = load %struct.cm_port*, %struct.cm_port** %3, align 8
  %6 = getelementptr inbounds %struct.cm_port, %struct.cm_port* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %9 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @IB_MGMT_MAD_HDR, align 4
  %14 = load i32, i32* @IB_MGMT_MAD_DATA, align 4
  %15 = load i32, i32* @GFP_ATOMIC, align 4
  %16 = load i32, i32* @IB_MGMT_BASE_VERSION, align 4
  %17 = call %struct.ib_mad_send_buf* @ib_create_send_mad(i32 %7, i32 1, i32 %12, i32 0, i32 %13, i32 %14, i32 %15, i32 %16)
  ret %struct.ib_mad_send_buf* %17
}

declare dso_local %struct.ib_mad_send_buf* @ib_create_send_mad(i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
