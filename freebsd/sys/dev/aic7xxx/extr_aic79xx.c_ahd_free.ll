; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32, %struct.ahd_softc*, %struct.ahd_softc*, %struct.ahd_softc*, %struct.ahd_softc*, i32, %struct.ahd_softc**, %struct.ahd_softc**, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ahd_tmode_tstate = type { i32, %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate*, i32, %struct.ahd_tmode_tstate**, %struct.ahd_tmode_tstate**, i32, i32, i32, %struct.TYPE_2__, i32 }

@AHD_NUM_TARGETS = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@AHD_NUM_LUNS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ahd_free(%struct.ahd_softc* %0) #0 {
  %2 = alloca %struct.ahd_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ahd_tmode_tstate*, align 8
  store %struct.ahd_softc* %0, %struct.ahd_softc** %2, align 8
  %5 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %6 = bitcast %struct.ahd_softc* %5 to %struct.ahd_tmode_tstate*
  %7 = call i32 @ahd_terminate_recovery_thread(%struct.ahd_tmode_tstate* %6)
  %8 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %9 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %11 [
    i32 5, label %12
    i32 4, label %16
    i32 3, label %27
    i32 2, label %41
    i32 1, label %48
    i32 0, label %49
  ]

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %1, %11
  %13 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %14 = bitcast %struct.ahd_softc* %13 to %struct.ahd_tmode_tstate*
  %15 = call i32 @ahd_shutdown(%struct.ahd_tmode_tstate* %14)
  br label %16

16:                                               ; preds = %1, %12
  %17 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %18 = bitcast %struct.ahd_softc* %17 to %struct.ahd_tmode_tstate*
  %19 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %20 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %19, i32 0, i32 10
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %23 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %22, i32 0, i32 11
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @aic_dmamap_unload(%struct.ahd_tmode_tstate* %18, i32 %21, i32 %25)
  br label %27

27:                                               ; preds = %1, %16
  %28 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %29 = bitcast %struct.ahd_softc* %28 to %struct.ahd_tmode_tstate*
  %30 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %31 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %30, i32 0, i32 10
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %34 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %33, i32 0, i32 12
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %37 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %36, i32 0, i32 11
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @aic_dmamem_free(%struct.ahd_tmode_tstate* %29, i32 %32, i32 %35, i32 %39)
  br label %41

41:                                               ; preds = %1, %27
  %42 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %43 = bitcast %struct.ahd_softc* %42 to %struct.ahd_tmode_tstate*
  %44 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %45 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %44, i32 0, i32 10
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @aic_dma_tag_destroy(%struct.ahd_tmode_tstate* %43, i32 %46)
  br label %48

48:                                               ; preds = %1, %41
  br label %50

49:                                               ; preds = %1
  br label %50

50:                                               ; preds = %49, %48
  %51 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %52 = bitcast %struct.ahd_softc* %51 to %struct.ahd_tmode_tstate*
  %53 = call i32 @ahd_platform_free(%struct.ahd_tmode_tstate* %52)
  %54 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %55 = bitcast %struct.ahd_softc* %54 to %struct.ahd_tmode_tstate*
  %56 = call i32 @ahd_fini_scbdata(%struct.ahd_tmode_tstate* %55)
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %77, %50
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @AHD_NUM_TARGETS, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %80

61:                                               ; preds = %57
  %62 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %63 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %62, i32 0, i32 7
  %64 = load %struct.ahd_softc**, %struct.ahd_softc*** %63, align 8
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.ahd_softc*, %struct.ahd_softc** %64, i64 %66
  %68 = load %struct.ahd_softc*, %struct.ahd_softc** %67, align 8
  %69 = bitcast %struct.ahd_softc* %68 to %struct.ahd_tmode_tstate*
  store %struct.ahd_tmode_tstate* %69, %struct.ahd_tmode_tstate** %4, align 8
  %70 = load %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %4, align 8
  %71 = icmp ne %struct.ahd_tmode_tstate* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %61
  %73 = load %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %4, align 8
  %74 = load i32, i32* @M_DEVBUF, align 4
  %75 = call i32 @free(%struct.ahd_tmode_tstate* %73, i32 %74)
  br label %76

76:                                               ; preds = %72, %61
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %3, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %3, align 4
  br label %57

80:                                               ; preds = %57
  %81 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %82 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %81, i32 0, i32 3
  %83 = load %struct.ahd_softc*, %struct.ahd_softc** %82, align 8
  %84 = icmp ne %struct.ahd_softc* %83, null
  br i1 %84, label %85, label %92

85:                                               ; preds = %80
  %86 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %87 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %86, i32 0, i32 3
  %88 = load %struct.ahd_softc*, %struct.ahd_softc** %87, align 8
  %89 = bitcast %struct.ahd_softc* %88 to %struct.ahd_tmode_tstate*
  %90 = load i32, i32* @M_DEVBUF, align 4
  %91 = call i32 @free(%struct.ahd_tmode_tstate* %89, i32 %90)
  br label %92

92:                                               ; preds = %85, %80
  %93 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %94 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %93, i32 0, i32 2
  %95 = load %struct.ahd_softc*, %struct.ahd_softc** %94, align 8
  %96 = icmp ne %struct.ahd_softc* %95, null
  br i1 %96, label %97, label %104

97:                                               ; preds = %92
  %98 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %99 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %98, i32 0, i32 2
  %100 = load %struct.ahd_softc*, %struct.ahd_softc** %99, align 8
  %101 = bitcast %struct.ahd_softc* %100 to %struct.ahd_tmode_tstate*
  %102 = load i32, i32* @M_DEVBUF, align 4
  %103 = call i32 @free(%struct.ahd_tmode_tstate* %101, i32 %102)
  br label %104

104:                                              ; preds = %97, %92
  %105 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %106 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %105, i32 0, i32 1
  %107 = load %struct.ahd_softc*, %struct.ahd_softc** %106, align 8
  %108 = icmp ne %struct.ahd_softc* %107, null
  br i1 %108, label %109, label %116

109:                                              ; preds = %104
  %110 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %111 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %110, i32 0, i32 1
  %112 = load %struct.ahd_softc*, %struct.ahd_softc** %111, align 8
  %113 = bitcast %struct.ahd_softc* %112 to %struct.ahd_tmode_tstate*
  %114 = load i32, i32* @M_DEVBUF, align 4
  %115 = call i32 @free(%struct.ahd_tmode_tstate* %113, i32 %114)
  br label %116

116:                                              ; preds = %109, %104
  %117 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %118 = bitcast %struct.ahd_softc* %117 to %struct.ahd_tmode_tstate*
  %119 = load i32, i32* @M_DEVBUF, align 4
  %120 = call i32 @free(%struct.ahd_tmode_tstate* %118, i32 %119)
  ret void
}

declare dso_local i32 @ahd_terminate_recovery_thread(%struct.ahd_tmode_tstate*) #1

declare dso_local i32 @ahd_shutdown(%struct.ahd_tmode_tstate*) #1

declare dso_local i32 @aic_dmamap_unload(%struct.ahd_tmode_tstate*, i32, i32) #1

declare dso_local i32 @aic_dmamem_free(%struct.ahd_tmode_tstate*, i32, i32, i32) #1

declare dso_local i32 @aic_dma_tag_destroy(%struct.ahd_tmode_tstate*, i32) #1

declare dso_local i32 @ahd_platform_free(%struct.ahd_tmode_tstate*) #1

declare dso_local i32 @ahd_fini_scbdata(%struct.ahd_tmode_tstate*) #1

declare dso_local i32 @free(%struct.ahd_tmode_tstate*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
