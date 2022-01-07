; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_ext_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_ext_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.mwl_softc* }
%struct.mwl_softc = type { i64, i32, i32, i64 }

@mwl_rxdmalow = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mbuf*)* @mwl_ext_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwl_ext_free(%struct.mbuf* %0) #0 {
  %2 = alloca %struct.mbuf*, align 8
  %3 = alloca %struct.mwl_softc*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %2, align 8
  %4 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %5 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  %7 = load %struct.mwl_softc*, %struct.mwl_softc** %6, align 8
  store %struct.mwl_softc* %7, %struct.mwl_softc** %3, align 8
  %8 = load %struct.mwl_softc*, %struct.mwl_softc** %3, align 8
  %9 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %10 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @mwl_putrxdma(%struct.mwl_softc* %8, i32 %12)
  %14 = load %struct.mwl_softc*, %struct.mwl_softc** %3, align 8
  %15 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %1
  %19 = load %struct.mwl_softc*, %struct.mwl_softc** %3, align 8
  %20 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @mwl_rxdmalow, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %18
  %25 = load %struct.mwl_softc*, %struct.mwl_softc** %3, align 8
  %26 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %25, i32 0, i32 3
  store i64 0, i64* %26, align 8
  %27 = load %struct.mwl_softc*, %struct.mwl_softc** %3, align 8
  %28 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mwl_softc*, %struct.mwl_softc** %3, align 8
  %31 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @mwl_hal_intrset(i32 %29, i32 %32)
  br label %34

34:                                               ; preds = %24, %18, %1
  ret void
}

declare dso_local i32 @mwl_putrxdma(%struct.mwl_softc*, i32) #1

declare dso_local i32 @mwl_hal_intrset(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
