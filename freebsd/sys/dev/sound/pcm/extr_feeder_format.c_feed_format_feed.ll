; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder_format.c_feed_format_feed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder_format.c_feed_format_feed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcm_feeder = type { i32, %struct.feed_format_info* }
%struct.feed_format_info = type { i64, i64, i64, i64, i32, i32 (i32*, i32)*, i32 (i32*)*, i32* }
%struct.pcm_channel = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcm_feeder*, %struct.pcm_channel*, i32*, i64, i8*)* @feed_format_feed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @feed_format_feed(%struct.pcm_feeder* %0, %struct.pcm_channel* %1, i32* %2, i64 %3, i8* %4) #0 {
  %6 = alloca %struct.pcm_feeder*, align 8
  %7 = alloca %struct.pcm_channel*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.feed_format_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store %struct.pcm_feeder* %0, %struct.pcm_feeder** %6, align 8
  store %struct.pcm_channel* %1, %struct.pcm_channel** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  %16 = load %struct.pcm_feeder*, %struct.pcm_feeder** %6, align 8
  %17 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %16, i32 0, i32 1
  %18 = load %struct.feed_format_info*, %struct.feed_format_info** %17, align 8
  store %struct.feed_format_info* %18, %struct.feed_format_info** %11, align 8
  %19 = load i32*, i32** %8, align 8
  store i32* %19, i32** %15, align 8
  %20 = load i64, i64* %9, align 8
  %21 = load %struct.feed_format_info*, %struct.feed_format_info** %11, align 8
  %22 = getelementptr inbounds %struct.feed_format_info, %struct.feed_format_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @SND_FXROUND(i64 %20, i64 %23)
  store i64 %24, i64* %9, align 8
  br label %25

25:                                               ; preds = %144, %5
  %26 = load i64, i64* %9, align 8
  %27 = load %struct.feed_format_info*, %struct.feed_format_info** %11, align 8
  %28 = getelementptr inbounds %struct.feed_format_info, %struct.feed_format_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %147

32:                                               ; preds = %25
  %33 = load i64, i64* %9, align 8
  %34 = load %struct.feed_format_info*, %struct.feed_format_info** %11, align 8
  %35 = getelementptr inbounds %struct.feed_format_info, %struct.feed_format_info* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %33, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = load %struct.feed_format_info*, %struct.feed_format_info** %11, align 8
  %40 = getelementptr inbounds %struct.feed_format_info, %struct.feed_format_info* %39, i32 0, i32 7
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %14, align 8
  %42 = load %struct.feed_format_info*, %struct.feed_format_info** %11, align 8
  %43 = getelementptr inbounds %struct.feed_format_info, %struct.feed_format_info* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %13, align 8
  br label %87

45:                                               ; preds = %32
  %46 = load %struct.feed_format_info*, %struct.feed_format_info** %11, align 8
  %47 = getelementptr inbounds %struct.feed_format_info, %struct.feed_format_info* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.feed_format_info*, %struct.feed_format_info** %11, align 8
  %50 = getelementptr inbounds %struct.feed_format_info, %struct.feed_format_info* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %48, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i64, i64* %9, align 8
  store i64 %54, i64* %13, align 8
  br label %80

55:                                               ; preds = %45
  %56 = load %struct.feed_format_info*, %struct.feed_format_info** %11, align 8
  %57 = getelementptr inbounds %struct.feed_format_info, %struct.feed_format_info* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.feed_format_info*, %struct.feed_format_info** %11, align 8
  %60 = getelementptr inbounds %struct.feed_format_info, %struct.feed_format_info* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp sgt i64 %58, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %55
  %64 = load i64, i64* %9, align 8
  %65 = load %struct.feed_format_info*, %struct.feed_format_info** %11, align 8
  %66 = getelementptr inbounds %struct.feed_format_info, %struct.feed_format_info* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @SND_FXROUND(i64 %64, i64 %67)
  store i64 %68, i64* %13, align 8
  br label %79

69:                                               ; preds = %55
  %70 = load i64, i64* %9, align 8
  %71 = load %struct.feed_format_info*, %struct.feed_format_info** %11, align 8
  %72 = getelementptr inbounds %struct.feed_format_info, %struct.feed_format_info* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i64 @SND_FXDIV(i64 %70, i64 %73)
  %75 = load %struct.feed_format_info*, %struct.feed_format_info** %11, align 8
  %76 = getelementptr inbounds %struct.feed_format_info, %struct.feed_format_info* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = mul nsw i64 %74, %77
  store i64 %78, i64* %13, align 8
  br label %79

79:                                               ; preds = %69, %63
  br label %80

80:                                               ; preds = %79, %53
  %81 = load i32*, i32** %15, align 8
  %82 = load i64, i64* %9, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i64, i64* %13, align 8
  %85 = sub i64 0, %84
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32* %86, i32** %14, align 8
  br label %87

87:                                               ; preds = %80, %38
  %88 = load %struct.pcm_feeder*, %struct.pcm_feeder** %6, align 8
  %89 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.pcm_channel*, %struct.pcm_channel** %7, align 8
  %92 = load i32*, i32** %14, align 8
  %93 = load i64, i64* %13, align 8
  %94 = load i8*, i8** %10, align 8
  %95 = call i64 @FEEDER_FEED(i32 %90, %struct.pcm_channel* %91, i32* %92, i64 %93, i8* %94)
  %96 = load %struct.feed_format_info*, %struct.feed_format_info** %11, align 8
  %97 = getelementptr inbounds %struct.feed_format_info, %struct.feed_format_info* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = call i64 @SND_FXDIV(i64 %95, i64 %98)
  store i64 %99, i64* %13, align 8
  %100 = load i64, i64* %13, align 8
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %87
  br label %147

103:                                              ; preds = %87
  %104 = load %struct.feed_format_info*, %struct.feed_format_info** %11, align 8
  %105 = getelementptr inbounds %struct.feed_format_info, %struct.feed_format_info* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %13, align 8
  %108 = mul nsw i64 %107, %106
  store i64 %108, i64* %13, align 8
  %109 = load i64, i64* %13, align 8
  %110 = load %struct.feed_format_info*, %struct.feed_format_info** %11, align 8
  %111 = getelementptr inbounds %struct.feed_format_info, %struct.feed_format_info* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = mul nsw i64 %109, %112
  %114 = load i64, i64* %9, align 8
  %115 = sub nsw i64 %114, %113
  store i64 %115, i64* %9, align 8
  br label %116

116:                                              ; preds = %139, %103
  %117 = load %struct.feed_format_info*, %struct.feed_format_info** %11, align 8
  %118 = getelementptr inbounds %struct.feed_format_info, %struct.feed_format_info* %117, i32 0, i32 6
  %119 = load i32 (i32*)*, i32 (i32*)** %118, align 8
  %120 = load i32*, i32** %14, align 8
  %121 = call i32 %119(i32* %120)
  store i32 %121, i32* %12, align 4
  %122 = load %struct.feed_format_info*, %struct.feed_format_info** %11, align 8
  %123 = getelementptr inbounds %struct.feed_format_info, %struct.feed_format_info* %122, i32 0, i32 5
  %124 = load i32 (i32*, i32)*, i32 (i32*, i32)** %123, align 8
  %125 = load i32*, i32** %15, align 8
  %126 = load i32, i32* %12, align 4
  %127 = call i32 %124(i32* %125, i32 %126)
  %128 = load %struct.feed_format_info*, %struct.feed_format_info** %11, align 8
  %129 = getelementptr inbounds %struct.feed_format_info, %struct.feed_format_info* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = load i32*, i32** %15, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 %130
  store i32* %132, i32** %15, align 8
  %133 = load %struct.feed_format_info*, %struct.feed_format_info** %11, align 8
  %134 = getelementptr inbounds %struct.feed_format_info, %struct.feed_format_info* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = load i32*, i32** %14, align 8
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  store i32* %138, i32** %14, align 8
  br label %139

139:                                              ; preds = %116
  %140 = load i64, i64* %13, align 8
  %141 = add nsw i64 %140, -1
  store i64 %141, i64* %13, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %116, label %143

143:                                              ; preds = %139
  br label %144

144:                                              ; preds = %143
  %145 = load i64, i64* %9, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %25, label %147

147:                                              ; preds = %144, %102, %31
  %148 = load i32*, i32** %15, align 8
  %149 = load i32*, i32** %8, align 8
  %150 = ptrtoint i32* %148 to i64
  %151 = ptrtoint i32* %149 to i64
  %152 = sub i64 %150, %151
  %153 = sdiv exact i64 %152, 4
  %154 = trunc i64 %153 to i32
  ret i32 %154
}

declare dso_local i64 @SND_FXROUND(i64, i64) #1

declare dso_local i64 @SND_FXDIV(i64, i64) #1

declare dso_local i64 @FEEDER_FEED(i32, %struct.pcm_channel*, i32*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
