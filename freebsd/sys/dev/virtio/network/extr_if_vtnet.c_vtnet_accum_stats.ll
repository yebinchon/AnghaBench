; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_accum_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_accum_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtnet_softc = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.vtnet_txq_stats }
%struct.vtnet_txq_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_3__ = type { %struct.vtnet_txq_stats }
%struct.vtnet_rxq_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtnet_softc*, %struct.vtnet_rxq_stats*, %struct.vtnet_txq_stats*)* @vtnet_accum_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtnet_accum_stats(%struct.vtnet_softc* %0, %struct.vtnet_rxq_stats* %1, %struct.vtnet_txq_stats* %2) #0 {
  %4 = alloca %struct.vtnet_softc*, align 8
  %5 = alloca %struct.vtnet_rxq_stats*, align 8
  %6 = alloca %struct.vtnet_txq_stats*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vtnet_rxq_stats*, align 8
  %9 = alloca %struct.vtnet_txq_stats*, align 8
  store %struct.vtnet_softc* %0, %struct.vtnet_softc** %4, align 8
  store %struct.vtnet_rxq_stats* %1, %struct.vtnet_rxq_stats** %5, align 8
  store %struct.vtnet_txq_stats* %2, %struct.vtnet_txq_stats** %6, align 8
  %10 = load %struct.vtnet_rxq_stats*, %struct.vtnet_rxq_stats** %5, align 8
  %11 = bitcast %struct.vtnet_rxq_stats* %10 to %struct.vtnet_txq_stats*
  %12 = call i32 @bzero(%struct.vtnet_txq_stats* %11, i32 88)
  %13 = load %struct.vtnet_txq_stats*, %struct.vtnet_txq_stats** %6, align 8
  %14 = call i32 @bzero(%struct.vtnet_txq_stats* %13, i32 88)
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %114, %3
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.vtnet_softc*, %struct.vtnet_softc** %4, align 8
  %18 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %117

21:                                               ; preds = %15
  %22 = load %struct.vtnet_softc*, %struct.vtnet_softc** %4, align 8
  %23 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %22, i32 0, i32 2
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = bitcast %struct.vtnet_txq_stats* %28 to %struct.vtnet_rxq_stats*
  store %struct.vtnet_rxq_stats* %29, %struct.vtnet_rxq_stats** %8, align 8
  %30 = load %struct.vtnet_rxq_stats*, %struct.vtnet_rxq_stats** %8, align 8
  %31 = getelementptr inbounds %struct.vtnet_rxq_stats, %struct.vtnet_rxq_stats* %30, i32 0, i32 10
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.vtnet_rxq_stats*, %struct.vtnet_rxq_stats** %5, align 8
  %34 = getelementptr inbounds %struct.vtnet_rxq_stats, %struct.vtnet_rxq_stats* %33, i32 0, i32 10
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, %32
  store i64 %36, i64* %34, align 8
  %37 = load %struct.vtnet_rxq_stats*, %struct.vtnet_rxq_stats** %8, align 8
  %38 = getelementptr inbounds %struct.vtnet_rxq_stats, %struct.vtnet_rxq_stats* %37, i32 0, i32 9
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.vtnet_rxq_stats*, %struct.vtnet_rxq_stats** %5, align 8
  %41 = getelementptr inbounds %struct.vtnet_rxq_stats, %struct.vtnet_rxq_stats* %40, i32 0, i32 9
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, %39
  store i64 %43, i64* %41, align 8
  %44 = load %struct.vtnet_rxq_stats*, %struct.vtnet_rxq_stats** %8, align 8
  %45 = getelementptr inbounds %struct.vtnet_rxq_stats, %struct.vtnet_rxq_stats* %44, i32 0, i32 8
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.vtnet_rxq_stats*, %struct.vtnet_rxq_stats** %5, align 8
  %48 = getelementptr inbounds %struct.vtnet_rxq_stats, %struct.vtnet_rxq_stats* %47, i32 0, i32 8
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, %46
  store i64 %50, i64* %48, align 8
  %51 = load %struct.vtnet_rxq_stats*, %struct.vtnet_rxq_stats** %8, align 8
  %52 = getelementptr inbounds %struct.vtnet_rxq_stats, %struct.vtnet_rxq_stats* %51, i32 0, i32 7
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.vtnet_rxq_stats*, %struct.vtnet_rxq_stats** %5, align 8
  %55 = getelementptr inbounds %struct.vtnet_rxq_stats, %struct.vtnet_rxq_stats* %54, i32 0, i32 7
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, %53
  store i64 %57, i64* %55, align 8
  %58 = load %struct.vtnet_rxq_stats*, %struct.vtnet_rxq_stats** %8, align 8
  %59 = getelementptr inbounds %struct.vtnet_rxq_stats, %struct.vtnet_rxq_stats* %58, i32 0, i32 6
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.vtnet_rxq_stats*, %struct.vtnet_rxq_stats** %5, align 8
  %62 = getelementptr inbounds %struct.vtnet_rxq_stats, %struct.vtnet_rxq_stats* %61, i32 0, i32 6
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, %60
  store i64 %64, i64* %62, align 8
  %65 = load %struct.vtnet_rxq_stats*, %struct.vtnet_rxq_stats** %8, align 8
  %66 = getelementptr inbounds %struct.vtnet_rxq_stats, %struct.vtnet_rxq_stats* %65, i32 0, i32 5
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.vtnet_rxq_stats*, %struct.vtnet_rxq_stats** %5, align 8
  %69 = getelementptr inbounds %struct.vtnet_rxq_stats, %struct.vtnet_rxq_stats* %68, i32 0, i32 5
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, %67
  store i64 %71, i64* %69, align 8
  %72 = load %struct.vtnet_softc*, %struct.vtnet_softc** %4, align 8
  %73 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %72, i32 0, i32 1
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store %struct.vtnet_txq_stats* %78, %struct.vtnet_txq_stats** %9, align 8
  %79 = load %struct.vtnet_txq_stats*, %struct.vtnet_txq_stats** %9, align 8
  %80 = getelementptr inbounds %struct.vtnet_txq_stats, %struct.vtnet_txq_stats* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.vtnet_txq_stats*, %struct.vtnet_txq_stats** %6, align 8
  %83 = getelementptr inbounds %struct.vtnet_txq_stats, %struct.vtnet_txq_stats* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, %81
  store i64 %85, i64* %83, align 8
  %86 = load %struct.vtnet_txq_stats*, %struct.vtnet_txq_stats** %9, align 8
  %87 = getelementptr inbounds %struct.vtnet_txq_stats, %struct.vtnet_txq_stats* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.vtnet_txq_stats*, %struct.vtnet_txq_stats** %6, align 8
  %90 = getelementptr inbounds %struct.vtnet_txq_stats, %struct.vtnet_txq_stats* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %91, %88
  store i64 %92, i64* %90, align 8
  %93 = load %struct.vtnet_txq_stats*, %struct.vtnet_txq_stats** %9, align 8
  %94 = getelementptr inbounds %struct.vtnet_txq_stats, %struct.vtnet_txq_stats* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.vtnet_txq_stats*, %struct.vtnet_txq_stats** %6, align 8
  %97 = getelementptr inbounds %struct.vtnet_txq_stats, %struct.vtnet_txq_stats* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %98, %95
  store i64 %99, i64* %97, align 8
  %100 = load %struct.vtnet_txq_stats*, %struct.vtnet_txq_stats** %9, align 8
  %101 = getelementptr inbounds %struct.vtnet_txq_stats, %struct.vtnet_txq_stats* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.vtnet_txq_stats*, %struct.vtnet_txq_stats** %6, align 8
  %104 = getelementptr inbounds %struct.vtnet_txq_stats, %struct.vtnet_txq_stats* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %105, %102
  store i64 %106, i64* %104, align 8
  %107 = load %struct.vtnet_txq_stats*, %struct.vtnet_txq_stats** %9, align 8
  %108 = getelementptr inbounds %struct.vtnet_txq_stats, %struct.vtnet_txq_stats* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.vtnet_txq_stats*, %struct.vtnet_txq_stats** %6, align 8
  %111 = getelementptr inbounds %struct.vtnet_txq_stats, %struct.vtnet_txq_stats* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %112, %109
  store i64 %113, i64* %111, align 8
  br label %114

114:                                              ; preds = %21
  %115 = load i32, i32* %7, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %7, align 4
  br label %15

117:                                              ; preds = %15
  ret void
}

declare dso_local i32 @bzero(%struct.vtnet_txq_stats*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
