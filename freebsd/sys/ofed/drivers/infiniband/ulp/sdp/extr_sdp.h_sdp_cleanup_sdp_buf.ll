; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp.h_sdp_cleanup_sdp_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp.h_sdp_cleanup_sdp_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdp_sock = type { %struct.ib_device* }
%struct.ib_device = type { i32 }
%struct.sdp_buf = type { i32*, %struct.mbuf* }
%struct.mbuf = type { i32, %struct.mbuf* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdp_sock*, %struct.sdp_buf*, i32)* @sdp_cleanup_sdp_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdp_cleanup_sdp_buf(%struct.sdp_sock* %0, %struct.sdp_buf* %1, i32 %2) #0 {
  %4 = alloca %struct.sdp_sock*, align 8
  %5 = alloca %struct.sdp_buf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_device*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca i32, align 4
  store %struct.sdp_sock* %0, %struct.sdp_sock** %4, align 8
  store %struct.sdp_buf* %1, %struct.sdp_buf** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.sdp_sock*, %struct.sdp_sock** %4, align 8
  %11 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %10, i32 0, i32 0
  %12 = load %struct.ib_device*, %struct.ib_device** %11, align 8
  store %struct.ib_device* %12, %struct.ib_device** %7, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.sdp_buf*, %struct.sdp_buf** %5, align 8
  %14 = getelementptr inbounds %struct.sdp_buf, %struct.sdp_buf* %13, i32 0, i32 1
  %15 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  store %struct.mbuf* %15, %struct.mbuf** %8, align 8
  br label %16

16:                                               ; preds = %33, %3
  %17 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %18 = icmp ne %struct.mbuf* %17, null
  br i1 %18, label %19, label %39

19:                                               ; preds = %16
  %20 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %21 = load %struct.sdp_buf*, %struct.sdp_buf** %5, align 8
  %22 = getelementptr inbounds %struct.sdp_buf, %struct.sdp_buf* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %29 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @ib_dma_unmap_single(%struct.ib_device* %20, i32 %27, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %19
  %34 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %35 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %34, i32 0, i32 1
  %36 = load %struct.mbuf*, %struct.mbuf** %35, align 8
  store %struct.mbuf* %36, %struct.mbuf** %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %9, align 4
  br label %16

39:                                               ; preds = %16
  ret void
}

declare dso_local i32 @ib_dma_unmap_single(%struct.ib_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
