; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_reset.c_ar5212CorrectGainDelta.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_reset.c_ar5212CorrectGainDelta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i64 }
%struct.ath_hal_5212 = type { i64*, i32* }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }

@AR5212_MAGIC = common dso_local global i64 0, align 8
@PWR_TABLE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hal*, i32)* @ar5212CorrectGainDelta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar5212CorrectGainDelta(%struct.ath_hal* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_hal_5212*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca [1 x i64], align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %14 = call %struct.ath_hal_5212* @AH5212(%struct.ath_hal* %13)
  store %struct.ath_hal_5212* %14, %struct.ath_hal_5212** %5, align 8
  %15 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %16 = call %struct.TYPE_4__* @AH_PRIVATE(%struct.ath_hal* %15)
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %6, align 8
  %19 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %20 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @AR5212_MAGIC, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @HALASSERT(i32 %24)
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %12, align 8
  %29 = getelementptr inbounds [1 x i64], [1 x i64]* %7, i64 0, i64 0
  %30 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %5, align 8
  %31 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = call i32 @OS_MEMCPY(i64* %29, i64* %32, i32 8)
  store i32 8, i32* %8, align 4
  br label %34

34:                                               ; preds = %167, %2
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 15
  br i1 %36, label %37, label %170

37:                                               ; preds = %34
  %38 = load i64, i64* %12, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [1 x i64], [1 x i64]* %7, i64 0, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = sub i64 %42, %38
  store i64 %43, i64* %41, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %44

44:                                               ; preds = %111, %60, %37
  %45 = load i32, i32* %9, align 4
  %46 = icmp slt i32 %45, 16
  br i1 %46, label %47, label %112

47:                                               ; preds = %44
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [1 x i64], [1 x i64]* %7, i64 0, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = icmp ult i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [1 x i64], [1 x i64]* %7, i64 0, i64 %55
  store i64 0, i64* %56, align 8
  br label %57

57:                                               ; preds = %53, %47
  %58 = load i32, i32* %9, align 4
  %59 = icmp eq i32 %58, 8
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i32 15, i32* %9, align 4
  br label %44

61:                                               ; preds = %57
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [1 x i64], [1 x i64]* %7, i64 0, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %5, align 8
  %67 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %65, %72
  br i1 %73, label %74, label %108

74:                                               ; preds = %61
  %75 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %5, align 8
  %76 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %75, i32 0, i32 0
  %77 = load i64*, i64** %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %74
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [1 x i64], [1 x i64]* %7, i64 0, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %86, align 8
  br label %105

89:                                               ; preds = %74
  %90 = load i32, i32* %10, align 4
  %91 = icmp sgt i32 %90, 50
  br i1 %91, label %92, label %98

92:                                               ; preds = %89
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [1 x i64], [1 x i64]* %7, i64 0, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %95, align 8
  br label %104

98:                                               ; preds = %89
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [1 x i64], [1 x i64]* %7, i64 0, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = add i64 %102, -1
  store i64 %103, i64* %101, align 8
  br label %104

104:                                              ; preds = %98, %92
  br label %105

105:                                              ; preds = %104, %83
  store i32 0, i32* %9, align 4
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %10, align 4
  br label %111

108:                                              ; preds = %61
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %9, align 4
  br label %111

111:                                              ; preds = %108, %105
  br label %44

112:                                              ; preds = %44
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [1 x i64], [1 x i64]* %7, i64 0, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @PWR_TABLE_SIZE, align 8
  %118 = icmp uge i64 %116, %117
  br i1 %118, label %119, label %125

119:                                              ; preds = %112
  %120 = load i64, i64* @PWR_TABLE_SIZE, align 8
  %121 = sub i64 %120, 1
  %122 = load i32, i32* %8, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [1 x i64], [1 x i64]* %7, i64 0, i64 %123
  store i64 %121, i64* %124, align 8
  br label %125

125:                                              ; preds = %119, %112
  %126 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %5, align 8
  %127 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %126, i32 0, i32 0
  %128 = load i64*, i64** %127, align 8
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i64, i64* %128, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = load i32, i32* %4, align 4
  %134 = sext i32 %133 to i64
  %135 = sub i64 %132, %134
  store i64 %135, i64* %11, align 8
  %136 = load i64, i64* %11, align 8
  %137 = icmp ult i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %125
  store i64 0, i64* %11, align 8
  br label %139

139:                                              ; preds = %138, %125
  %140 = load i64, i64* %11, align 8
  %141 = load i64, i64* @PWR_TABLE_SIZE, align 8
  %142 = icmp ult i64 %140, %141
  %143 = zext i1 %142 to i32
  %144 = call i32 @HALASSERT(i32 %143)
  %145 = load i32, i32* %8, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [1 x i64], [1 x i64]* %7, i64 0, i64 %146
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @PWR_TABLE_SIZE, align 8
  %150 = icmp ult i64 %148, %149
  %151 = zext i1 %150 to i32
  %152 = call i32 @HALASSERT(i32 %151)
  %153 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %5, align 8
  %154 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = load i64, i64* %11, align 8
  %157 = getelementptr inbounds i32, i32* %155, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %5, align 8
  %160 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %159, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %8, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [1 x i64], [1 x i64]* %7, i64 0, i64 %163
  %165 = load i64, i64* %164, align 8
  %166 = getelementptr inbounds i32, i32* %161, i64 %165
  store i32 %158, i32* %166, align 4
  br label %167

167:                                              ; preds = %139
  %168 = load i32, i32* %8, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %8, align 4
  br label %34

170:                                              ; preds = %34
  store i32 8, i32* %8, align 4
  br label %171

171:                                              ; preds = %185, %170
  %172 = load i32, i32* %8, align 4
  %173 = icmp slt i32 %172, 15
  br i1 %173, label %174, label %188

174:                                              ; preds = %171
  %175 = load i32, i32* %8, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [1 x i64], [1 x i64]* %7, i64 0, i64 %176
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %5, align 8
  %180 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %179, i32 0, i32 0
  %181 = load i64*, i64** %180, align 8
  %182 = load i32, i32* %8, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i64, i64* %181, i64 %183
  store i64 %178, i64* %184, align 8
  br label %185

185:                                              ; preds = %174
  %186 = load i32, i32* %8, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %8, align 4
  br label %171

188:                                              ; preds = %171
  ret void
}

declare dso_local %struct.ath_hal_5212* @AH5212(%struct.ath_hal*) #1

declare dso_local %struct.TYPE_4__* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i32 @HALASSERT(i32) #1

declare dso_local i32 @OS_MEMCPY(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
