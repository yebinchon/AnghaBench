; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_wait_for_outstanding.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_wait_for_outstanding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrsas_softc = type { i64, i32, i32, i64 }

@MRSAS_RESET_WAIT_TIME = common dso_local global i32 0, align 4
@MRSAS_OCR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Driver remove or shutdown called.\0A\00", align 1
@mrsas_reg_set = common dso_local global i32 0, align 4
@outbound_scratch_pad = common dso_local global i32 0, align 4
@MFI_STATE_MASK = common dso_local global i32 0, align 4
@MFI_STATE_FAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Found FW in FAULT state, will reset adapter.\0A\00", align 1
@MFI_DCMD_TIMEOUT_OCR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [47 x i8] c"DCMD IO TIMEOUT detected, will reset adapter.\0A\00", align 1
@MRSAS_RESET_NOTICE_INTERVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"[%2d]waiting for %d commands to complete\0A\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c" pending commands remain after waiting, will reset adapter.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mrsas_wait_for_outstanding(%struct.mrsas_softc* %0, i64 %1) #0 {
  %3 = alloca %struct.mrsas_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mrsas_softc* %0, %struct.mrsas_softc** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %127, %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @MRSAS_RESET_WAIT_TIME, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %130

15:                                               ; preds = %11
  %16 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %17 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %22 = load i32, i32* @MRSAS_OCR, align 4
  %23 = call i32 (%struct.mrsas_softc*, i32, i8*, ...) @mrsas_dprint(%struct.mrsas_softc* %21, i32 %22, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %140

24:                                               ; preds = %15
  %25 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %26 = load i32, i32* @mrsas_reg_set, align 4
  %27 = load i32, i32* @outbound_scratch_pad, align 4
  %28 = call i32 @offsetof(i32 %26, i32 %27)
  %29 = call i32 @mrsas_read_reg_with_retries(%struct.mrsas_softc* %25, i32 %28)
  %30 = load i32, i32* @MFI_STATE_MASK, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @MFI_STATE_FAULT, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %69

35:                                               ; preds = %24
  %36 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %37 = load i32, i32* @MRSAS_OCR, align 4
  %38 = call i32 (%struct.mrsas_softc*, i32, i8*, ...) @mrsas_dprint(%struct.mrsas_softc* %36, i32 %37, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %40 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %35
  %44 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %45 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  br label %48

47:                                               ; preds = %35
  br label %48

48:                                               ; preds = %47, %43
  %49 = phi i64 [ %46, %43 ], [ 1, %47 ]
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %9, align 4
  %51 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %52 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %51, i32 0, i32 2
  %53 = call i32 @mtx_unlock(i32* %52)
  store i32 0, i32* %10, align 4
  br label %54

54:                                               ; preds = %62, %48
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %54
  %59 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @mrsas_complete_cmd(%struct.mrsas_softc* %59, i32 %60)
  br label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %10, align 4
  br label %54

65:                                               ; preds = %54
  %66 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %67 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %66, i32 0, i32 2
  %68 = call i32 @mtx_lock(i32* %67)
  store i32 1, i32* %7, align 4
  br label %140

69:                                               ; preds = %24
  %70 = load i64, i64* %4, align 8
  %71 = load i64, i64* @MFI_DCMD_TIMEOUT_OCR, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %75 = load i32, i32* @MRSAS_OCR, align 4
  %76 = call i32 (%struct.mrsas_softc*, i32, i8*, ...) @mrsas_dprint(%struct.mrsas_softc* %74, i32 %75, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %140

77:                                               ; preds = %69
  %78 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %79 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %78, i32 0, i32 1
  %80 = call i32 @mrsas_atomic_read(i32* %79)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %77
  br label %140

84:                                               ; preds = %77
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @MRSAS_RESET_NOTICE_INTERVAL, align 4
  %87 = srem i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %125, label %89

89:                                               ; preds = %84
  %90 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %91 = load i32, i32* @MRSAS_OCR, align 4
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* %6, align 4
  %94 = call i32 (%struct.mrsas_softc*, i32, i8*, ...) @mrsas_dprint(%struct.mrsas_softc* %90, i32 %91, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %92, i32 %93)
  %95 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %96 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp sgt i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %89
  %100 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %101 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  br label %104

103:                                              ; preds = %89
  br label %104

104:                                              ; preds = %103, %99
  %105 = phi i64 [ %102, %99 ], [ 1, %103 ]
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %9, align 4
  %107 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %108 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %107, i32 0, i32 2
  %109 = call i32 @mtx_unlock(i32* %108)
  store i32 0, i32* %10, align 4
  br label %110

110:                                              ; preds = %118, %104
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %9, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %110
  %115 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %116 = load i32, i32* %10, align 4
  %117 = call i32 @mrsas_complete_cmd(%struct.mrsas_softc* %115, i32 %116)
  br label %118

118:                                              ; preds = %114
  %119 = load i32, i32* %10, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %10, align 4
  br label %110

121:                                              ; preds = %110
  %122 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %123 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %122, i32 0, i32 2
  %124 = call i32 @mtx_lock(i32* %123)
  br label %125

125:                                              ; preds = %121, %84
  %126 = call i32 @DELAY(i32 1000000)
  br label %127

127:                                              ; preds = %125
  %128 = load i32, i32* %5, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %5, align 4
  br label %11

130:                                              ; preds = %11
  %131 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %132 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %131, i32 0, i32 1
  %133 = call i32 @mrsas_atomic_read(i32* %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %130
  %136 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %137 = load i32, i32* @MRSAS_OCR, align 4
  %138 = call i32 (%struct.mrsas_softc*, i32, i8*, ...) @mrsas_dprint(%struct.mrsas_softc* %136, i32 %137, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %139

139:                                              ; preds = %135, %130
  br label %140

140:                                              ; preds = %139, %83, %73, %65, %20
  %141 = load i32, i32* %7, align 4
  ret i32 %141
}

declare dso_local i32 @mrsas_dprint(%struct.mrsas_softc*, i32, i8*, ...) #1

declare dso_local i32 @mrsas_read_reg_with_retries(%struct.mrsas_softc*, i32) #1

declare dso_local i32 @offsetof(i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @mrsas_complete_cmd(%struct.mrsas_softc*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mrsas_atomic_read(i32*) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
