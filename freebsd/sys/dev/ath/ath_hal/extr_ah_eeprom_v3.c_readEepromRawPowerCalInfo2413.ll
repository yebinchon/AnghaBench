; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/extr_ah_eeprom_v3.c_readEepromRawPowerCalInfo2413.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/extr_ah_eeprom_v3.c_readEepromRawPowerCalInfo2413.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.ath_hal = type { i32 }
%struct.TYPE_18__ = type { i64, i32, i32, i32*, %struct.TYPE_17__*, i64, i64, i64 }
%struct.TYPE_17__ = type { i32 }

@readEepromRawPowerCalInfo2413.wordsForPdgains = internal constant [4 x i32] [i32 4, i32 6, i32 9, i32 12], align 16
@AH_NULL = common dso_local global %struct.TYPE_19__* null, align 8
@AH_FALSE = common dso_local global i32 0, align 4
@AR_EEPROM_VER5_0 = common dso_local global i64 0, align 8
@headerInfo11A = common dso_local global i64 0, align 8
@NUM_11A_EEPROM_CHANNELS_2413 = common dso_local global i32 0, align 4
@headerInfo11B = common dso_local global i64 0, align 8
@NUM_2_4_EEPROM_CHANNELS_2413 = common dso_local global i32 0, align 4
@headerInfo11G = common dso_local global i64 0, align 8
@AH_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hal*, %struct.TYPE_18__*)* @readEepromRawPowerCalInfo2413 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readEepromRawPowerCalInfo2413(%struct.ath_hal* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %4, align 8
  %10 = load %struct.TYPE_19__*, %struct.TYPE_19__** @AH_NULL, align 8
  store %struct.TYPE_19__* %10, %struct.TYPE_19__** %5, align 8
  %11 = load i32, i32* @AH_FALSE, align 4
  store i32 %11, i32* %9, align 4
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @AR_EEPROM_VER5_0, align 8
  %16 = icmp sge i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @HALASSERT(i32 %17)
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 2
  %23 = zext i1 %22 to i32
  %24 = call i32 @HALASSERT(i32 %23)
  %25 = call %struct.TYPE_19__* @ath_hal_malloc(i32 16)
  store %struct.TYPE_19__* %25, %struct.TYPE_19__** %5, align 8
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** @AH_NULL, align 8
  %28 = icmp eq %struct.TYPE_19__* %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  br label %218

30:                                               ; preds = %2
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %8, align 4
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 7
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %100

38:                                               ; preds = %30
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %40 = call i32 @OS_MEMZERO(%struct.TYPE_19__* %39, i32 16)
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* @headerInfo11A, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @NUM_11A_EEPROM_CHANNELS_2413, align 4
  %54 = load i64, i64* @headerInfo11A, align 8
  %55 = call i32 @ar2413ReadCalDataset(%struct.ath_hal* %49, %struct.TYPE_18__* %50, %struct.TYPE_19__* %51, i32 %52, i32 %53, i64 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %38
  br label %218

58:                                               ; preds = %38
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 4
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %60, align 8
  %62 = load i64, i64* @headerInfo11A, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i64 %62
  store %struct.TYPE_17__* %63, %struct.TYPE_17__** %6, align 8
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* @headerInfo11A, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %74 = call i32 @ar2413SetupRawDataset(%struct.TYPE_17__* %72, %struct.TYPE_19__* %73)
  %75 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %78 = call i32 @ar2413EepromToRawDataset(%struct.ath_hal* %75, %struct.TYPE_19__* %76, %struct.TYPE_17__* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %58
  br label %218

81:                                               ; preds = %58
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 2
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i64 0
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = sub nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [4 x i32], [4 x i32]* @readEepromRawPowerCalInfo2413.wordsForPdgains, i64 0, i64 %89
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %7, align 4
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = mul nsw i32 %94, %95
  %97 = add nsw i32 %96, 5
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %8, align 4
  br label %100

100:                                              ; preds = %81, %30
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 6
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %167

105:                                              ; preds = %100
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %107 = call i32 @OS_MEMZERO(%struct.TYPE_19__* %106, i32 16)
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 3
  %110 = load i32*, i32** %109, align 8
  %111 = load i64, i64* @headerInfo11B, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  %116 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* @NUM_2_4_EEPROM_CHANNELS_2413, align 4
  %121 = load i64, i64* @headerInfo11B, align 8
  %122 = call i32 @ar2413ReadCalDataset(%struct.ath_hal* %116, %struct.TYPE_18__* %117, %struct.TYPE_19__* %118, i32 %119, i32 %120, i64 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %105
  br label %218

125:                                              ; preds = %105
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 4
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %127, align 8
  %129 = load i64, i64* @headerInfo11B, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i64 %129
  store %struct.TYPE_17__* %130, %struct.TYPE_17__** %6, align 8
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 3
  %133 = load i32*, i32** %132, align 8
  %134 = load i64, i64* @headerInfo11B, align 8
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 4
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %141 = call i32 @ar2413SetupRawDataset(%struct.TYPE_17__* %139, %struct.TYPE_19__* %140)
  %142 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %145 = call i32 @ar2413EepromToRawDataset(%struct.ath_hal* %142, %struct.TYPE_19__* %143, %struct.TYPE_17__* %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %125
  br label %218

148:                                              ; preds = %125
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 2
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i64 0
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = sub nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [4 x i32], [4 x i32]* @readEepromRawPowerCalInfo2413.wordsForPdgains, i64 0, i64 %156
  %158 = load i32, i32* %157, align 4
  store i32 %158, i32* %7, align 4
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* %7, align 4
  %163 = mul nsw i32 %161, %162
  %164 = add nsw i32 %163, 2
  %165 = load i32, i32* %8, align 4
  %166 = add nsw i32 %165, %164
  store i32 %166, i32* %8, align 4
  br label %167

167:                                              ; preds = %148, %100
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 5
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %216

172:                                              ; preds = %167
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %174 = call i32 @OS_MEMZERO(%struct.TYPE_19__* %173, i32 16)
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i32 0, i32 3
  %177 = load i32*, i32** %176, align 8
  %178 = load i64, i64* @headerInfo11G, align 8
  %179 = getelementptr inbounds i32, i32* %177, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %181, i32 0, i32 1
  store i32 %180, i32* %182, align 4
  %183 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %184 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %185 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %186 = load i32, i32* %8, align 4
  %187 = load i32, i32* @NUM_2_4_EEPROM_CHANNELS_2413, align 4
  %188 = load i64, i64* @headerInfo11G, align 8
  %189 = call i32 @ar2413ReadCalDataset(%struct.ath_hal* %183, %struct.TYPE_18__* %184, %struct.TYPE_19__* %185, i32 %186, i32 %187, i64 %188)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %192, label %191

191:                                              ; preds = %172
  br label %218

192:                                              ; preds = %172
  %193 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %193, i32 0, i32 4
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %194, align 8
  %196 = load i64, i64* @headerInfo11G, align 8
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i64 %196
  store %struct.TYPE_17__* %197, %struct.TYPE_17__** %6, align 8
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i32 0, i32 3
  %200 = load i32*, i32** %199, align 8
  %201 = load i64, i64* @headerInfo11G, align 8
  %202 = getelementptr inbounds i32, i32* %200, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %204, i32 0, i32 0
  store i32 %203, i32* %205, align 4
  %206 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %207 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %208 = call i32 @ar2413SetupRawDataset(%struct.TYPE_17__* %206, %struct.TYPE_19__* %207)
  %209 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %210 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %211 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %212 = call i32 @ar2413EepromToRawDataset(%struct.ath_hal* %209, %struct.TYPE_19__* %210, %struct.TYPE_17__* %211)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %215, label %214

214:                                              ; preds = %192
  br label %218

215:                                              ; preds = %192
  br label %216

216:                                              ; preds = %215, %167
  %217 = load i32, i32* @AH_TRUE, align 4
  store i32 %217, i32* %9, align 4
  br label %218

218:                                              ; preds = %216, %214, %191, %147, %124, %80, %57, %29
  %219 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %220 = load %struct.TYPE_19__*, %struct.TYPE_19__** @AH_NULL, align 8
  %221 = icmp ne %struct.TYPE_19__* %219, %220
  br i1 %221, label %222, label %225

222:                                              ; preds = %218
  %223 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %224 = call i32 @ath_hal_free(%struct.TYPE_19__* %223)
  br label %225

225:                                              ; preds = %222, %218
  %226 = load i32, i32* %9, align 4
  ret i32 %226
}

declare dso_local i32 @HALASSERT(i32) #1

declare dso_local %struct.TYPE_19__* @ath_hal_malloc(i32) #1

declare dso_local i32 @OS_MEMZERO(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @ar2413ReadCalDataset(%struct.ath_hal*, %struct.TYPE_18__*, %struct.TYPE_19__*, i32, i32, i64) #1

declare dso_local i32 @ar2413SetupRawDataset(%struct.TYPE_17__*, %struct.TYPE_19__*) #1

declare dso_local i32 @ar2413EepromToRawDataset(%struct.ath_hal*, %struct.TYPE_19__*, %struct.TYPE_17__*) #1

declare dso_local i32 @ath_hal_free(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
