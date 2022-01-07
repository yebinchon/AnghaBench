; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_em_txrx.c_lem_isc_rxd_available.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_em_txrx.c_lem_isc_rxd_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.em_rx_queue*, %struct.TYPE_2__* }
%struct.em_rx_queue = type { %struct.rx_ring }
%struct.rx_ring = type { i32* }
%struct.TYPE_2__ = type { i32* }
%struct.e1000_rx_desc = type { i32 }

@E1000_RXD_STAT_DD = common dso_local global i32 0, align 4
@E1000_RXD_STAT_EOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32, i32)* @lem_isc_rxd_available to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lem_isc_rxd_available(i8* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.adapter*, align 8
  %10 = alloca %struct.TYPE_2__*, align 8
  %11 = alloca %struct.em_rx_queue*, align 8
  %12 = alloca %struct.rx_ring*, align 8
  %13 = alloca %struct.e1000_rx_desc*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %17 to %struct.adapter*
  store %struct.adapter* %18, %struct.adapter** %9, align 8
  %19 = load %struct.adapter*, %struct.adapter** %9, align 8
  %20 = getelementptr inbounds %struct.adapter, %struct.adapter* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  store %struct.TYPE_2__* %21, %struct.TYPE_2__** %10, align 8
  %22 = load %struct.adapter*, %struct.adapter** %9, align 8
  %23 = getelementptr inbounds %struct.adapter, %struct.adapter* %22, i32 0, i32 0
  %24 = load %struct.em_rx_queue*, %struct.em_rx_queue** %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds %struct.em_rx_queue, %struct.em_rx_queue* %24, i64 %25
  store %struct.em_rx_queue* %26, %struct.em_rx_queue** %11, align 8
  %27 = load %struct.em_rx_queue*, %struct.em_rx_queue** %11, align 8
  %28 = getelementptr inbounds %struct.em_rx_queue, %struct.em_rx_queue* %27, i32 0, i32 0
  store %struct.rx_ring* %28, %struct.rx_ring** %12, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %16, align 4
  br label %30

30:                                               ; preds = %78, %4
  %31 = load i32, i32* %15, align 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %31, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp sle i32 %39, %40
  br label %42

42:                                               ; preds = %38, %30
  %43 = phi i1 [ false, %30 ], [ %41, %38 ]
  br i1 %43, label %44, label %79

44:                                               ; preds = %42
  %45 = load %struct.rx_ring*, %struct.rx_ring** %12, align 8
  %46 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %16, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = bitcast i32* %50 to %struct.e1000_rx_desc*
  store %struct.e1000_rx_desc* %51, %struct.e1000_rx_desc** %13, align 8
  %52 = load %struct.e1000_rx_desc*, %struct.e1000_rx_desc** %13, align 8
  %53 = getelementptr inbounds %struct.e1000_rx_desc, %struct.e1000_rx_desc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* @E1000_RXD_STAT_DD, align 4
  %57 = and i32 %55, %56
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %44
  br label %79

60:                                               ; preds = %44
  %61 = load i32, i32* %16, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %16, align 4
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %62, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  store i32 0, i32* %16, align 4
  br label %70

70:                                               ; preds = %69, %60
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* @E1000_RXD_STAT_EOP, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i32, i32* %15, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %15, align 4
  br label %78

78:                                               ; preds = %75, %70
  br label %30

79:                                               ; preds = %59, %42
  %80 = load i32, i32* %15, align 4
  ret i32 %80
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
