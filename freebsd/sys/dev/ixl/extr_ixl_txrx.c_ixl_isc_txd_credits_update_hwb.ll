; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_txrx.c_ixl_isc_txd_credits_update_hwb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_txrx.c_ixl_isc_txd_credits_update_hwb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_vsi = type { %struct.ixl_tx_queue*, %struct.TYPE_2__* }
%struct.ixl_tx_queue = type { %struct.tx_ring }
%struct.tx_ring = type { i32 }
%struct.TYPE_2__ = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32)* @ixl_isc_txd_credits_update_hwb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixl_isc_txd_credits_update_hwb(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ixl_vsi*, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca %struct.ixl_tx_queue*, align 8
  %10 = alloca %struct.tx_ring*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.ixl_vsi*
  store %struct.ixl_vsi* %14, %struct.ixl_vsi** %7, align 8
  %15 = load %struct.ixl_vsi*, %struct.ixl_vsi** %7, align 8
  %16 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  store %struct.TYPE_2__* %17, %struct.TYPE_2__** %8, align 8
  %18 = load %struct.ixl_vsi*, %struct.ixl_vsi** %7, align 8
  %19 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %18, i32 0, i32 0
  %20 = load %struct.ixl_tx_queue*, %struct.ixl_tx_queue** %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds %struct.ixl_tx_queue, %struct.ixl_tx_queue* %20, i64 %21
  store %struct.ixl_tx_queue* %22, %struct.ixl_tx_queue** %9, align 8
  %23 = load %struct.ixl_tx_queue*, %struct.ixl_tx_queue** %9, align 8
  %24 = getelementptr inbounds %struct.ixl_tx_queue, %struct.ixl_tx_queue* %23, i32 0, i32 0
  store %struct.tx_ring* %24, %struct.tx_ring** %10, align 8
  %25 = load %struct.ixl_tx_queue*, %struct.ixl_tx_queue** %9, align 8
  %26 = call i32 @ixl_get_tx_head(%struct.ixl_tx_queue* %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load %struct.tx_ring*, %struct.tx_ring** %10, align 8
  %29 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %27, %30
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %3
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %12, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %41, %39
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %12, align 4
  br label %44

44:                                               ; preds = %34, %3
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i32, i32* %11, align 4
  %49 = load %struct.tx_ring*, %struct.tx_ring** %10, align 8
  %50 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %47, %44
  %52 = load i32, i32* %12, align 4
  ret i32 %52
}

declare dso_local i32 @ixl_get_tx_head(%struct.ixl_tx_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
