; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mmcnull/extr_mmcnull.c_mmcnull_intr_sd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mmcnull/extr_mmcnull.c_mmcnull_intr_sd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmcnull_softc = type { %union.ccb*, i32, i32 }
%union.ccb = type { %struct.ccb_mmcio }
%struct.ccb_mmcio = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"mmcnull_intr: MMC command = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Reset device\0A\00", align 1
@R1_APP_CMD = common dso_local global i32 0, align 4
@MMC_OCR_CARD_BUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"WTF?!\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"mmcnull_intr_sd: unknown command\0A\00", align 1
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @mmcnull_intr_sd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmcnull_intr_sd(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mmcnull_softc*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.ccb_mmcio*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.mmcnull_softc*
  store %struct.mmcnull_softc* %7, %struct.mmcnull_softc** %3, align 8
  %8 = load %struct.mmcnull_softc*, %struct.mmcnull_softc** %3, align 8
  %9 = getelementptr inbounds %struct.mmcnull_softc, %struct.mmcnull_softc* %8, i32 0, i32 2
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
  switch i32 %28, label %117 [
    i32 134, label %29
    i32 129, label %34
    i32 135, label %40
    i32 128, label %47
    i32 131, label %47
    i32 137, label %53
    i32 136, label %67
    i32 130, label %88
    i32 132, label %109
    i32 133, label %109
  ]

29:                                               ; preds = %1
  %30 = load %struct.mmcnull_softc*, %struct.mmcnull_softc** %3, align 8
  %31 = getelementptr inbounds %struct.mmcnull_softc, %struct.mmcnull_softc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (i32, i8*, ...) @device_printf(i32 %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %125

34:                                               ; preds = %1
  %35 = load %struct.ccb_mmcio*, %struct.ccb_mmcio** %5, align 8
  %36 = getelementptr inbounds %struct.ccb_mmcio, %struct.ccb_mmcio* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 426, i32* %39, align 4
  br label %125

40:                                               ; preds = %1
  %41 = load i32, i32* @R1_APP_CMD, align 4
  %42 = load %struct.ccb_mmcio*, %struct.ccb_mmcio** %5, align 8
  %43 = getelementptr inbounds %struct.ccb_mmcio, %struct.ccb_mmcio* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  store i32 %41, i32* %46, align 4
  br label %125

47:                                               ; preds = %1, %1
  %48 = load %struct.ccb_mmcio*, %struct.ccb_mmcio** %5, align 8
  %49 = getelementptr inbounds %struct.ccb_mmcio, %struct.ccb_mmcio* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  store i32 65536, i32* %52, align 4
  br label %125

53:                                               ; preds = %1
  %54 = load %struct.ccb_mmcio*, %struct.ccb_mmcio** %5, align 8
  %55 = getelementptr inbounds %struct.ccb_mmcio, %struct.ccb_mmcio* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  store i32 -1056997376, i32* %58, align 4
  %59 = load i32, i32* @MMC_OCR_CARD_BUSY, align 4
  %60 = load %struct.ccb_mmcio*, %struct.ccb_mmcio** %5, align 8
  %61 = getelementptr inbounds %struct.ccb_mmcio, %struct.ccb_mmcio* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %59
  store i32 %66, i32* %64, align 4
  br label %125

67:                                               ; preds = %1
  %68 = load %struct.ccb_mmcio*, %struct.ccb_mmcio** %5, align 8
  %69 = getelementptr inbounds %struct.ccb_mmcio, %struct.ccb_mmcio* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  store i32 458444080, i32* %72, align 4
  %73 = load %struct.ccb_mmcio*, %struct.ccb_mmcio** %5, align 8
  %74 = getelementptr inbounds %struct.ccb_mmcio, %struct.ccb_mmcio* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  store i32 808464432, i32* %77, align 4
  %78 = load %struct.ccb_mmcio*, %struct.ccb_mmcio** %5, align 8
  %79 = getelementptr inbounds %struct.ccb_mmcio, %struct.ccb_mmcio* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 2
  store i32 277096454, i32* %82, align 4
  %83 = load %struct.ccb_mmcio*, %struct.ccb_mmcio** %5, align 8
  %84 = getelementptr inbounds %struct.ccb_mmcio, %struct.ccb_mmcio* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 3
  store i32 1459677440, i32* %87, align 4
  br label %125

88:                                               ; preds = %1
  %89 = load %struct.ccb_mmcio*, %struct.ccb_mmcio** %5, align 8
  %90 = getelementptr inbounds %struct.ccb_mmcio, %struct.ccb_mmcio* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  store i32 1074659378, i32* %93, align 4
  %94 = load %struct.ccb_mmcio*, %struct.ccb_mmcio** %5, align 8
  %95 = getelementptr inbounds %struct.ccb_mmcio, %struct.ccb_mmcio* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  store i32 1532559360, i32* %98, align 4
  %99 = load %struct.ccb_mmcio*, %struct.ccb_mmcio** %5, align 8
  %100 = getelementptr inbounds %struct.ccb_mmcio, %struct.ccb_mmcio* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 2
  store i32 1964998528, i32* %103, align 4
  %104 = load %struct.ccb_mmcio*, %struct.ccb_mmcio** %5, align 8
  %105 = getelementptr inbounds %struct.ccb_mmcio, %struct.ccb_mmcio* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 3
  store i32 171982848, i32* %108, align 4
  br label %125

109:                                              ; preds = %1, %1
  %110 = load %struct.ccb_mmcio*, %struct.ccb_mmcio** %5, align 8
  %111 = getelementptr inbounds %struct.ccb_mmcio, %struct.ccb_mmcio* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 3
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @strcpy(i32 %115, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %125

117:                                              ; preds = %1
  %118 = load %struct.mmcnull_softc*, %struct.mmcnull_softc** %3, align 8
  %119 = getelementptr inbounds %struct.mmcnull_softc, %struct.mmcnull_softc* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i32 (i32, i8*, ...) @device_printf(i32 %120, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %122 = load %struct.ccb_mmcio*, %struct.ccb_mmcio** %5, align 8
  %123 = getelementptr inbounds %struct.ccb_mmcio, %struct.ccb_mmcio* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 2
  store i32 1, i32* %124, align 8
  br label %125

125:                                              ; preds = %117, %109, %88, %67, %53, %47, %40, %34, %29
  %126 = load i32, i32* @CAM_REQ_CMP, align 4
  %127 = load %union.ccb*, %union.ccb** %4, align 8
  %128 = bitcast %union.ccb* %127 to %struct.TYPE_6__*
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  store i32 %126, i32* %129, align 8
  %130 = load %struct.mmcnull_softc*, %struct.mmcnull_softc** %3, align 8
  %131 = getelementptr inbounds %struct.mmcnull_softc, %struct.mmcnull_softc* %130, i32 0, i32 0
  store %union.ccb* null, %union.ccb** %131, align 8
  %132 = load %union.ccb*, %union.ccb** %4, align 8
  %133 = call i32 @xpt_done(%union.ccb* %132)
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
