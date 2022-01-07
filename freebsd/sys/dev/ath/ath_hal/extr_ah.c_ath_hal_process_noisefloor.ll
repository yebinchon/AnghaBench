; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/extr_ah.c_ath_hal_process_noisefloor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/extr_ah.c_ath_hal_process_noisefloor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_5__ = type { i64, i64, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }

@WIRELESS_MODE_11a = common dso_local global i64 0, align 8
@WIRELESS_MODE_11g = common dso_local global i64 0, align 8
@NOISE_FLOOR = common dso_local global i64* null, align 8
@HAL_DEBUG_NFCAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%u raw nf %d adjust %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath_hal_process_noisefloor(%struct.ath_hal* %0) #0 {
  %2 = alloca %struct.ath_hal*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %2, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %5, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %95, %1
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %14 = call %struct.TYPE_6__* @AH_PRIVATE(%struct.ath_hal* %13)
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %12, %16
  br i1 %17, label %18, label %98

18:                                               ; preds = %11
  %19 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %20 = call %struct.TYPE_6__* @AH_PRIVATE(%struct.ath_hal* %19)
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i64 %24
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %3, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sge i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  br label %95

31:                                               ; preds = %18
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %33 = call i64 @IS_CHAN_5GHZ(%struct.TYPE_5__* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i64, i64* @WIRELESS_MODE_11a, align 8
  br label %39

37:                                               ; preds = %31
  %38 = load i64, i64* @WIRELESS_MODE_11g, align 8
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i64 [ %36, %35 ], [ %38, %37 ]
  store i64 %40, i64* %9, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64*, i64** @NOISE_FLOOR, align 8
  %45 = load i64, i64* %9, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %43, %47
  %49 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %51 = call i64 @ath_hal_getNfAdjust(%struct.ath_hal* %49, %struct.TYPE_5__* %50)
  %52 = add nsw i64 %48, %51
  store i64 %52, i64* %10, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %54 = call i64 @IS_CHAN_5GHZ(%struct.TYPE_5__* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %75

56:                                               ; preds = %39
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* %7, align 8
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %60, label %74

60:                                               ; preds = %56
  %61 = load i64, i64* %10, align 8
  store i64 %61, i64* %7, align 8
  %62 = load i64*, i64** @NOISE_FLOOR, align 8
  %63 = load i64, i64* %9, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %71 = call i64 @ath_hal_getNfAdjust(%struct.ath_hal* %69, %struct.TYPE_5__* %70)
  %72 = add nsw i64 %68, %71
  %73 = sub nsw i64 %65, %72
  store i64 %73, i64* %5, align 8
  br label %74

74:                                               ; preds = %60, %56
  br label %94

75:                                               ; preds = %39
  %76 = load i64, i64* %10, align 8
  %77 = load i64, i64* %6, align 8
  %78 = icmp slt i64 %76, %77
  br i1 %78, label %79, label %93

79:                                               ; preds = %75
  %80 = load i64, i64* %10, align 8
  store i64 %80, i64* %6, align 8
  %81 = load i64*, i64** @NOISE_FLOOR, align 8
  %82 = load i64, i64* %9, align 8
  %83 = getelementptr inbounds i64, i64* %81, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %90 = call i64 @ath_hal_getNfAdjust(%struct.ath_hal* %88, %struct.TYPE_5__* %89)
  %91 = add nsw i64 %87, %90
  %92 = sub nsw i64 %84, %91
  store i64 %92, i64* %4, align 8
  br label %93

93:                                               ; preds = %79, %75
  br label %94

94:                                               ; preds = %93, %74
  br label %95

95:                                               ; preds = %94, %30
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %8, align 4
  br label %11

98:                                               ; preds = %11
  store i32 0, i32* %8, align 4
  br label %99

99:                                               ; preds = %147, %98
  %100 = load i32, i32* %8, align 4
  %101 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %102 = call %struct.TYPE_6__* @AH_PRIVATE(%struct.ath_hal* %101)
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp slt i32 %100, %104
  br i1 %105, label %106, label %150

106:                                              ; preds = %99
  %107 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %108 = call %struct.TYPE_6__* @AH_PRIVATE(%struct.ath_hal* %107)
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i64 %112
  store %struct.TYPE_5__* %113, %struct.TYPE_5__** %3, align 8
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp sge i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %106
  br label %147

119:                                              ; preds = %106
  %120 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %122 = call i64 @ath_hal_getNfAdjust(%struct.ath_hal* %120, %struct.TYPE_5__* %121)
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %124 = call i64 @IS_CHAN_5GHZ(%struct.TYPE_5__* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %119
  %127 = load i64, i64* %5, align 8
  br label %130

128:                                              ; preds = %119
  %129 = load i64, i64* %4, align 8
  br label %130

130:                                              ; preds = %128, %126
  %131 = phi i64 [ %127, %126 ], [ %129, %128 ]
  %132 = add nsw i64 %122, %131
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 1
  store i64 %132, i64* %134, align 8
  %135 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %136 = load i32, i32* @HAL_DEBUG_NFCAL, align 4
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = call i32 @HALDEBUG(%struct.ath_hal* %135, i32 %136, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %139, i64 %142, i64 %145)
  br label %147

147:                                              ; preds = %130, %118
  %148 = load i32, i32* %8, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %8, align 4
  br label %99

150:                                              ; preds = %99
  ret void
}

declare dso_local %struct.TYPE_6__* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i64 @IS_CHAN_5GHZ(%struct.TYPE_5__*) #1

declare dso_local i64 @ath_hal_getNfAdjust(%struct.ath_hal*, %struct.TYPE_5__*) #1

declare dso_local i32 @HALDEBUG(%struct.ath_hal*, i32, i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
