; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder_volume.c_feed_volume_feed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder_volume.c_feed_volume_feed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcm_feeder = type { i32, %struct.feed_volume_info* }
%struct.feed_volume_info = type { i64, i32*, i32, i32, i32 (i32*, i32*, i32, i32*, i32)*, i32 }
%struct.pcm_channel = type { i32** }

@FEEDVOLUME_BYPASS = common dso_local global i64 0, align 8
@SND_VOL_FLAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcm_feeder*, %struct.pcm_channel*, i32*, i32, i8*)* @feed_volume_feed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @feed_volume_feed(%struct.pcm_feeder* %0, %struct.pcm_channel* %1, i32* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pcm_feeder*, align 8
  %8 = alloca %struct.pcm_channel*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.feed_volume_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  store %struct.pcm_feeder* %0, %struct.pcm_feeder** %7, align 8
  store %struct.pcm_channel* %1, %struct.pcm_channel** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %19 = load %struct.pcm_feeder*, %struct.pcm_feeder** %7, align 8
  %20 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %19, i32 0, i32 1
  %21 = load %struct.feed_volume_info*, %struct.feed_volume_info** %20, align 8
  store %struct.feed_volume_info* %21, %struct.feed_volume_info** %12, align 8
  %22 = load %struct.feed_volume_info*, %struct.feed_volume_info** %12, align 8
  %23 = getelementptr inbounds %struct.feed_volume_info, %struct.feed_volume_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @FEEDVOLUME_BYPASS, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %5
  %28 = load %struct.pcm_feeder*, %struct.pcm_feeder** %7, align 8
  %29 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.pcm_channel*, %struct.pcm_channel** %8, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load i8*, i8** %11, align 8
  %35 = call i32 @FEEDER_FEED(i32 %30, %struct.pcm_channel* %31, i32* %32, i32 %33, i8* %34)
  store i32 %35, i32* %6, align 4
  br label %143

36:                                               ; preds = %5
  %37 = load %struct.pcm_channel*, %struct.pcm_channel** %8, align 8
  %38 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %37, i32 0, i32 0
  %39 = load i32**, i32*** %38, align 8
  %40 = load %struct.feed_volume_info*, %struct.feed_volume_info** %12, align 8
  %41 = getelementptr inbounds %struct.feed_volume_info, %struct.feed_volume_info* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @SND_VOL_C_VAL(i32 %42)
  %44 = getelementptr inbounds i32*, i32** %39, i64 %43
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %16, align 8
  %46 = load %struct.feed_volume_info*, %struct.feed_volume_info** %12, align 8
  %47 = getelementptr inbounds %struct.feed_volume_info, %struct.feed_volume_info* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %17, align 8
  store i32 0, i32* %13, align 4
  %49 = load %struct.feed_volume_info*, %struct.feed_volume_info** %12, align 8
  %50 = getelementptr inbounds %struct.feed_volume_info, %struct.feed_volume_info* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %15, align 4
  br label %52

52:                                               ; preds = %67, %36
  %53 = load i32*, i32** %16, align 8
  %54 = load i32*, i32** %17, align 8
  %55 = load i32, i32* %15, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %15, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %53, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @SND_VOL_FLAT, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %52
  store i32 1, i32* %13, align 4
  br label %70

66:                                               ; preds = %52
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %15, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %52, label %70

70:                                               ; preds = %67, %65
  %71 = load i32, i32* %13, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %70
  %74 = load %struct.pcm_feeder*, %struct.pcm_feeder** %7, align 8
  %75 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.pcm_channel*, %struct.pcm_channel** %8, align 8
  %78 = load i32*, i32** %9, align 8
  %79 = load i32, i32* %10, align 4
  %80 = load i8*, i8** %11, align 8
  %81 = call i32 @FEEDER_FEED(i32 %76, %struct.pcm_channel* %77, i32* %78, i32 %79, i8* %80)
  store i32 %81, i32* %6, align 4
  br label %143

82:                                               ; preds = %70
  %83 = load i32*, i32** %9, align 8
  store i32* %83, i32** %18, align 8
  %84 = load %struct.feed_volume_info*, %struct.feed_volume_info** %12, align 8
  %85 = getelementptr inbounds %struct.feed_volume_info, %struct.feed_volume_info* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.feed_volume_info*, %struct.feed_volume_info** %12, align 8
  %88 = getelementptr inbounds %struct.feed_volume_info, %struct.feed_volume_info* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = mul nsw i32 %86, %89
  store i32 %90, i32* %14, align 4
  br label %91

91:                                               ; preds = %132, %82
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %14, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  br label %135

96:                                               ; preds = %91
  %97 = load %struct.pcm_feeder*, %struct.pcm_feeder** %7, align 8
  %98 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.pcm_channel*, %struct.pcm_channel** %8, align 8
  %101 = load i32*, i32** %18, align 8
  %102 = load i32, i32* %10, align 4
  %103 = load i8*, i8** %11, align 8
  %104 = call i32 @FEEDER_FEED(i32 %99, %struct.pcm_channel* %100, i32* %101, i32 %102, i8* %103)
  %105 = load i32, i32* %14, align 4
  %106 = call i32 @SND_FXDIV(i32 %104, i32 %105)
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* %13, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %96
  br label %135

110:                                              ; preds = %96
  %111 = load %struct.feed_volume_info*, %struct.feed_volume_info** %12, align 8
  %112 = getelementptr inbounds %struct.feed_volume_info, %struct.feed_volume_info* %111, i32 0, i32 4
  %113 = load i32 (i32*, i32*, i32, i32*, i32)*, i32 (i32*, i32*, i32, i32*, i32)** %112, align 8
  %114 = load i32*, i32** %16, align 8
  %115 = load i32*, i32** %17, align 8
  %116 = load %struct.feed_volume_info*, %struct.feed_volume_info** %12, align 8
  %117 = getelementptr inbounds %struct.feed_volume_info, %struct.feed_volume_info* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load i32*, i32** %18, align 8
  %120 = load i32, i32* %13, align 4
  %121 = call i32 %113(i32* %114, i32* %115, i32 %118, i32* %119, i32 %120)
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* %13, align 4
  %124 = mul nsw i32 %123, %122
  store i32 %124, i32* %13, align 4
  %125 = load i32, i32* %13, align 4
  %126 = load i32*, i32** %18, align 8
  %127 = sext i32 %125 to i64
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  store i32* %128, i32** %18, align 8
  %129 = load i32, i32* %13, align 4
  %130 = load i32, i32* %10, align 4
  %131 = sub nsw i32 %130, %129
  store i32 %131, i32* %10, align 4
  br label %132

132:                                              ; preds = %110
  %133 = load i32, i32* %10, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %91, label %135

135:                                              ; preds = %132, %109, %95
  %136 = load i32*, i32** %18, align 8
  %137 = load i32*, i32** %9, align 8
  %138 = ptrtoint i32* %136 to i64
  %139 = ptrtoint i32* %137 to i64
  %140 = sub i64 %138, %139
  %141 = sdiv exact i64 %140, 4
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %6, align 4
  br label %143

143:                                              ; preds = %135, %73, %27
  %144 = load i32, i32* %6, align 4
  ret i32 %144
}

declare dso_local i32 @FEEDER_FEED(i32, %struct.pcm_channel*, i32*, i32, i8*) #1

declare dso_local i64 @SND_VOL_C_VAL(i32) #1

declare dso_local i32 @SND_FXDIV(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
