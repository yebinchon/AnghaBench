; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_em_txrx.c_em_isc_rxd_available.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_em_txrx.c_em_isc_rxd_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.em_rx_queue*, %struct.TYPE_6__* }
%struct.em_rx_queue = type { %struct.rx_ring }
%struct.rx_ring = type { %union.e1000_rx_desc_extended* }
%union.e1000_rx_desc_extended = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32* }

@E1000_RXD_STAT_DD = common dso_local global i32 0, align 4
@E1000_RXD_STAT_EOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32, i32)* @em_isc_rxd_available to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em_isc_rxd_available(i8* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.adapter*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.em_rx_queue*, align 8
  %12 = alloca %struct.rx_ring*, align 8
  %13 = alloca %union.e1000_rx_desc_extended*, align 8
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
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %10, align 8
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

30:                                               ; preds = %80, %4
  %31 = load i32, i32* %15, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
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
  br i1 %43, label %44, label %81

44:                                               ; preds = %42
  %45 = load %struct.rx_ring*, %struct.rx_ring** %12, align 8
  %46 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %45, i32 0, i32 0
  %47 = load %union.e1000_rx_desc_extended*, %union.e1000_rx_desc_extended** %46, align 8
  %48 = load i32, i32* %16, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %union.e1000_rx_desc_extended, %union.e1000_rx_desc_extended* %47, i64 %49
  store %union.e1000_rx_desc_extended* %50, %union.e1000_rx_desc_extended** %13, align 8
  %51 = load %union.e1000_rx_desc_extended*, %union.e1000_rx_desc_extended** %13, align 8
  %52 = bitcast %union.e1000_rx_desc_extended* %51 to %struct.TYPE_5__*
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @le32toh(i32 %55)
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* @E1000_RXD_STAT_DD, align 4
  %59 = and i32 %57, %58
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %44
  br label %81

62:                                               ; preds = %44
  %63 = load i32, i32* %16, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %16, align 4
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %64, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  store i32 0, i32* %16, align 4
  br label %72

72:                                               ; preds = %71, %62
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* @E1000_RXD_STAT_EOP, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i32, i32* %15, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %15, align 4
  br label %80

80:                                               ; preds = %77, %72
  br label %30

81:                                               ; preds = %61, %42
  %82 = load i32, i32* %15, align 4
  ret i32 %82
}

declare dso_local i32 @le32toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
