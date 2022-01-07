; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_bman.c_bman_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_bman.c_bman_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bman_softc = type { i32*, i32*, i32*, i64, i32, i64 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i64, i32, i64, %struct.bman_softc*, i32, i32, i32 }

@bman_sc = common dso_local global %struct.bman_softc* null, align 8
@E_OK = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@BMAN_CCSR_SIZE = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@NCSW_MASTER_ID = common dso_local global i32 0, align 4
@BMAN_MAX_BUFFERS = common dso_local global i32 0, align 4
@bman_exception = common dso_local global i32 0, align 4
@BM_MAX_NUM_OF_POOLS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Hardware version: %d.%d.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bman_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.bman_softc*, align 8
  %5 = alloca %struct.TYPE_6__, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_7__, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.bman_softc* @device_get_softc(i32 %8)
  store %struct.bman_softc* %9, %struct.bman_softc** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.bman_softc*, %struct.bman_softc** %4, align 8
  %12 = getelementptr inbounds %struct.bman_softc, %struct.bman_softc* %11, i32 0, i32 4
  store i32 %10, i32* %12, align 8
  %13 = load %struct.bman_softc*, %struct.bman_softc** %4, align 8
  store %struct.bman_softc* %13, %struct.bman_softc** @bman_sc, align 8
  %14 = call i64 (...) @XX_MallocSmartInit()
  %15 = load i64, i64* @E_OK, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @ENXIO, align 4
  store i32 %18, i32* %2, align 4
  br label %129

19:                                               ; preds = %1
  %20 = load %struct.bman_softc*, %struct.bman_softc** %4, align 8
  %21 = getelementptr inbounds %struct.bman_softc, %struct.bman_softc* %20, i32 0, i32 5
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @SYS_RES_MEMORY, align 4
  %24 = load %struct.bman_softc*, %struct.bman_softc** %4, align 8
  %25 = getelementptr inbounds %struct.bman_softc, %struct.bman_softc* %24, i32 0, i32 5
  %26 = load i32, i32* @BMAN_CCSR_SIZE, align 4
  %27 = load i32, i32* @RF_ACTIVE, align 4
  %28 = call i32* @bus_alloc_resource_anywhere(i32 %22, i32 %23, i64* %25, i32 %26, i32 %27)
  %29 = load %struct.bman_softc*, %struct.bman_softc** %4, align 8
  %30 = getelementptr inbounds %struct.bman_softc, %struct.bman_softc* %29, i32 0, i32 2
  store i32* %28, i32** %30, align 8
  %31 = load %struct.bman_softc*, %struct.bman_softc** %4, align 8
  %32 = getelementptr inbounds %struct.bman_softc, %struct.bman_softc* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %19
  %36 = load i32, i32* @ENXIO, align 4
  store i32 %36, i32* %2, align 4
  br label %129

37:                                               ; preds = %19
  %38 = load %struct.bman_softc*, %struct.bman_softc** %4, align 8
  %39 = getelementptr inbounds %struct.bman_softc, %struct.bman_softc* %38, i32 0, i32 3
  store i64 0, i64* %39, align 8
  %40 = load %struct.bman_softc*, %struct.bman_softc** %4, align 8
  %41 = getelementptr inbounds %struct.bman_softc, %struct.bman_softc* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @SYS_RES_IRQ, align 4
  %44 = load %struct.bman_softc*, %struct.bman_softc** %4, align 8
  %45 = getelementptr inbounds %struct.bman_softc, %struct.bman_softc* %44, i32 0, i32 3
  %46 = load i32, i32* @RF_ACTIVE, align 4
  %47 = load i32, i32* @RF_SHAREABLE, align 4
  %48 = or i32 %46, %47
  %49 = call i32* @bus_alloc_resource_any(i32 %42, i32 %43, i64* %45, i32 %48)
  %50 = load %struct.bman_softc*, %struct.bman_softc** %4, align 8
  %51 = getelementptr inbounds %struct.bman_softc, %struct.bman_softc* %50, i32 0, i32 1
  store i32* %49, i32** %51, align 8
  %52 = load %struct.bman_softc*, %struct.bman_softc** %4, align 8
  %53 = getelementptr inbounds %struct.bman_softc, %struct.bman_softc* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %37
  br label %125

57:                                               ; preds = %37
  %58 = call i32 @memset(%struct.TYPE_7__* %7, i32 0, i32 56)
  %59 = load i32, i32* @NCSW_MASTER_ID, align 4
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 7
  store i32 %59, i32* %60, align 8
  %61 = load %struct.bman_softc*, %struct.bman_softc** %4, align 8
  %62 = getelementptr inbounds %struct.bman_softc, %struct.bman_softc* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @rman_get_bushandle(i32* %63)
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 6
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* @BMAN_MAX_BUFFERS, align 4
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i32 %66, i32* %67, align 8
  %68 = load i32, i32* @bman_exception, align 4
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 5
  store i32 %68, i32* %69, align 8
  %70 = load %struct.bman_softc*, %struct.bman_softc** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 4
  store %struct.bman_softc* %70, %struct.bman_softc** %71, align 8
  %72 = load %struct.bman_softc*, %struct.bman_softc** %4, align 8
  %73 = getelementptr inbounds %struct.bman_softc, %struct.bman_softc* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = ptrtoint i32* %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  store i64 %75, i64* %76, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 3
  store i64 0, i64* %77, align 8
  %78 = load i32, i32* @BM_MAX_NUM_OF_POOLS, align 4
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  store i32 %78, i32* %79, align 8
  %80 = call i32* @BM_Config(%struct.TYPE_7__* %7)
  %81 = load %struct.bman_softc*, %struct.bman_softc** %4, align 8
  %82 = getelementptr inbounds %struct.bman_softc, %struct.bman_softc* %81, i32 0, i32 0
  store i32* %80, i32** %82, align 8
  %83 = load %struct.bman_softc*, %struct.bman_softc** %4, align 8
  %84 = getelementptr inbounds %struct.bman_softc, %struct.bman_softc* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = icmp eq i32* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %57
  br label %125

88:                                               ; preds = %57
  %89 = load %struct.bman_softc*, %struct.bman_softc** %4, align 8
  %90 = getelementptr inbounds %struct.bman_softc, %struct.bman_softc* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* @BMAN_MAX_BUFFERS, align 4
  %93 = sdiv i32 %92, 8
  %94 = sdiv i32 %93, 20
  %95 = call i64 @BM_ConfigFbprThreshold(i32* %91, i32 %94)
  store i64 %95, i64* %6, align 8
  %96 = load i64, i64* %6, align 8
  %97 = load i64, i64* @E_OK, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %88
  br label %125

100:                                              ; preds = %88
  %101 = load %struct.bman_softc*, %struct.bman_softc** %4, align 8
  %102 = getelementptr inbounds %struct.bman_softc, %struct.bman_softc* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = call i64 @BM_Init(i32* %103)
  store i64 %104, i64* %6, align 8
  %105 = load i64, i64* %6, align 8
  %106 = load i64, i64* @E_OK, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %100
  br label %125

109:                                              ; preds = %100
  %110 = load %struct.bman_softc*, %struct.bman_softc** %4, align 8
  %111 = getelementptr inbounds %struct.bman_softc, %struct.bman_softc* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = call i64 @BM_GetRevision(i32* %112, %struct.TYPE_6__* %5)
  store i64 %113, i64* %6, align 8
  %114 = load i64, i64* %6, align 8
  %115 = load i64, i64* @E_OK, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %109
  br label %125

118:                                              ; preds = %109
  %119 = load i32, i32* %3, align 4
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @device_printf(i32 %119, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %121, i32 %123)
  store i32 0, i32* %2, align 4
  br label %129

125:                                              ; preds = %117, %108, %99, %87, %56
  %126 = load i32, i32* %3, align 4
  %127 = call i32 @bman_detach(i32 %126)
  %128 = load i32, i32* @ENXIO, align 4
  store i32 %128, i32* %2, align 4
  br label %129

129:                                              ; preds = %125, %118, %35, %17
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local %struct.bman_softc* @device_get_softc(i32) #1

declare dso_local i64 @XX_MallocSmartInit(...) #1

declare dso_local i32* @bus_alloc_resource_anywhere(i32, i32, i64*, i32, i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local i32* @BM_Config(%struct.TYPE_7__*) #1

declare dso_local i64 @BM_ConfigFbprThreshold(i32*, i32) #1

declare dso_local i64 @BM_Init(i32*) #1

declare dso_local i64 @BM_GetRevision(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @bman_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
