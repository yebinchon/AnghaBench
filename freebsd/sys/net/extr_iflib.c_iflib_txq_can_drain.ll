; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c_iflib_txq_can_drain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c_iflib_txq_can_drain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifmp_ring = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__*, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 (i32, i32, i32)*, i32 }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifmp_ring*)* @iflib_txq_can_drain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iflib_txq_can_drain(%struct.ifmp_ring* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ifmp_ring*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  store %struct.ifmp_ring* %0, %struct.ifmp_ring** %3, align 8
  %6 = load %struct.ifmp_ring*, %struct.ifmp_ring** %3, align 8
  %7 = getelementptr inbounds %struct.ifmp_ring, %struct.ifmp_ring* %6, i32 0, i32 0
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %8, %struct.TYPE_7__** %4, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %5, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = call i64 @TXQ_AVAIL(%struct.TYPE_7__* %12)
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %15 = call i64 @MAX_TX_DESC(%struct.TYPE_8__* %14)
  %16 = add nsw i64 %15, 2
  %17 = icmp sgt i64 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %42

19:                                               ; preds = %1
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %31 = call i32 @bus_dmamap_sync(i32 %24, i32 %29, i32 %30)
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %33, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 %34(i32 %37, i32 %40, i32 0)
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %19, %18
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i64 @TXQ_AVAIL(%struct.TYPE_7__*) #1

declare dso_local i64 @MAX_TX_DESC(%struct.TYPE_8__*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
