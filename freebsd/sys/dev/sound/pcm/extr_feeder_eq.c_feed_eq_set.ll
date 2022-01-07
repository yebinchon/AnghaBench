; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder_eq.c_feed_eq_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder_eq.c_feed_eq_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcm_feeder = type { %struct.TYPE_4__*, %struct.feed_eq_info* }
%struct.TYPE_4__ = type { i32 }
%struct.feed_eq_info = type { i32, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, i8* }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i8* }

@SND_CHN_MIN = common dso_local global i32 0, align 4
@SND_CHN_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FEEDEQ_UNKNOWN = common dso_local global i32 0, align 4
@FEEDEQ_ENABLE = common dso_local global i32 0, align 4
@FEEDEQ_PREAMP_MIN = common dso_local global i32 0, align 4
@FEEDEQ_PREAMP_MAX = common dso_local global i32 0, align 4
@FEEDEQ_BYPASS = common dso_local global i32 0, align 4
@FEEDEQ_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcm_feeder*, i32, i32)* @feed_eq_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @feed_eq_set(%struct.pcm_feeder* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pcm_feeder*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.feed_eq_info*, align 8
  store %struct.pcm_feeder* %0, %struct.pcm_feeder** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.pcm_feeder*, %struct.pcm_feeder** %5, align 8
  %10 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %9, i32 0, i32 1
  %11 = load %struct.feed_eq_info*, %struct.feed_eq_info** %10, align 8
  store %struct.feed_eq_info* %11, %struct.feed_eq_info** %8, align 8
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %127 [
    i32 132, label %13
    i32 130, label %44
    i32 128, label %68
    i32 133, label %68
    i32 131, label %92
    i32 129, label %107
  ]

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @SND_CHN_MIN, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @SND_CHN_MAX, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17, %13
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %4, align 4
  br label %130

23:                                               ; preds = %17
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i8*
  %27 = ptrtoint i8* %26 to i32
  %28 = load %struct.feed_eq_info*, %struct.feed_eq_info** %8, align 8
  %29 = getelementptr inbounds %struct.feed_eq_info, %struct.feed_eq_info* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.feed_eq_info*, %struct.feed_eq_info** %8, align 8
  %31 = getelementptr inbounds %struct.feed_eq_info, %struct.feed_eq_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.pcm_feeder*, %struct.pcm_feeder** %5, align 8
  %34 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @AFMT_BPS(i32 %37)
  %39 = mul nsw i32 %32, %38
  %40 = load %struct.feed_eq_info*, %struct.feed_eq_info** %8, align 8
  %41 = getelementptr inbounds %struct.feed_eq_info, %struct.feed_eq_info* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.feed_eq_info*, %struct.feed_eq_info** %8, align 8
  %43 = call i32 @feed_eq_reset(%struct.feed_eq_info* %42)
  br label %129

44:                                               ; preds = %3
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @feeder_eq_validrate(i32 %45)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* @EINVAL, align 4
  store i32 %49, i32* %4, align 4
  br label %130

50:                                               ; preds = %44
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = inttoptr i64 %52 to i8*
  %54 = load %struct.feed_eq_info*, %struct.feed_eq_info** %8, align 8
  %55 = getelementptr inbounds %struct.feed_eq_info, %struct.feed_eq_info* %54, i32 0, i32 6
  store i8* %53, i8** %55, align 8
  %56 = load %struct.feed_eq_info*, %struct.feed_eq_info** %8, align 8
  %57 = getelementptr inbounds %struct.feed_eq_info, %struct.feed_eq_info* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @FEEDEQ_UNKNOWN, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %50
  %62 = load i32, i32* @FEEDEQ_ENABLE, align 4
  %63 = load %struct.feed_eq_info*, %struct.feed_eq_info** %8, align 8
  %64 = getelementptr inbounds %struct.feed_eq_info, %struct.feed_eq_info* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  br label %65

65:                                               ; preds = %61, %50
  %66 = load %struct.feed_eq_info*, %struct.feed_eq_info** %8, align 8
  %67 = call i32 @feed_eq_setup(%struct.feed_eq_info* %66)
  store i32 %67, i32* %4, align 4
  br label %130

68:                                               ; preds = %3, %3
  %69 = load i32, i32* %7, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %7, align 4
  %73 = icmp sgt i32 %72, 100
  br i1 %73, label %74, label %76

74:                                               ; preds = %71, %68
  %75 = load i32, i32* @EINVAL, align 4
  store i32 %75, i32* %4, align 4
  br label %130

76:                                               ; preds = %71
  %77 = load i32, i32* %6, align 4
  %78 = icmp eq i32 %77, 128
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = load i32, i32* %7, align 4
  %81 = call i8* @FEEDEQ_L2GAIN(i32 %80)
  %82 = load %struct.feed_eq_info*, %struct.feed_eq_info** %8, align 8
  %83 = getelementptr inbounds %struct.feed_eq_info, %struct.feed_eq_info* %82, i32 0, i32 5
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  store i8* %81, i8** %84, align 8
  br label %91

85:                                               ; preds = %76
  %86 = load i32, i32* %7, align 4
  %87 = call i8* @FEEDEQ_L2GAIN(i32 %86)
  %88 = load %struct.feed_eq_info*, %struct.feed_eq_info** %8, align 8
  %89 = getelementptr inbounds %struct.feed_eq_info, %struct.feed_eq_info* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  store i8* %87, i8** %90, align 8
  br label %91

91:                                               ; preds = %85, %79
  br label %129

92:                                               ; preds = %3
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @FEEDEQ_PREAMP_MIN, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %100, label %96

96:                                               ; preds = %92
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @FEEDEQ_PREAMP_MAX, align 4
  %99 = icmp sgt i32 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %96, %92
  %101 = load i32, i32* @EINVAL, align 4
  store i32 %101, i32* %4, align 4
  br label %130

102:                                              ; preds = %96
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @FEEDEQ_PREAMP2IDX(i32 %103)
  %105 = load %struct.feed_eq_info*, %struct.feed_eq_info** %8, align 8
  %106 = getelementptr inbounds %struct.feed_eq_info, %struct.feed_eq_info* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 4
  br label %129

107:                                              ; preds = %3
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* @FEEDEQ_BYPASS, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %121, label %111

111:                                              ; preds = %107
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* @FEEDEQ_ENABLE, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %121, label %115

115:                                              ; preds = %111
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* @FEEDEQ_DISABLE, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %121, label %119

119:                                              ; preds = %115
  %120 = load i32, i32* @EINVAL, align 4
  store i32 %120, i32* %4, align 4
  br label %130

121:                                              ; preds = %115, %111, %107
  %122 = load i32, i32* %7, align 4
  %123 = load %struct.feed_eq_info*, %struct.feed_eq_info** %8, align 8
  %124 = getelementptr inbounds %struct.feed_eq_info, %struct.feed_eq_info* %123, i32 0, i32 2
  store i32 %122, i32* %124, align 8
  %125 = load %struct.feed_eq_info*, %struct.feed_eq_info** %8, align 8
  %126 = call i32 @feed_eq_reset(%struct.feed_eq_info* %125)
  br label %129

127:                                              ; preds = %3
  %128 = load i32, i32* @EINVAL, align 4
  store i32 %128, i32* %4, align 4
  br label %130

129:                                              ; preds = %121, %102, %91, %23
  store i32 0, i32* %4, align 4
  br label %130

130:                                              ; preds = %129, %127, %119, %100, %74, %65, %48, %21
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i32 @AFMT_BPS(i32) #1

declare dso_local i32 @feed_eq_reset(%struct.feed_eq_info*) #1

declare dso_local i32 @feeder_eq_validrate(i32) #1

declare dso_local i32 @feed_eq_setup(%struct.feed_eq_info*) #1

declare dso_local i8* @FEEDEQ_L2GAIN(i32) #1

declare dso_local i32 @FEEDEQ_PREAMP2IDX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
