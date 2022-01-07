; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/altera/sdcard/extr_altera_sdcard_io.c_altera_sdcard_process_csd0.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/altera/sdcard/extr_altera_sdcard_io.c_altera_sdcard_process_csd0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altera_sdcard_softc = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@ALTERA_SDCARD_CSD_READ_BL_LEN_BYTE = common dso_local global i64 0, align 8
@ALTERA_SDCARD_CSD_READ_BL_LEN_MASK = common dso_local global i32 0, align 4
@ALTERA_SDCARD_CSD_C_SIZE_BYTE0 = common dso_local global i64 0, align 8
@ALTERA_SDCARD_CSD_C_SIZE_MASK0 = common dso_local global i32 0, align 4
@ALTERA_SDCARD_CSD_C_SIZE_BYTE1 = common dso_local global i64 0, align 8
@ALTERA_SDCARD_CSD_C_SIZE_BYTE2 = common dso_local global i64 0, align 8
@ALTERA_SDCARD_CSD_C_SIZE_MASK2 = common dso_local global i32 0, align 4
@ALTERA_SDCARD_CSD_C_SIZE_RSHIFT0 = common dso_local global i32 0, align 4
@ALTERA_SDCARD_CSD_C_SIZE_LSHIFT1 = common dso_local global i32 0, align 4
@ALTERA_SDCARD_CSD_C_SIZE_LSHIFT2 = common dso_local global i32 0, align 4
@ALTERA_SDCARD_CSD_C_SIZE_MULT_BYTE0 = common dso_local global i64 0, align 8
@ALTERA_SDCARD_CSD_C_SIZE_MULT_MASK0 = common dso_local global i32 0, align 4
@ALTERA_SDCARD_CSD_C_SIZE_MULT_BYTE1 = common dso_local global i64 0, align 8
@ALTERA_SDCARD_CSD_C_SIZE_MULT_MASK1 = common dso_local global i32 0, align 4
@ALTERA_SDCARD_CSD_C_SIZE_MULT_RSHIFT0 = common dso_local global i32 0, align 4
@ALTERA_SDCARD_CSD_C_SIZE_MULT_LSHIFT1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Ignored zero-size card\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.altera_sdcard_softc*)* @altera_sdcard_process_csd0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @altera_sdcard_process_csd0(%struct.altera_sdcard_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.altera_sdcard_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.altera_sdcard_softc* %0, %struct.altera_sdcard_softc** %3, align 8
  %10 = load %struct.altera_sdcard_softc*, %struct.altera_sdcard_softc** %3, align 8
  %11 = call i32 @ALTERA_SDCARD_LOCK_ASSERT(%struct.altera_sdcard_softc* %10)
  %12 = load %struct.altera_sdcard_softc*, %struct.altera_sdcard_softc** %3, align 8
  %13 = getelementptr inbounds %struct.altera_sdcard_softc, %struct.altera_sdcard_softc* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* @ALTERA_SDCARD_CSD_READ_BL_LEN_BYTE, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @ALTERA_SDCARD_CSD_READ_BL_LEN_MASK, align 4
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %6, align 4
  %22 = load %struct.altera_sdcard_softc*, %struct.altera_sdcard_softc** %3, align 8
  %23 = getelementptr inbounds %struct.altera_sdcard_softc, %struct.altera_sdcard_softc* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* @ALTERA_SDCARD_CSD_C_SIZE_BYTE0, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* @ALTERA_SDCARD_CSD_C_SIZE_MASK0, align 4
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %7, align 4
  %32 = load %struct.altera_sdcard_softc*, %struct.altera_sdcard_softc** %3, align 8
  %33 = getelementptr inbounds %struct.altera_sdcard_softc, %struct.altera_sdcard_softc* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* @ALTERA_SDCARD_CSD_C_SIZE_BYTE1, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %8, align 4
  %39 = load %struct.altera_sdcard_softc*, %struct.altera_sdcard_softc** %3, align 8
  %40 = getelementptr inbounds %struct.altera_sdcard_softc, %struct.altera_sdcard_softc* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @ALTERA_SDCARD_CSD_C_SIZE_BYTE2, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* @ALTERA_SDCARD_CSD_C_SIZE_MASK2, align 4
  %47 = load i32, i32* %9, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @ALTERA_SDCARD_CSD_C_SIZE_RSHIFT0, align 4
  %51 = ashr i32 %49, %50
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @ALTERA_SDCARD_CSD_C_SIZE_LSHIFT1, align 4
  %54 = shl i32 %52, %53
  %55 = or i32 %51, %54
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @ALTERA_SDCARD_CSD_C_SIZE_LSHIFT2, align 4
  %58 = shl i32 %56, %57
  %59 = or i32 %55, %58
  store i32 %59, i32* %4, align 4
  %60 = load %struct.altera_sdcard_softc*, %struct.altera_sdcard_softc** %3, align 8
  %61 = getelementptr inbounds %struct.altera_sdcard_softc, %struct.altera_sdcard_softc* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* @ALTERA_SDCARD_CSD_C_SIZE_MULT_BYTE0, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* @ALTERA_SDCARD_CSD_C_SIZE_MULT_MASK0, align 4
  %68 = load i32, i32* %7, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %7, align 4
  %70 = load %struct.altera_sdcard_softc*, %struct.altera_sdcard_softc** %3, align 8
  %71 = getelementptr inbounds %struct.altera_sdcard_softc, %struct.altera_sdcard_softc* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i64, i64* @ALTERA_SDCARD_CSD_C_SIZE_MULT_BYTE1, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* @ALTERA_SDCARD_CSD_C_SIZE_MULT_MASK1, align 4
  %78 = load i32, i32* %8, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @ALTERA_SDCARD_CSD_C_SIZE_MULT_RSHIFT0, align 4
  %82 = ashr i32 %80, %81
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @ALTERA_SDCARD_CSD_C_SIZE_MULT_LSHIFT1, align 4
  %85 = shl i32 %83, %84
  %86 = or i32 %82, %85
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %4, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %1
  %90 = load i32, i32* %5, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %89
  %93 = load i32, i32* %6, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %92
  %96 = load %struct.altera_sdcard_softc*, %struct.altera_sdcard_softc** %3, align 8
  %97 = getelementptr inbounds %struct.altera_sdcard_softc, %struct.altera_sdcard_softc* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @device_printf(i32 %98, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %100 = load i32, i32* @ENXIO, align 4
  store i32 %100, i32* %2, align 4
  br label %113

101:                                              ; preds = %92, %89, %1
  %102 = load i32, i32* %4, align 4
  %103 = add nsw i32 %102, 1
  %104 = load i32, i32* %5, align 4
  %105 = add nsw i32 %104, 2
  %106 = shl i32 1, %105
  %107 = mul nsw i32 %103, %106
  %108 = load i32, i32* %6, align 4
  %109 = shl i32 1, %108
  %110 = mul nsw i32 %107, %109
  %111 = load %struct.altera_sdcard_softc*, %struct.altera_sdcard_softc** %3, align 8
  %112 = getelementptr inbounds %struct.altera_sdcard_softc, %struct.altera_sdcard_softc* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  store i32 0, i32* %2, align 4
  br label %113

113:                                              ; preds = %101, %95
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i32 @ALTERA_SDCARD_LOCK_ASSERT(%struct.altera_sdcard_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
