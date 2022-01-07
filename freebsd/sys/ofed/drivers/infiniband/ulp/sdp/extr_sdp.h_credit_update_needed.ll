; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp.h_credit_update_needed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp.h_credit_update_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdp_sock = type { i32 }

@SDP_MIN_TX_CREDITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdp_sock*)* @credit_update_needed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @credit_update_needed(%struct.sdp_sock* %0) #0 {
  %2 = alloca %struct.sdp_sock*, align 8
  %3 = alloca i32, align 4
  store %struct.sdp_sock* %0, %struct.sdp_sock** %2, align 8
  %4 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %5 = call i32 @remote_credits(%struct.sdp_sock* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @SDP_MIN_TX_CREDITS, align 4
  %8 = icmp sgt i32 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i64 @likely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = sdiv i32 %13, 2
  %15 = load i32, i32* %3, align 4
  %16 = add nsw i32 %15, %14
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %12, %1
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %20 = call i32 @rx_ring_posted(%struct.sdp_sock* %19)
  %21 = icmp slt i32 %18, %20
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %17
  %26 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %27 = call i64 @tx_credits(%struct.sdp_sock* %26)
  %28 = icmp sgt i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i64 @likely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %34 = call i32 @sdp_tx_ring_slots_left(%struct.sdp_sock* %33)
  %35 = call i64 @likely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br label %37

37:                                               ; preds = %32, %25, %17
  %38 = phi i1 [ false, %25 ], [ false, %17 ], [ %36, %32 ]
  %39 = zext i1 %38 to i32
  ret i32 %39
}

declare dso_local i32 @remote_credits(%struct.sdp_sock*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rx_ring_posted(%struct.sdp_sock*) #1

declare dso_local i64 @tx_credits(%struct.sdp_sock*) #1

declare dso_local i32 @sdp_tx_ring_slots_left(%struct.sdp_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
