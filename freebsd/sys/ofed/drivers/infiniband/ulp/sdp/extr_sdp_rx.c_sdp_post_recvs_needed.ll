; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_rx.c_sdp_post_recvs_needed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_rx.c_sdp_post_recvs_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdp_sock = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@SDP_RX_SIZE = common dso_local global i32 0, align 4
@SDP_MIN_TX_CREDITS = common dso_local global i32 0, align 4
@rcvbuf_scale = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdp_sock*)* @sdp_post_recvs_needed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdp_post_recvs_needed(%struct.sdp_sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdp_sock*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sdp_sock* %0, %struct.sdp_sock** %3, align 8
  %8 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %9 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %14 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = icmp ne %struct.TYPE_3__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %12, %1
  store i32 0, i32* %2, align 4
  br label %65

18:                                               ; preds = %12
  %19 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %20 = call i32 @rx_ring_posted(%struct.sdp_sock* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @SDP_RX_SIZE, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %65

25:                                               ; preds = %18
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @SDP_MIN_TX_CREDITS, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 1, i32* %2, align 4
  br label %65

30:                                               ; preds = %25
  %31 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %32 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %6, align 4
  %34 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %35 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @SDP_MIN_TX_CREDITS, align 4
  %41 = add nsw i32 1, %40
  %42 = load i32, i32* %6, align 4
  %43 = mul nsw i32 %41, %42
  %44 = call i64 @max(i32 %39, i32 %43)
  store i64 %44, i64* %5, align 8
  %45 = load i64, i64* @rcvbuf_scale, align 8
  %46 = load i64, i64* %5, align 8
  %47 = mul i64 %46, %45
  store i64 %47, i64* %5, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @SDP_MIN_TX_CREDITS, align 4
  %50 = sub nsw i32 %48, %49
  %51 = load i32, i32* %6, align 4
  %52 = mul nsw i32 %50, %51
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %4, align 8
  %54 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %55 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %54, i32 0, i32 1
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = call i64 @sbused(%struct.TYPE_4__* %57)
  %59 = load i64, i64* %4, align 8
  %60 = add i64 %59, %58
  store i64 %60, i64* %4, align 8
  %61 = load i64, i64* %4, align 8
  %62 = load i64, i64* %5, align 8
  %63 = icmp ult i64 %61, %62
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %30, %29, %24, %17
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @rx_ring_posted(%struct.sdp_sock*) #1

declare dso_local i64 @max(i32, i32) #1

declare dso_local i64 @sbused(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
