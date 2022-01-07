; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp.h_sdp_arm_tx_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp.h_sdp_arm_tx_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdp_sock = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"Arming TX cq\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Arming TX cq. credits: %d, posted: %d\0A\00", align 1
@IB_CQ_NEXT_COMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdp_sock*)* @sdp_arm_tx_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdp_arm_tx_cq(%struct.sdp_sock* %0) #0 {
  %2 = alloca %struct.sdp_sock*, align 8
  store %struct.sdp_sock* %0, %struct.sdp_sock** %2, align 8
  %3 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %4 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @sdp_prf(i32 %5, i32* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %8 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %11 = call i32 @tx_credits(%struct.sdp_sock* %10)
  %12 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %13 = call i32 @tx_ring_posted(%struct.sdp_sock* %12)
  %14 = call i32 @sdp_dbg_data(i32 %9, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %11, i32 %13)
  %15 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %16 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @IB_CQ_NEXT_COMP, align 4
  %20 = call i32 @ib_req_notify_cq(i32 %18, i32 %19)
  ret void
}

declare dso_local i32 @sdp_prf(i32, i32*, i8*) #1

declare dso_local i32 @sdp_dbg_data(i32, i8*, i32, i32) #1

declare dso_local i32 @tx_credits(%struct.sdp_sock*) #1

declare dso_local i32 @tx_ring_posted(%struct.sdp_sock*) #1

declare dso_local i32 @ib_req_notify_cq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
