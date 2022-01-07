; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_rxdma_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_rxdma_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwl_softc = type { i64, %struct.TYPE_2__, i32*, i32, i32 }
%struct.TYPE_2__ = type { i64, i32* }

@M_MWLDEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mwl_softc*)* @mwl_rxdma_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwl_rxdma_cleanup(%struct.mwl_softc* %0) #0 {
  %2 = alloca %struct.mwl_softc*, align 8
  store %struct.mwl_softc* %0, %struct.mwl_softc** %2, align 8
  %3 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %4 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %1
  %8 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %9 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %12 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @bus_dmamap_unload(i32 %10, i32 %13)
  %15 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %16 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  br label %17

17:                                               ; preds = %7, %1
  %18 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %19 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %35

22:                                               ; preds = %17
  %23 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %24 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %27 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %30 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @bus_dmamem_free(i32 %25, i32* %28, i32 %31)
  %33 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %34 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %33, i32 0, i32 2
  store i32* null, i32** %34, align 8
  br label %35

35:                                               ; preds = %22, %17
  %36 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %37 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %51

41:                                               ; preds = %35
  %42 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %43 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* @M_MWLDEV, align 4
  %47 = call i32 @free(i32* %45, i32 %46)
  %48 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %49 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i32* null, i32** %50, align 8
  br label %51

51:                                               ; preds = %41, %35
  %52 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %53 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %59 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %60 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %59, i32 0, i32 1
  %61 = call i32 @mwl_desc_cleanup(%struct.mwl_softc* %58, %struct.TYPE_2__* %60)
  br label %62

62:                                               ; preds = %57, %51
  ret void
}

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @bus_dmamem_free(i32, i32*, i32) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @mwl_desc_cleanup(%struct.mwl_softc*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
