; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_tx.c_mlx4_en_get_inline_hdr_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_tx.c_mlx4_en_get_inline_hdr_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_tx_ring = type { i32 }
%struct.mbuf = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@MIN_PKT_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mlx4_en_tx_ring*, %struct.mbuf*)* @mlx4_en_get_inline_hdr_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mlx4_en_get_inline_hdr_size(%struct.mlx4_en_tx_ring* %0, %struct.mbuf* %1) #0 {
  %3 = alloca %struct.mlx4_en_tx_ring*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca i64, align 8
  store %struct.mlx4_en_tx_ring* %0, %struct.mlx4_en_tx_ring** %3, align 8
  store %struct.mbuf* %1, %struct.mbuf** %4, align 8
  %6 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %3, align 8
  %7 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %10 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @MIN(i32 %8, i32 %11)
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @MIN_PKT_LEN, align 8
  %15 = icmp slt i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %3, align 8
  %21 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %24 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @MIN(i32 %22, i32 %26)
  store i64 %27, i64* %5, align 8
  br label %28

28:                                               ; preds = %19, %2
  %29 = load i64, i64* %5, align 8
  ret i64 %29
}

declare dso_local i64 @MIN(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
