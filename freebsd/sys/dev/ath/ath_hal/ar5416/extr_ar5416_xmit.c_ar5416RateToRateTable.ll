; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_xmit.c_ar5416RateToRateTable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_xmit.c_ar5416RateToRateTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_2__ = type { i32* }

@rate1l = common dso_local global i64 0, align 8
@rate2l = common dso_local global i64 0, align 8
@rate2s = common dso_local global i64 0, align 8
@rate5_5l = common dso_local global i64 0, align 8
@rate5_5s = common dso_local global i64 0, align 8
@rate11l = common dso_local global i64 0, align 8
@rate11s = common dso_local global i64 0, align 8
@rate6mb = common dso_local global i64 0, align 8
@rate9mb = common dso_local global i64 0, align 8
@rate12mb = common dso_local global i64 0, align 8
@rate18mb = common dso_local global i64 0, align 8
@rate24mb = common dso_local global i64 0, align 8
@rate36mb = common dso_local global i64 0, align 8
@rate48mb = common dso_local global i64 0, align 8
@rate54mb = common dso_local global i64 0, align 8
@rateHt40_0 = common dso_local global i32 0, align 4
@rateHt20_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hal*, i32, i64)* @ar5416RateToRateTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar5416RateToRateTable(%struct.ath_hal* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_hal*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %65 [
    i32 27, label %9
    i32 31, label %9
    i32 26, label %17
    i32 30, label %25
    i32 25, label %33
    i32 29, label %41
    i32 24, label %49
    i32 28, label %57
  ]

9:                                                ; preds = %3, %3
  %10 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %11 = call %struct.TYPE_2__* @AH5416(%struct.ath_hal* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* @rate1l, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %4, align 4
  br label %175

17:                                               ; preds = %3
  %18 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %19 = call %struct.TYPE_2__* @AH5416(%struct.ath_hal* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* @rate2l, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %4, align 4
  br label %175

25:                                               ; preds = %3
  %26 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %27 = call %struct.TYPE_2__* @AH5416(%struct.ath_hal* %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @rate2s, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %4, align 4
  br label %175

33:                                               ; preds = %3
  %34 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %35 = call %struct.TYPE_2__* @AH5416(%struct.ath_hal* %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @rate5_5l, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %4, align 4
  br label %175

41:                                               ; preds = %3
  %42 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %43 = call %struct.TYPE_2__* @AH5416(%struct.ath_hal* %42)
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* @rate5_5s, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %4, align 4
  br label %175

49:                                               ; preds = %3
  %50 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %51 = call %struct.TYPE_2__* @AH5416(%struct.ath_hal* %50)
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* @rate11l, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %4, align 4
  br label %175

57:                                               ; preds = %3
  %58 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %59 = call %struct.TYPE_2__* @AH5416(%struct.ath_hal* %58)
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* @rate11s, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %4, align 4
  br label %175

65:                                               ; preds = %3
  %66 = load i32, i32* %6, align 4
  switch i32 %66, label %131 [
    i32 11, label %67
    i32 15, label %75
    i32 10, label %83
    i32 14, label %91
    i32 9, label %99
    i32 13, label %107
    i32 8, label %115
    i32 12, label %123
  ]

67:                                               ; preds = %65
  %68 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %69 = call %struct.TYPE_2__* @AH5416(%struct.ath_hal* %68)
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* @rate6mb, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %4, align 4
  br label %175

75:                                               ; preds = %65
  %76 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %77 = call %struct.TYPE_2__* @AH5416(%struct.ath_hal* %76)
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i64, i64* @rate9mb, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %4, align 4
  br label %175

83:                                               ; preds = %65
  %84 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %85 = call %struct.TYPE_2__* @AH5416(%struct.ath_hal* %84)
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i64, i64* @rate12mb, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %4, align 4
  br label %175

91:                                               ; preds = %65
  %92 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %93 = call %struct.TYPE_2__* @AH5416(%struct.ath_hal* %92)
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i64, i64* @rate18mb, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %4, align 4
  br label %175

99:                                               ; preds = %65
  %100 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %101 = call %struct.TYPE_2__* @AH5416(%struct.ath_hal* %100)
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i64, i64* @rate24mb, align 8
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %4, align 4
  br label %175

107:                                              ; preds = %65
  %108 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %109 = call %struct.TYPE_2__* @AH5416(%struct.ath_hal* %108)
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i64, i64* @rate36mb, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %4, align 4
  br label %175

115:                                              ; preds = %65
  %116 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %117 = call %struct.TYPE_2__* @AH5416(%struct.ath_hal* %116)
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i64, i64* @rate48mb, align 8
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %4, align 4
  br label %175

123:                                              ; preds = %65
  %124 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %125 = call %struct.TYPE_2__* @AH5416(%struct.ath_hal* %124)
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load i64, i64* @rate54mb, align 8
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %4, align 4
  br label %175

131:                                              ; preds = %65
  %132 = load i32, i32* %6, align 4
  %133 = and i32 %132, 128
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %150

135:                                              ; preds = %131
  %136 = load i64, i64* %7, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %150

138:                                              ; preds = %135
  %139 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %140 = call %struct.TYPE_2__* @AH5416(%struct.ath_hal* %139)
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* @rateHt40_0, align 4
  %144 = load i32, i32* %6, align 4
  %145 = and i32 %144, 7
  %146 = add nsw i32 %143, %145
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %142, i64 %147
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* %4, align 4
  br label %175

150:                                              ; preds = %135, %131
  %151 = load i32, i32* %6, align 4
  %152 = and i32 %151, 128
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %166

154:                                              ; preds = %150
  %155 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %156 = call %struct.TYPE_2__* @AH5416(%struct.ath_hal* %155)
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* @rateHt20_0, align 4
  %160 = load i32, i32* %6, align 4
  %161 = and i32 %160, 7
  %162 = add nsw i32 %159, %161
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %158, i64 %163
  %165 = load i32, i32* %164, align 4
  store i32 %165, i32* %4, align 4
  br label %175

166:                                              ; preds = %150
  br label %167

167:                                              ; preds = %166
  %168 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %169 = call %struct.TYPE_2__* @AH5416(%struct.ath_hal* %168)
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = load i64, i64* @rate6mb, align 8
  %173 = getelementptr inbounds i32, i32* %171, i64 %172
  %174 = load i32, i32* %173, align 4
  store i32 %174, i32* %4, align 4
  br label %175

175:                                              ; preds = %167, %154, %138, %123, %115, %107, %99, %91, %83, %75, %67, %57, %49, %41, %33, %25, %17, %9
  %176 = load i32, i32* %4, align 4
  ret i32 %176
}

declare dso_local %struct.TYPE_2__* @AH5416(%struct.ath_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
