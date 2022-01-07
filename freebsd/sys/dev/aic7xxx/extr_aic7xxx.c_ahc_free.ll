; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32, %struct.ahc_softc*, %struct.ahc_softc*, %struct.ahc_softc*, i32, %struct.ahc_softc**, %struct.ahc_softc**, i32, i32, i32, i32, i32 }
%struct.ahc_tmode_tstate = type { i32, %struct.ahc_tmode_tstate*, %struct.ahc_tmode_tstate*, %struct.ahc_tmode_tstate*, i32, %struct.ahc_tmode_tstate**, %struct.ahc_tmode_tstate**, i32, i32, i32, i32, i32 }

@AHC_NUM_TARGETS = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@AHC_NUM_LUNS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ahc_free(%struct.ahc_softc* %0) #0 {
  %2 = alloca %struct.ahc_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ahc_tmode_tstate*, align 8
  store %struct.ahc_softc* %0, %struct.ahc_softc** %2, align 8
  %5 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %6 = bitcast %struct.ahc_softc* %5 to %struct.ahc_tmode_tstate*
  %7 = call i32 @ahc_terminate_recovery_thread(%struct.ahc_tmode_tstate* %6)
  %8 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %9 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %11 [
    i32 5, label %12
    i32 4, label %16
    i32 3, label %26
    i32 2, label %39
    i32 1, label %46
    i32 0, label %47
  ]

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %1, %11
  %13 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %14 = bitcast %struct.ahc_softc* %13 to %struct.ahc_tmode_tstate*
  %15 = call i32 @ahc_shutdown(%struct.ahc_tmode_tstate* %14)
  br label %16

16:                                               ; preds = %1, %12
  %17 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %18 = bitcast %struct.ahc_softc* %17 to %struct.ahc_tmode_tstate*
  %19 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %20 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %19, i32 0, i32 9
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %23 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %22, i32 0, i32 10
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @aic_dmamap_unload(%struct.ahc_tmode_tstate* %18, i32 %21, i32 %24)
  br label %26

26:                                               ; preds = %1, %16
  %27 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %28 = bitcast %struct.ahc_softc* %27 to %struct.ahc_tmode_tstate*
  %29 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %30 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %29, i32 0, i32 9
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %33 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %32, i32 0, i32 11
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %36 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %35, i32 0, i32 10
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @aic_dmamem_free(%struct.ahc_tmode_tstate* %28, i32 %31, i32 %34, i32 %37)
  br label %39

39:                                               ; preds = %1, %26
  %40 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %41 = bitcast %struct.ahc_softc* %40 to %struct.ahc_tmode_tstate*
  %42 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %43 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %42, i32 0, i32 9
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @aic_dma_tag_destroy(%struct.ahc_tmode_tstate* %41, i32 %44)
  br label %46

46:                                               ; preds = %1, %39
  br label %48

47:                                               ; preds = %1
  br label %48

48:                                               ; preds = %47, %46
  %49 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %50 = bitcast %struct.ahc_softc* %49 to %struct.ahc_tmode_tstate*
  %51 = call i32 @ahc_platform_free(%struct.ahc_tmode_tstate* %50)
  %52 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %53 = bitcast %struct.ahc_softc* %52 to %struct.ahc_tmode_tstate*
  %54 = call i32 @ahc_fini_scbdata(%struct.ahc_tmode_tstate* %53)
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %75, %48
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @AHC_NUM_TARGETS, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %78

59:                                               ; preds = %55
  %60 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %61 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %60, i32 0, i32 6
  %62 = load %struct.ahc_softc**, %struct.ahc_softc*** %61, align 8
  %63 = load i32, i32* %3, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.ahc_softc*, %struct.ahc_softc** %62, i64 %64
  %66 = load %struct.ahc_softc*, %struct.ahc_softc** %65, align 8
  %67 = bitcast %struct.ahc_softc* %66 to %struct.ahc_tmode_tstate*
  store %struct.ahc_tmode_tstate* %67, %struct.ahc_tmode_tstate** %4, align 8
  %68 = load %struct.ahc_tmode_tstate*, %struct.ahc_tmode_tstate** %4, align 8
  %69 = icmp ne %struct.ahc_tmode_tstate* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %59
  %71 = load %struct.ahc_tmode_tstate*, %struct.ahc_tmode_tstate** %4, align 8
  %72 = load i32, i32* @M_DEVBUF, align 4
  %73 = call i32 @free(%struct.ahc_tmode_tstate* %71, i32 %72)
  br label %74

74:                                               ; preds = %70, %59
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %3, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %3, align 4
  br label %55

78:                                               ; preds = %55
  %79 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %80 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %79, i32 0, i32 2
  %81 = load %struct.ahc_softc*, %struct.ahc_softc** %80, align 8
  %82 = icmp ne %struct.ahc_softc* %81, null
  br i1 %82, label %83, label %90

83:                                               ; preds = %78
  %84 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %85 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %84, i32 0, i32 2
  %86 = load %struct.ahc_softc*, %struct.ahc_softc** %85, align 8
  %87 = bitcast %struct.ahc_softc* %86 to %struct.ahc_tmode_tstate*
  %88 = load i32, i32* @M_DEVBUF, align 4
  %89 = call i32 @free(%struct.ahc_tmode_tstate* %87, i32 %88)
  br label %90

90:                                               ; preds = %83, %78
  %91 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %92 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %91, i32 0, i32 1
  %93 = load %struct.ahc_softc*, %struct.ahc_softc** %92, align 8
  %94 = icmp ne %struct.ahc_softc* %93, null
  br i1 %94, label %95, label %102

95:                                               ; preds = %90
  %96 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %97 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %96, i32 0, i32 1
  %98 = load %struct.ahc_softc*, %struct.ahc_softc** %97, align 8
  %99 = bitcast %struct.ahc_softc* %98 to %struct.ahc_tmode_tstate*
  %100 = load i32, i32* @M_DEVBUF, align 4
  %101 = call i32 @free(%struct.ahc_tmode_tstate* %99, i32 %100)
  br label %102

102:                                              ; preds = %95, %90
  %103 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %104 = bitcast %struct.ahc_softc* %103 to %struct.ahc_tmode_tstate*
  %105 = load i32, i32* @M_DEVBUF, align 4
  %106 = call i32 @free(%struct.ahc_tmode_tstate* %104, i32 %105)
  ret void
}

declare dso_local i32 @ahc_terminate_recovery_thread(%struct.ahc_tmode_tstate*) #1

declare dso_local i32 @ahc_shutdown(%struct.ahc_tmode_tstate*) #1

declare dso_local i32 @aic_dmamap_unload(%struct.ahc_tmode_tstate*, i32, i32) #1

declare dso_local i32 @aic_dmamem_free(%struct.ahc_tmode_tstate*, i32, i32, i32) #1

declare dso_local i32 @aic_dma_tag_destroy(%struct.ahc_tmode_tstate*, i32) #1

declare dso_local i32 @ahc_platform_free(%struct.ahc_tmode_tstate*) #1

declare dso_local i32 @ahc_fini_scbdata(%struct.ahc_tmode_tstate*) #1

declare dso_local i32 @free(%struct.ahc_tmode_tstate*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
