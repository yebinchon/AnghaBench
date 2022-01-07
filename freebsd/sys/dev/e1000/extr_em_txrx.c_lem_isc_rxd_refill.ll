; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_em_txrx.c_lem_isc_rxd_refill.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_em_txrx.c_lem_isc_rxd_refill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32, i32* }
%struct.adapter = type { %struct.em_rx_queue*, %struct.TYPE_4__* }
%struct.em_rx_queue = type { %struct.rx_ring }
%struct.rx_ring = type { i32* }
%struct.TYPE_4__ = type { i64* }
%struct.e1000_rx_desc = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_5__*)* @lem_isc_rxd_refill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lem_isc_rxd_refill(i8* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.em_rx_queue*, align 8
  %8 = alloca %struct.rx_ring*, align 8
  %9 = alloca %struct.e1000_rx_desc*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = bitcast i8* %15 to %struct.adapter*
  store %struct.adapter* %16, %struct.adapter** %5, align 8
  %17 = load %struct.adapter*, %struct.adapter** %5, align 8
  %18 = getelementptr inbounds %struct.adapter, %struct.adapter* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %6, align 8
  %20 = load %struct.adapter*, %struct.adapter** %5, align 8
  %21 = getelementptr inbounds %struct.adapter, %struct.adapter* %20, i32 0, i32 0
  %22 = load %struct.em_rx_queue*, %struct.em_rx_queue** %21, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.em_rx_queue, %struct.em_rx_queue* %22, i64 %25
  store %struct.em_rx_queue* %26, %struct.em_rx_queue** %7, align 8
  %27 = load %struct.em_rx_queue*, %struct.em_rx_queue** %7, align 8
  %28 = getelementptr inbounds %struct.em_rx_queue, %struct.em_rx_queue* %27, i32 0, i32 0
  store %struct.rx_ring* %28, %struct.rx_ring** %8, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %10, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %12, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %38 = load i64, i64* %12, align 8
  store i64 %38, i64* %11, align 8
  br label %39

39:                                               ; preds = %70, %2
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %73

43:                                               ; preds = %39
  %44 = load %struct.rx_ring*, %struct.rx_ring** %8, align 8
  %45 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* %11, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = bitcast i32* %48 to %struct.e1000_rx_desc*
  store %struct.e1000_rx_desc* %49, %struct.e1000_rx_desc** %9, align 8
  %50 = load i32*, i32** %10, align 8
  %51 = load i32, i32* %14, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @htole64(i32 %54)
  %56 = load %struct.e1000_rx_desc*, %struct.e1000_rx_desc** %9, align 8
  %57 = getelementptr inbounds %struct.e1000_rx_desc, %struct.e1000_rx_desc* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  %58 = load %struct.e1000_rx_desc*, %struct.e1000_rx_desc** %9, align 8
  %59 = getelementptr inbounds %struct.e1000_rx_desc, %struct.e1000_rx_desc* %58, i32 0, i32 0
  store i64 0, i64* %59, align 8
  %60 = load i64, i64* %11, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %11, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %61, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %43
  store i64 0, i64* %11, align 8
  br label %69

69:                                               ; preds = %68, %43
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %14, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %14, align 4
  br label %39

73:                                               ; preds = %39
  ret void
}

declare dso_local i32 @htole64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
