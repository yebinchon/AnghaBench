; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cesa/extr_cesa.c_cesa_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cesa/extr_cesa.c_cesa_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cesa_softc = type { i64, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@CESA_ICM = common dso_local global i32 0, align 4
@CESA_TDMA_EMR = common dso_local global i32 0, align 4
@CESA_REQUESTS = common dso_local global i32 0, align 4
@RES_CESA_IRQ = common dso_local global i64 0, align 8
@cesa_res_spec = common dso_local global i32 0, align 4
@MV_DEV_88F6828 = common dso_local global i64 0, align 8
@MV_DEV_88F6820 = common dso_local global i64 0, align 8
@MV_DEV_88F6810 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cesa_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cesa_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cesa_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.cesa_softc* @device_get_softc(i32 %5)
  store %struct.cesa_softc* %6, %struct.cesa_softc** %3, align 8
  %7 = load %struct.cesa_softc*, %struct.cesa_softc** %3, align 8
  %8 = load i32, i32* @CESA_ICM, align 4
  %9 = call i32 @CESA_REG_WRITE(%struct.cesa_softc* %7, i32 %8, i32 0)
  %10 = load %struct.cesa_softc*, %struct.cesa_softc** %3, align 8
  %11 = load i32, i32* @CESA_TDMA_EMR, align 4
  %12 = call i32 @CESA_TDMA_WRITE(%struct.cesa_softc* %10, i32 %11, i32 0)
  %13 = load %struct.cesa_softc*, %struct.cesa_softc** %3, align 8
  %14 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %13, i32 0, i32 15
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @crypto_unregister_all(i32 %15)
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %34, %1
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @CESA_REQUESTS, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %17
  %22 = load %struct.cesa_softc*, %struct.cesa_softc** %3, align 8
  %23 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %22, i32 0, i32 10
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.cesa_softc*, %struct.cesa_softc** %3, align 8
  %26 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %25, i32 0, i32 14
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @bus_dmamap_destroy(i32 %24, i32 %32)
  br label %34

34:                                               ; preds = %21
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %17

37:                                               ; preds = %17
  %38 = load %struct.cesa_softc*, %struct.cesa_softc** %3, align 8
  %39 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %38, i32 0, i32 13
  %40 = call i32 @cesa_free_dma_mem(i32* %39)
  %41 = load %struct.cesa_softc*, %struct.cesa_softc** %3, align 8
  %42 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %41, i32 0, i32 12
  %43 = call i32 @cesa_free_dma_mem(i32* %42)
  %44 = load %struct.cesa_softc*, %struct.cesa_softc** %3, align 8
  %45 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %44, i32 0, i32 11
  %46 = call i32 @cesa_free_dma_mem(i32* %45)
  %47 = load %struct.cesa_softc*, %struct.cesa_softc** %3, align 8
  %48 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %47, i32 0, i32 10
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @bus_dma_tag_destroy(i32 %49)
  %51 = load i32, i32* %2, align 4
  %52 = load %struct.cesa_softc*, %struct.cesa_softc** %3, align 8
  %53 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %52, i32 0, i32 8
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* @RES_CESA_IRQ, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.cesa_softc*, %struct.cesa_softc** %3, align 8
  %59 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %58, i32 0, i32 9
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @bus_teardown_intr(i32 %51, i32 %57, i32 %60)
  %62 = load i32, i32* %2, align 4
  %63 = load i32, i32* @cesa_res_spec, align 4
  %64 = load %struct.cesa_softc*, %struct.cesa_softc** %3, align 8
  %65 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %64, i32 0, i32 8
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @bus_release_resources(i32 %62, i32 %63, i32* %66)
  %68 = load %struct.cesa_softc*, %struct.cesa_softc** %3, align 8
  %69 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @MV_DEV_88F6828, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %85, label %73

73:                                               ; preds = %37
  %74 = load %struct.cesa_softc*, %struct.cesa_softc** %3, align 8
  %75 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @MV_DEV_88F6820, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %85, label %79

79:                                               ; preds = %73
  %80 = load %struct.cesa_softc*, %struct.cesa_softc** %3, align 8
  %81 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @MV_DEV_88F6810, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %79, %73, %37
  %86 = load %struct.cesa_softc*, %struct.cesa_softc** %3, align 8
  %87 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %86, i32 0, i32 7
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.cesa_softc*, %struct.cesa_softc** %3, align 8
  %90 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @pmap_unmapdev(i32 %88, i32 %91)
  br label %93

93:                                               ; preds = %85, %79
  %94 = load %struct.cesa_softc*, %struct.cesa_softc** %3, align 8
  %95 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %94, i32 0, i32 5
  %96 = call i32 @mtx_destroy(i32* %95)
  %97 = load %struct.cesa_softc*, %struct.cesa_softc** %3, align 8
  %98 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %97, i32 0, i32 4
  %99 = call i32 @mtx_destroy(i32* %98)
  %100 = load %struct.cesa_softc*, %struct.cesa_softc** %3, align 8
  %101 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %100, i32 0, i32 3
  %102 = call i32 @mtx_destroy(i32* %101)
  %103 = load %struct.cesa_softc*, %struct.cesa_softc** %3, align 8
  %104 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %103, i32 0, i32 2
  %105 = call i32 @mtx_destroy(i32* %104)
  %106 = load %struct.cesa_softc*, %struct.cesa_softc** %3, align 8
  %107 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %106, i32 0, i32 1
  %108 = call i32 @mtx_destroy(i32* %107)
  ret i32 0
}

declare dso_local %struct.cesa_softc* @device_get_softc(i32) #1

declare dso_local i32 @CESA_REG_WRITE(%struct.cesa_softc*, i32, i32) #1

declare dso_local i32 @CESA_TDMA_WRITE(%struct.cesa_softc*, i32, i32) #1

declare dso_local i32 @crypto_unregister_all(i32) #1

declare dso_local i32 @bus_dmamap_destroy(i32, i32) #1

declare dso_local i32 @cesa_free_dma_mem(i32*) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32*) #1

declare dso_local i32 @pmap_unmapdev(i32, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
