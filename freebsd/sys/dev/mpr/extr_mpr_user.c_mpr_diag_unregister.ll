; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_user.c_mpr_diag_unregister.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_user.c_mpr_diag_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpr_softc = type { i64, i32*, i32*, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@MPR_FW_DIAGNOSTIC_UID_NOT_FOUND = common dso_local global i64 0, align 8
@MPR_FW_DIAG_ERROR_INVALID_UID = common dso_local global i32 0, align 4
@MPR_DIAG_FAILURE = common dso_local global i32 0, align 4
@MPR_DIAG_SUCCESS = common dso_local global i32 0, align 4
@MPR_FW_DIAG_TYPE_UNREGISTER = common dso_local global i32 0, align 4
@MPR_FW_DIAG_INVALID_UID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpr_softc*, %struct.TYPE_6__*, i32*)* @mpr_diag_unregister to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpr_diag_unregister(%struct.mpr_softc* %0, %struct.TYPE_6__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mpr_softc*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mpr_softc* %0, %struct.mpr_softc** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %10, align 4
  %15 = load %struct.mpr_softc*, %struct.mpr_softc** %5, align 8
  %16 = load i32, i32* %10, align 4
  %17 = call i64 @mpr_get_fw_diag_buffer_number(%struct.mpr_softc* %15, i32 %16)
  store i64 %17, i64* %9, align 8
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* @MPR_FW_DIAGNOSTIC_UID_NOT_FOUND, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load i32, i32* @MPR_FW_DIAG_ERROR_INVALID_UID, align 4
  %23 = load i32*, i32** %7, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @MPR_DIAG_FAILURE, align 4
  store i32 %24, i32* %4, align 4
  br label %98

25:                                               ; preds = %3
  %26 = load %struct.mpr_softc*, %struct.mpr_softc** %5, align 8
  %27 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %26, i32 0, i32 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = load i64, i64* %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i64 %29
  store %struct.TYPE_5__* %30, %struct.TYPE_5__** %8, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %25
  %36 = load i32, i32* @MPR_DIAG_SUCCESS, align 4
  store i32 %36, i32* %11, align 4
  br label %43

37:                                               ; preds = %25
  %38 = load %struct.mpr_softc*, %struct.mpr_softc** %5, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* @MPR_FW_DIAG_TYPE_UNREGISTER, align 4
  %42 = call i32 @mpr_release_fw_diag_buffer(%struct.mpr_softc* %38, %struct.TYPE_5__* %39, i32* %40, i32 %41)
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %37, %35
  %44 = load i32, i32* @MPR_FW_DIAG_INVALID_UID, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @MPR_DIAG_SUCCESS, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %96

50:                                               ; preds = %43
  %51 = load %struct.mpr_softc*, %struct.mpr_softc** %5, align 8
  %52 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %50
  %56 = load %struct.mpr_softc*, %struct.mpr_softc** %5, align 8
  %57 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.mpr_softc*, %struct.mpr_softc** %5, align 8
  %60 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @bus_dmamap_unload(i32* %58, i32 %61)
  %63 = load %struct.mpr_softc*, %struct.mpr_softc** %5, align 8
  %64 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  br label %65

65:                                               ; preds = %55, %50
  %66 = load %struct.mpr_softc*, %struct.mpr_softc** %5, align 8
  %67 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %83

70:                                               ; preds = %65
  %71 = load %struct.mpr_softc*, %struct.mpr_softc** %5, align 8
  %72 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.mpr_softc*, %struct.mpr_softc** %5, align 8
  %75 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.mpr_softc*, %struct.mpr_softc** %5, align 8
  %78 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @bus_dmamem_free(i32* %73, i32* %76, i32 %79)
  %81 = load %struct.mpr_softc*, %struct.mpr_softc** %5, align 8
  %82 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %81, i32 0, i32 2
  store i32* null, i32** %82, align 8
  br label %83

83:                                               ; preds = %70, %65
  %84 = load %struct.mpr_softc*, %struct.mpr_softc** %5, align 8
  %85 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %95

88:                                               ; preds = %83
  %89 = load %struct.mpr_softc*, %struct.mpr_softc** %5, align 8
  %90 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @bus_dma_tag_destroy(i32* %91)
  %93 = load %struct.mpr_softc*, %struct.mpr_softc** %5, align 8
  %94 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %93, i32 0, i32 1
  store i32* null, i32** %94, align 8
  br label %95

95:                                               ; preds = %88, %83
  br label %96

96:                                               ; preds = %95, %43
  %97 = load i32, i32* %11, align 4
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %96, %21
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i64 @mpr_get_fw_diag_buffer_number(%struct.mpr_softc*, i32) #1

declare dso_local i32 @mpr_release_fw_diag_buffer(%struct.mpr_softc*, %struct.TYPE_5__*, i32*, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32*, i32) #1

declare dso_local i32 @bus_dmamem_free(i32*, i32*, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
