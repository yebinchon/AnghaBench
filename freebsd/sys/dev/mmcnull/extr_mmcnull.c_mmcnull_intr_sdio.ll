; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mmcnull/extr_mmcnull.c_mmcnull_intr_sdio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mmcnull/extr_mmcnull.c_mmcnull_intr_sdio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmcnull_softc = type { %union.ccb*, i32, i32, i32 }
%union.ccb = type { %struct.ccb_mmcio }
%struct.ccb_mmcio = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"mmcnull_intr: MMC command = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Reset device\0A\00", align 1
@R1_APP_CMD = common dso_local global i32 0, align 4
@R4_IO_MEM_PRESENT = common dso_local global i32 0, align 4
@MMC_OCR_CARD_BUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"WTF?!\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Scheduling interrupt generation...\0A\00", align 1
@hz = common dso_local global i32 0, align 4
@mmcnull_intr_sdio_newintr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"mmcnull_intr_sdio: unknown command\0A\00", align 1
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @mmcnull_intr_sdio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmcnull_intr_sdio(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mmcnull_softc*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.ccb_mmcio*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.mmcnull_softc*
  store %struct.mmcnull_softc* %7, %struct.mmcnull_softc** %3, align 8
  %8 = load %struct.mmcnull_softc*, %struct.mmcnull_softc** %3, align 8
  %9 = getelementptr inbounds %struct.mmcnull_softc, %struct.mmcnull_softc* %8, i32 0, i32 3
  %10 = load i32, i32* @MA_OWNED, align 4
  %11 = call i32 @mtx_assert(i32* %9, i32 %10)
  %12 = load %struct.mmcnull_softc*, %struct.mmcnull_softc** %3, align 8
  %13 = getelementptr inbounds %struct.mmcnull_softc, %struct.mmcnull_softc* %12, i32 0, i32 0
  %14 = load %union.ccb*, %union.ccb** %13, align 8
  store %union.ccb* %14, %union.ccb** %4, align 8
  %15 = load %union.ccb*, %union.ccb** %4, align 8
  %16 = bitcast %union.ccb* %15 to %struct.ccb_mmcio*
  store %struct.ccb_mmcio* %16, %struct.ccb_mmcio** %5, align 8
  %17 = load %struct.mmcnull_softc*, %struct.mmcnull_softc** %3, align 8
  %18 = getelementptr inbounds %struct.mmcnull_softc, %struct.mmcnull_softc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.ccb_mmcio*, %struct.ccb_mmcio** %5, align 8
  %21 = getelementptr inbounds %struct.ccb_mmcio, %struct.ccb_mmcio* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i32, i8*, ...) @device_printf(i32 %19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.ccb_mmcio*, %struct.ccb_mmcio** %5, align 8
  %26 = getelementptr inbounds %struct.ccb_mmcio, %struct.ccb_mmcio* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %123 [
    i32 134, label %29
    i32 129, label %34
    i32 135, label %40
    i32 137, label %47
    i32 128, label %62
    i32 131, label %62
    i32 138, label %68
    i32 136, label %82
    i32 132, label %103
    i32 133, label %103
    i32 130, label %111
  ]

29:                                               ; preds = %1
  %30 = load %struct.mmcnull_softc*, %struct.mmcnull_softc** %3, align 8
  %31 = getelementptr inbounds %struct.mmcnull_softc, %struct.mmcnull_softc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (i32, i8*, ...) @device_printf(i32 %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %128

34:                                               ; preds = %1
  %35 = load %struct.ccb_mmcio*, %struct.ccb_mmcio** %5, align 8
  %36 = getelementptr inbounds %struct.ccb_mmcio, %struct.ccb_mmcio* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 426, i32* %39, align 4
  br label %128

40:                                               ; preds = %1
  %41 = load i32, i32* @R1_APP_CMD, align 4
  %42 = load %struct.ccb_mmcio*, %struct.ccb_mmcio** %5, align 8
  %43 = getelementptr inbounds %struct.ccb_mmcio, %struct.ccb_mmcio* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  store i32 %41, i32* %46, align 4
  br label %128

47:                                               ; preds = %1
  %48 = load %struct.ccb_mmcio*, %struct.ccb_mmcio** %5, align 8
  %49 = getelementptr inbounds %struct.ccb_mmcio, %struct.ccb_mmcio* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  store i32 305419896, i32* %52, align 4
  %53 = load i32, i32* @R4_IO_MEM_PRESENT, align 4
  %54 = xor i32 %53, -1
  %55 = load %struct.ccb_mmcio*, %struct.ccb_mmcio** %5, align 8
  %56 = getelementptr inbounds %struct.ccb_mmcio, %struct.ccb_mmcio* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %54
  store i32 %61, i32* %59, align 4
  br label %128

62:                                               ; preds = %1, %1
  %63 = load %struct.ccb_mmcio*, %struct.ccb_mmcio** %5, align 8
  %64 = getelementptr inbounds %struct.ccb_mmcio, %struct.ccb_mmcio* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  store i32 65536, i32* %67, align 4
  br label %128

68:                                               ; preds = %1
  %69 = load %struct.ccb_mmcio*, %struct.ccb_mmcio** %5, align 8
  %70 = getelementptr inbounds %struct.ccb_mmcio, %struct.ccb_mmcio* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  store i32 291, i32* %73, align 4
  %74 = load i32, i32* @MMC_OCR_CARD_BUSY, align 4
  %75 = load %struct.ccb_mmcio*, %struct.ccb_mmcio** %5, align 8
  %76 = getelementptr inbounds %struct.ccb_mmcio, %struct.ccb_mmcio* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %74
  store i32 %81, i32* %79, align 4
  br label %128

82:                                               ; preds = %1
  %83 = load %struct.ccb_mmcio*, %struct.ccb_mmcio** %5, align 8
  %84 = getelementptr inbounds %struct.ccb_mmcio, %struct.ccb_mmcio* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  store i32 4660, i32* %87, align 4
  %88 = load %struct.ccb_mmcio*, %struct.ccb_mmcio** %5, align 8
  %89 = getelementptr inbounds %struct.ccb_mmcio, %struct.ccb_mmcio* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  store i32 22136, i32* %92, align 4
  %93 = load %struct.ccb_mmcio*, %struct.ccb_mmcio** %5, align 8
  %94 = getelementptr inbounds %struct.ccb_mmcio, %struct.ccb_mmcio* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 2
  store i32 39612, i32* %97, align 4
  %98 = load %struct.ccb_mmcio*, %struct.ccb_mmcio** %5, align 8
  %99 = getelementptr inbounds %struct.ccb_mmcio, %struct.ccb_mmcio* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 3
  store i32 57072, i32* %102, align 4
  br label %128

103:                                              ; preds = %1, %1
  %104 = load %struct.ccb_mmcio*, %struct.ccb_mmcio** %5, align 8
  %105 = getelementptr inbounds %struct.ccb_mmcio, %struct.ccb_mmcio* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 2
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @strcpy(i32 %109, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %128

111:                                              ; preds = %1
  %112 = load %struct.mmcnull_softc*, %struct.mmcnull_softc** %3, align 8
  %113 = getelementptr inbounds %struct.mmcnull_softc, %struct.mmcnull_softc* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i32 (i32, i8*, ...) @device_printf(i32 %114, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %116 = load %struct.mmcnull_softc*, %struct.mmcnull_softc** %3, align 8
  %117 = getelementptr inbounds %struct.mmcnull_softc, %struct.mmcnull_softc* %116, i32 0, i32 2
  %118 = load i32, i32* @hz, align 4
  %119 = sdiv i32 %118, 10
  %120 = load i32, i32* @mmcnull_intr_sdio_newintr, align 4
  %121 = load %struct.mmcnull_softc*, %struct.mmcnull_softc** %3, align 8
  %122 = call i32 @callout_reset(i32* %117, i32 %119, i32 %120, %struct.mmcnull_softc* %121)
  br label %128

123:                                              ; preds = %1
  %124 = load %struct.mmcnull_softc*, %struct.mmcnull_softc** %3, align 8
  %125 = getelementptr inbounds %struct.mmcnull_softc, %struct.mmcnull_softc* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = call i32 (i32, i8*, ...) @device_printf(i32 %126, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %128

128:                                              ; preds = %123, %111, %103, %82, %68, %62, %47, %40, %34, %29
  %129 = load i32, i32* @CAM_REQ_CMP, align 4
  %130 = load %union.ccb*, %union.ccb** %4, align 8
  %131 = bitcast %union.ccb* %130 to %struct.TYPE_6__*
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  store i32 %129, i32* %132, align 8
  %133 = load %struct.mmcnull_softc*, %struct.mmcnull_softc** %3, align 8
  %134 = getelementptr inbounds %struct.mmcnull_softc, %struct.mmcnull_softc* %133, i32 0, i32 0
  store %union.ccb* null, %union.ccb** %134, align 8
  %135 = load %union.ccb*, %union.ccb** %4, align 8
  %136 = call i32 @xpt_done(%union.ccb* %135)
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.mmcnull_softc*) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
