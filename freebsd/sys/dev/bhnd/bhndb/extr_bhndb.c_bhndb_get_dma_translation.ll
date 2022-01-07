; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb.c_bhndb_get_dma_translation.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb.c_bhndb_get_dma_translation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_dma_translation = type { i32, i32, i32, i32 }
%struct.bhndb_softc = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.bhndb_hwcfg* }
%struct.TYPE_5__ = type { i64, i32** }
%struct.bhndb_hwcfg = type { %struct.bhnd_dma_translation* }
%struct.TYPE_4__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@BHND_DMA_ADDR_32BIT = common dso_local global i64 0, align 8
@BHND_CAP_BP64 = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64, i32, i32**, %struct.bhnd_dma_translation*)* @bhndb_get_dma_translation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhndb_get_dma_translation(i32 %0, i32 %1, i64 %2, i32 %3, i32** %4, %struct.bhnd_dma_translation* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32**, align 8
  %13 = alloca %struct.bhnd_dma_translation*, align 8
  %14 = alloca %struct.bhndb_softc*, align 8
  %15 = alloca %struct.bhndb_hwcfg*, align 8
  %16 = alloca %struct.bhnd_dma_translation*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca %struct.bhnd_dma_translation*, align 8
  %22 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32** %4, i32*** %12, align 8
  store %struct.bhnd_dma_translation* %5, %struct.bhnd_dma_translation** %13, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call %struct.bhndb_softc* @device_get_softc(i32 %23)
  store %struct.bhndb_softc* %24, %struct.bhndb_softc** %14, align 8
  %25 = load %struct.bhndb_softc*, %struct.bhndb_softc** %14, align 8
  %26 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load %struct.bhndb_hwcfg*, %struct.bhndb_hwcfg** %28, align 8
  store %struct.bhndb_hwcfg* %29, %struct.bhndb_hwcfg** %15, align 8
  %30 = load %struct.bhndb_softc*, %struct.bhndb_softc** %14, align 8
  %31 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i32**, i32*** %35, align 8
  %37 = icmp eq i32** %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %6
  %39 = load i32, i32* @ENODEV, align 4
  store i32 %39, i32* %7, align 4
  br label %153

40:                                               ; preds = %6
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* @BHND_DMA_ADDR_32BIT, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %40
  %45 = load %struct.bhndb_softc*, %struct.bhndb_softc** %14, align 8
  %46 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @BHND_CAP_BP64, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %44
  %53 = load i64, i64* @BHND_DMA_ADDR_32BIT, align 8
  store i64 %53, i64* %10, align 8
  br label %54

54:                                               ; preds = %52, %44
  br label %55

55:                                               ; preds = %54, %40
  %56 = load i64, i64* %10, align 8
  %57 = call i32 @BHND_DMA_ADDR_BITMASK(i64 %56)
  store i32 %57, i32* %18, align 4
  store %struct.bhnd_dma_translation* null, %struct.bhnd_dma_translation** %16, align 8
  store i32 0, i32* %19, align 4
  store i32* null, i32** %17, align 8
  store i64 0, i64* %20, align 8
  br label %58

58:                                               ; preds = %127, %55
  %59 = load i64, i64* %20, align 8
  %60 = load %struct.bhndb_softc*, %struct.bhndb_softc** %14, align 8
  %61 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ult i64 %59, %66
  br i1 %67, label %68, label %130

68:                                               ; preds = %58
  %69 = load %struct.bhndb_hwcfg*, %struct.bhndb_hwcfg** %15, align 8
  %70 = getelementptr inbounds %struct.bhndb_hwcfg, %struct.bhndb_hwcfg* %69, i32 0, i32 0
  %71 = load %struct.bhnd_dma_translation*, %struct.bhnd_dma_translation** %70, align 8
  %72 = load i64, i64* %20, align 8
  %73 = getelementptr inbounds %struct.bhnd_dma_translation, %struct.bhnd_dma_translation* %71, i64 %72
  store %struct.bhnd_dma_translation* %73, %struct.bhnd_dma_translation** %21, align 8
  %74 = load %struct.bhnd_dma_translation*, %struct.bhnd_dma_translation** %21, align 8
  %75 = getelementptr inbounds %struct.bhnd_dma_translation, %struct.bhnd_dma_translation* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %18, align 4
  %78 = and i32 %76, %77
  %79 = load %struct.bhnd_dma_translation*, %struct.bhnd_dma_translation** %21, align 8
  %80 = getelementptr inbounds %struct.bhnd_dma_translation, %struct.bhnd_dma_translation* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %78, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %68
  br label %127

84:                                               ; preds = %68
  %85 = load %struct.bhnd_dma_translation*, %struct.bhnd_dma_translation** %21, align 8
  %86 = getelementptr inbounds %struct.bhnd_dma_translation, %struct.bhnd_dma_translation* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %11, align 4
  %89 = and i32 %87, %88
  %90 = load i32, i32* %11, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  br label %127

93:                                               ; preds = %84
  %94 = load %struct.bhnd_dma_translation*, %struct.bhnd_dma_translation** %21, align 8
  %95 = getelementptr inbounds %struct.bhnd_dma_translation, %struct.bhnd_dma_translation* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.bhnd_dma_translation*, %struct.bhnd_dma_translation** %21, align 8
  %98 = getelementptr inbounds %struct.bhnd_dma_translation, %struct.bhnd_dma_translation* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %96, %99
  %101 = load i32, i32* %18, align 4
  %102 = and i32 %100, %101
  store i32 %102, i32* %22, align 4
  %103 = load i32, i32* %22, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %93
  br label %127

106:                                              ; preds = %93
  %107 = load %struct.bhnd_dma_translation*, %struct.bhnd_dma_translation** %16, align 8
  %108 = icmp eq %struct.bhnd_dma_translation* %107, null
  br i1 %108, label %113, label %109

109:                                              ; preds = %106
  %110 = load i32, i32* %22, align 4
  %111 = load i32, i32* %19, align 4
  %112 = icmp sgt i32 %110, %111
  br i1 %112, label %113, label %126

113:                                              ; preds = %109, %106
  %114 = load %struct.bhnd_dma_translation*, %struct.bhnd_dma_translation** %21, align 8
  store %struct.bhnd_dma_translation* %114, %struct.bhnd_dma_translation** %16, align 8
  %115 = load i32, i32* %22, align 4
  store i32 %115, i32* %19, align 4
  %116 = load %struct.bhndb_softc*, %struct.bhndb_softc** %14, align 8
  %117 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %116, i32 0, i32 0
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  %122 = load i32**, i32*** %121, align 8
  %123 = load i64, i64* %20, align 8
  %124 = getelementptr inbounds i32*, i32** %122, i64 %123
  %125 = load i32*, i32** %124, align 8
  store i32* %125, i32** %17, align 8
  br label %126

126:                                              ; preds = %113, %109
  br label %127

127:                                              ; preds = %126, %105, %92, %83
  %128 = load i64, i64* %20, align 8
  %129 = add i64 %128, 1
  store i64 %129, i64* %20, align 8
  br label %58

130:                                              ; preds = %58
  %131 = load %struct.bhnd_dma_translation*, %struct.bhnd_dma_translation** %16, align 8
  %132 = icmp eq %struct.bhnd_dma_translation* %131, null
  br i1 %132, label %136, label %133

133:                                              ; preds = %130
  %134 = load i32, i32* %19, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %133, %130
  %137 = load i32, i32* @ENOENT, align 4
  store i32 %137, i32* %7, align 4
  br label %153

138:                                              ; preds = %133
  %139 = load i32**, i32*** %12, align 8
  %140 = icmp ne i32** %139, null
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = load i32*, i32** %17, align 8
  %143 = load i32**, i32*** %12, align 8
  store i32* %142, i32** %143, align 8
  br label %144

144:                                              ; preds = %141, %138
  %145 = load %struct.bhnd_dma_translation*, %struct.bhnd_dma_translation** %13, align 8
  %146 = icmp ne %struct.bhnd_dma_translation* %145, null
  br i1 %146, label %147, label %152

147:                                              ; preds = %144
  %148 = load %struct.bhnd_dma_translation*, %struct.bhnd_dma_translation** %13, align 8
  %149 = load %struct.bhnd_dma_translation*, %struct.bhnd_dma_translation** %16, align 8
  %150 = bitcast %struct.bhnd_dma_translation* %148 to i8*
  %151 = bitcast %struct.bhnd_dma_translation* %149 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %150, i8* align 4 %151, i64 16, i1 false)
  br label %152

152:                                              ; preds = %147, %144
  store i32 0, i32* %7, align 4
  br label %153

153:                                              ; preds = %152, %136, %38
  %154 = load i32, i32* %7, align 4
  ret i32 %154
}

declare dso_local %struct.bhndb_softc* @device_get_softc(i32) #1

declare dso_local i32 @BHND_DMA_ADDR_BITMASK(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
