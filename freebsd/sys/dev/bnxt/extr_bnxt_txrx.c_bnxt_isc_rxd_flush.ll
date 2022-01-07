; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_txrx.c_bnxt_isc_rxd_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_txrx.c_bnxt_isc_rxd_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { %struct.TYPE_2__*, %struct.bnxt_ring*, %struct.bnxt_ring* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.bnxt_ring = type { i32 }

@UINT32_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i64, i32)* @bnxt_isc_rxd_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_isc_rxd_flush(i8* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bnxt_softc*, align 8
  %10 = alloca %struct.bnxt_ring*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.bnxt_softc*
  store %struct.bnxt_softc* %12, %struct.bnxt_softc** %9, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = load %struct.bnxt_softc*, %struct.bnxt_softc** %9, align 8
  %17 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %16, i32 0, i32 2
  %18 = load %struct.bnxt_ring*, %struct.bnxt_ring** %17, align 8
  %19 = load i64, i64* %6, align 8
  %20 = getelementptr inbounds %struct.bnxt_ring, %struct.bnxt_ring* %18, i64 %19
  store %struct.bnxt_ring* %20, %struct.bnxt_ring** %10, align 8
  br label %27

21:                                               ; preds = %4
  %22 = load %struct.bnxt_softc*, %struct.bnxt_softc** %9, align 8
  %23 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %22, i32 0, i32 1
  %24 = load %struct.bnxt_ring*, %struct.bnxt_ring** %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds %struct.bnxt_ring, %struct.bnxt_ring* %24, i64 %25
  store %struct.bnxt_ring* %26, %struct.bnxt_ring** %10, align 8
  br label %27

27:                                               ; preds = %21, %15
  %28 = load %struct.bnxt_softc*, %struct.bnxt_softc** %9, align 8
  %29 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i64, i64* %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @UINT32_MAX, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %27
  %38 = load %struct.bnxt_softc*, %struct.bnxt_softc** %9, align 8
  %39 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i64, i64* %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load %struct.bnxt_softc*, %struct.bnxt_softc** %9, align 8
  %45 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i64, i64* %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @BNXT_CP_IDX_DISABLE_DB(i32* %43, i64 %50)
  br label %52

52:                                               ; preds = %37, %27
  %53 = load %struct.bnxt_ring*, %struct.bnxt_ring** %10, align 8
  %54 = load %struct.bnxt_ring*, %struct.bnxt_ring** %10, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @RING_NEXT(%struct.bnxt_ring* %54, i32 %55)
  %57 = call i32 @BNXT_RX_DB(%struct.bnxt_ring* %53, i32 %56)
  %58 = load %struct.bnxt_ring*, %struct.bnxt_ring** %10, align 8
  %59 = load %struct.bnxt_ring*, %struct.bnxt_ring** %10, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @RING_NEXT(%struct.bnxt_ring* %59, i32 %60)
  %62 = call i32 @BNXT_RX_DB(%struct.bnxt_ring* %58, i32 %61)
  ret void
}

declare dso_local i32 @BNXT_CP_IDX_DISABLE_DB(i32*, i64) #1

declare dso_local i32 @BNXT_RX_DB(%struct.bnxt_ring*, i32) #1

declare dso_local i32 @RING_NEXT(%struct.bnxt_ring*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
