; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_rx.c_sdp_poll_rx_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_rx.c_sdp_poll_rx_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdp_sock = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ib_cq* }
%struct.ib_cq = type { i32 }
%struct.mbuf = type { i32 }
%struct.ib_wc = type { i32 }

@SDP_NUM_WC = common dso_local global i32 0, align 4
@SDP_OP_RECV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdp_sock*)* @sdp_poll_rx_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdp_poll_rx_cq(%struct.sdp_sock* %0) #0 {
  %2 = alloca %struct.sdp_sock*, align 8
  %3 = alloca %struct.ib_cq*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca %struct.ib_wc*, align 8
  store %struct.sdp_sock* %0, %struct.sdp_sock** %2, align 8
  %11 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %12 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.ib_cq*, %struct.ib_cq** %13, align 8
  store %struct.ib_cq* %14, %struct.ib_cq** %3, align 8
  %15 = load i32, i32* @SDP_NUM_WC, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %4, align 8
  %18 = alloca %struct.ib_wc, i64 %16, align 16
  store i64 %16, i64* %5, align 8
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %56, %1
  %20 = load %struct.ib_cq*, %struct.ib_cq** %3, align 8
  %21 = load i32, i32* @SDP_NUM_WC, align 4
  %22 = call i32 @ib_poll_cq(%struct.ib_cq* %20, i32 %21, %struct.ib_wc* %18)
  store i32 %22, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %52, %19
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %55

27:                                               ; preds = %23
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %18, i64 %29
  store %struct.ib_wc* %30, %struct.ib_wc** %10, align 8
  %31 = load %struct.ib_wc*, %struct.ib_wc** %10, align 8
  %32 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @SDP_OP_RECV, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @BUG_ON(i32 %38)
  %40 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %41 = load %struct.ib_wc*, %struct.ib_wc** %10, align 8
  %42 = call %struct.mbuf* @sdp_process_rx_wc(%struct.sdp_sock* %40, %struct.ib_wc* %41)
  store %struct.mbuf* %42, %struct.mbuf** %9, align 8
  %43 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %44 = icmp ne %struct.mbuf* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %27
  br label %52

46:                                               ; preds = %27
  %47 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %48 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %49 = call i32 @sdp_process_rx_mb(%struct.sdp_sock* %47, %struct.mbuf* %48)
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %46, %45
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %23

55:                                               ; preds = %23
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @SDP_NUM_WC, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %19, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %65 = call i32 @sdp_bzcopy_write_space(%struct.sdp_sock* %64)
  br label %66

66:                                               ; preds = %63, %60
  %67 = load i32, i32* %8, align 4
  %68 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %68)
  ret i32 %67
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ib_poll_cq(%struct.ib_cq*, i32, %struct.ib_wc*) #2

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local %struct.mbuf* @sdp_process_rx_wc(%struct.sdp_sock*, %struct.ib_wc*) #2

declare dso_local i32 @sdp_process_rx_mb(%struct.sdp_sock*, %struct.mbuf*) #2

declare dso_local i32 @sdp_bzcopy_write_space(%struct.sdp_sock*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
