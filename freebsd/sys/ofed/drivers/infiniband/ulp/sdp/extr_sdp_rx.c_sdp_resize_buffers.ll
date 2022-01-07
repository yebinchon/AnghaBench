; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_rx.c_sdp_resize_buffers.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_rx.c_sdp_resize_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdp_sock = type { i64 }

@SDP_MAX_PACKET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdp_resize_buffers(%struct.sdp_sock* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdp_sock*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.sdp_sock* %0, %struct.sdp_sock** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.sdp_sock*, %struct.sdp_sock** %4, align 8
  %9 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* @SDP_MAX_PACKET, align 8
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp sgt i64 %12, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* %7, align 8
  %18 = icmp sle i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load %struct.sdp_sock*, %struct.sdp_sock** %4, align 8
  %21 = load i64, i64* %5, align 8
  %22 = call i64 @sdp_get_recv_bytes(%struct.sdp_sock* %20, i64 %21)
  %23 = load %struct.sdp_sock*, %struct.sdp_sock** %4, align 8
  %24 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  store i32 0, i32* %3, align 4
  br label %26

25:                                               ; preds = %15, %2
  store i32 -1, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %19
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i64 @sdp_get_recv_bytes(%struct.sdp_sock*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
