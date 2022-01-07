; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bktr/extr_bktr_tuner.c_tv_freq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bktr/extr_bktr_tuner.c_tv_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TUNER = type { i32*, i32* }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i64, i32, i32 }
%struct.TYPE_9__ = type { i32, %struct.TUNER* }

@tuners = common dso_local global %struct.TUNER* null, align 8
@TUNER_MT2032 = common dso_local global i64 0, align 8
@TV_FREQUENCY = common dso_local global i32 0, align 4
@FREQFACTOR = common dso_local global i32 0, align 4
@LOW_BAND = common dso_local global i32 0, align 4
@MID_BAND = common dso_local global i32 0, align 4
@HIGH_BAND = common dso_local global i32 0, align 4
@TBL_IF = common dso_local global i32 0, align 4
@FM_RADIO_FREQUENCY = common dso_local global i32 0, align 4
@FM_RADIO_BAND = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tv_freq(%struct.TYPE_11__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TUNER*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %13, align 4
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %17 = load %struct.TUNER*, %struct.TUNER** %16, align 8
  store %struct.TUNER* %17, %struct.TUNER** %8, align 8
  %18 = load %struct.TUNER*, %struct.TUNER** %8, align 8
  %19 = icmp eq %struct.TUNER* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %180

21:                                               ; preds = %3
  %22 = load %struct.TUNER*, %struct.TUNER** %8, align 8
  %23 = load %struct.TUNER*, %struct.TUNER** @tuners, align 8
  %24 = load i64, i64* @TUNER_MT2032, align 8
  %25 = getelementptr inbounds %struct.TUNER, %struct.TUNER* %23, i64 %24
  %26 = icmp eq %struct.TUNER* %22, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @mt2032_set_tv_freq(%struct.TYPE_11__* %28, i32 %29)
  store i32 0, i32* %4, align 4
  br label %180

31:                                               ; preds = %21
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @TV_FREQUENCY, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %120

35:                                               ; preds = %31
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @FREQFACTOR, align 4
  %38 = mul nsw i32 160, %37
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @LOW_BAND, align 4
  store i32 %41, i32* %13, align 4
  br label %52

42:                                               ; preds = %35
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @FREQFACTOR, align 4
  %45 = mul nsw i32 454, %44
  %46 = icmp slt i32 %43, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @MID_BAND, align 4
  store i32 %48, i32* %13, align 4
  br label %51

49:                                               ; preds = %42
  %50 = load i32, i32* @HIGH_BAND, align 4
  store i32 %50, i32* %13, align 4
  br label %51

51:                                               ; preds = %49, %47
  br label %52

52:                                               ; preds = %51, %40
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @TBL_IF, align 4
  %55 = add nsw i32 %53, %54
  store i32 %55, i32* %12, align 4
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %9, align 4
  %60 = load %struct.TUNER*, %struct.TUNER** %8, align 8
  %61 = getelementptr inbounds %struct.TUNER, %struct.TUNER* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %13, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %10, align 4
  %67 = load %struct.TUNER*, %struct.TUNER** %8, align 8
  %68 = getelementptr inbounds %struct.TUNER, %struct.TUNER* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %52
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %76, %52
  store i32 -1, i32* %4, align 4
  br label %180

80:                                               ; preds = %76
  %81 = load i32, i32* %6, align 4
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = icmp sgt i32 %81, %85
  br i1 %86, label %87, label %101

87:                                               ; preds = %80
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %12, align 4
  %91 = ashr i32 %90, 8
  %92 = and i32 %91, 127
  %93 = load i32, i32* %12, align 4
  %94 = and i32 %93, 255
  %95 = call i32 @i2cWrite(%struct.TYPE_11__* %88, i32 %89, i32 %92, i32 %94)
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %11, align 4
  %100 = call i32 @i2cWrite(%struct.TYPE_11__* %96, i32 %97, i32 %98, i32 %99)
  br label %115

101:                                              ; preds = %80
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* %11, align 4
  %106 = call i32 @i2cWrite(%struct.TYPE_11__* %102, i32 %103, i32 %104, i32 %105)
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* %12, align 4
  %110 = ashr i32 %109, 8
  %111 = and i32 %110, 127
  %112 = load i32, i32* %12, align 4
  %113 = and i32 %112, 255
  %114 = call i32 @i2cWrite(%struct.TYPE_11__* %107, i32 %108, i32 %111, i32 %113)
  br label %115

115:                                              ; preds = %101, %87
  %116 = load i32, i32* %6, align 4
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 1
  store i32 %116, i32* %119, align 8
  br label %120

120:                                              ; preds = %115, %31
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* @FM_RADIO_FREQUENCY, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %179

124:                                              ; preds = %120
  %125 = load i32, i32* @FM_RADIO_BAND, align 4
  store i32 %125, i32* %13, align 4
  %126 = load i32, i32* %6, align 4
  %127 = add nsw i32 %126, 1070
  %128 = sdiv i32 %127, 5
  store i32 %128, i32* %12, align 4
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  store i32 %132, i32* %9, align 4
  %133 = load %struct.TUNER*, %struct.TUNER** %8, align 8
  %134 = getelementptr inbounds %struct.TUNER, %struct.TUNER* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %13, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %10, align 4
  %140 = load %struct.TUNER*, %struct.TUNER** %8, align 8
  %141 = getelementptr inbounds %struct.TUNER, %struct.TUNER* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %13, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  store i32 %146, i32* %11, align 4
  %147 = load i32, i32* %11, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %124
  %150 = load i32, i32* %10, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %149, %124
  store i32 -1, i32* %4, align 4
  br label %180

153:                                              ; preds = %149
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %11, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %11, align 4
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %161 = load i32, i32* %9, align 4
  %162 = load i32, i32* %10, align 4
  %163 = load i32, i32* %11, align 4
  %164 = call i32 @i2cWrite(%struct.TYPE_11__* %160, i32 %161, i32 %162, i32 %163)
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %166 = load i32, i32* %9, align 4
  %167 = load i32, i32* %12, align 4
  %168 = ashr i32 %167, 8
  %169 = and i32 %168, 127
  %170 = load i32, i32* %12, align 4
  %171 = and i32 %170, 255
  %172 = call i32 @i2cWrite(%struct.TYPE_11__* %165, i32 %166, i32 %169, i32 %171)
  %173 = load i32, i32* %12, align 4
  %174 = mul nsw i32 %173, 5
  %175 = sub nsw i32 %174, 1070
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 1
  store i32 %175, i32* %178, align 8
  br label %179

179:                                              ; preds = %153, %120
  store i32 0, i32* %4, align 4
  br label %180

180:                                              ; preds = %179, %152, %79, %27, %20
  %181 = load i32, i32* %4, align 4
  ret i32 %181
}

declare dso_local i32 @mt2032_set_tv_freq(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @i2cWrite(%struct.TYPE_11__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
