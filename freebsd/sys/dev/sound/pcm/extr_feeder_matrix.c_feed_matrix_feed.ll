; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder_matrix.c_feed_matrix_feed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder_matrix.c_feed_matrix_feed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcm_feeder = type { i32, %struct.feed_matrix_info* }
%struct.feed_matrix_info = type { i64, i64, i32 (%struct.feed_matrix_info*, i32*, i32*, i64)*, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64* }
%struct.pcm_channel = type { i32 }

@SND_CHN_T_EOF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcm_feeder*, %struct.pcm_channel*, i32*, i64, i8*)* @feed_matrix_feed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @feed_matrix_feed(%struct.pcm_feeder* %0, %struct.pcm_channel* %1, i32* %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pcm_feeder*, align 8
  %8 = alloca %struct.pcm_channel*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.feed_matrix_info*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store %struct.pcm_feeder* %0, %struct.pcm_feeder** %7, align 8
  store %struct.pcm_channel* %1, %struct.pcm_channel** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  %17 = load %struct.pcm_feeder*, %struct.pcm_feeder** %7, align 8
  %18 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %17, i32 0, i32 1
  %19 = load %struct.feed_matrix_info*, %struct.feed_matrix_info** %18, align 8
  store %struct.feed_matrix_info* %19, %struct.feed_matrix_info** %12, align 8
  %20 = load %struct.feed_matrix_info*, %struct.feed_matrix_info** %12, align 8
  %21 = getelementptr inbounds %struct.feed_matrix_info, %struct.feed_matrix_info* %20, i32 0, i32 4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SND_CHN_T_EOF, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %5
  %31 = load %struct.pcm_feeder*, %struct.pcm_feeder** %7, align 8
  %32 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.pcm_channel*, %struct.pcm_channel** %8, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = load i64, i64* %10, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = call i64 @FEEDER_FEED(i32 %33, %struct.pcm_channel* %34, i32* %35, i64 %36, i8* %37)
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %6, align 4
  br label %174

40:                                               ; preds = %5
  %41 = load i32*, i32** %9, align 8
  store i32* %41, i32** %16, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load %struct.feed_matrix_info*, %struct.feed_matrix_info** %12, align 8
  %44 = getelementptr inbounds %struct.feed_matrix_info, %struct.feed_matrix_info* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @SND_FXROUND(i64 %42, i64 %45)
  store i64 %46, i64* %10, align 8
  %47 = load %struct.feed_matrix_info*, %struct.feed_matrix_info** %12, align 8
  %48 = getelementptr inbounds %struct.feed_matrix_info, %struct.feed_matrix_info* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.feed_matrix_info*, %struct.feed_matrix_info** %12, align 8
  %51 = getelementptr inbounds %struct.feed_matrix_info, %struct.feed_matrix_info* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %49, %52
  store i64 %53, i64* %14, align 8
  br label %54

54:                                               ; preds = %163, %40
  %55 = load i64, i64* %10, align 8
  %56 = load %struct.feed_matrix_info*, %struct.feed_matrix_info** %12, align 8
  %57 = getelementptr inbounds %struct.feed_matrix_info, %struct.feed_matrix_info* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp slt i64 %55, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %166

61:                                               ; preds = %54
  %62 = load i64, i64* %10, align 8
  %63 = load i64, i64* %14, align 8
  %64 = icmp slt i64 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %61
  %66 = load %struct.feed_matrix_info*, %struct.feed_matrix_info** %12, align 8
  %67 = getelementptr inbounds %struct.feed_matrix_info, %struct.feed_matrix_info* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  store i32* %68, i32** %15, align 8
  %69 = load %struct.feed_matrix_info*, %struct.feed_matrix_info** %12, align 8
  %70 = getelementptr inbounds %struct.feed_matrix_info, %struct.feed_matrix_info* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %13, align 8
  br label %125

72:                                               ; preds = %61
  %73 = load %struct.feed_matrix_info*, %struct.feed_matrix_info** %12, align 8
  %74 = getelementptr inbounds %struct.feed_matrix_info, %struct.feed_matrix_info* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.feed_matrix_info*, %struct.feed_matrix_info** %12, align 8
  %77 = getelementptr inbounds %struct.feed_matrix_info, %struct.feed_matrix_info* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %75, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %72
  %81 = load i64, i64* %10, align 8
  %82 = load %struct.feed_matrix_info*, %struct.feed_matrix_info** %12, align 8
  %83 = getelementptr inbounds %struct.feed_matrix_info, %struct.feed_matrix_info* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = sub nsw i64 %81, %84
  store i64 %85, i64* %13, align 8
  br label %118

86:                                               ; preds = %72
  %87 = load %struct.feed_matrix_info*, %struct.feed_matrix_info** %12, align 8
  %88 = getelementptr inbounds %struct.feed_matrix_info, %struct.feed_matrix_info* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.feed_matrix_info*, %struct.feed_matrix_info** %12, align 8
  %91 = getelementptr inbounds %struct.feed_matrix_info, %struct.feed_matrix_info* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp sgt i64 %89, %92
  br i1 %93, label %94, label %104

94:                                               ; preds = %86
  %95 = load i64, i64* %10, align 8
  %96 = load %struct.feed_matrix_info*, %struct.feed_matrix_info** %12, align 8
  %97 = getelementptr inbounds %struct.feed_matrix_info, %struct.feed_matrix_info* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = sub nsw i64 %95, %98
  %100 = load %struct.feed_matrix_info*, %struct.feed_matrix_info** %12, align 8
  %101 = getelementptr inbounds %struct.feed_matrix_info, %struct.feed_matrix_info* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = call i64 @SND_FXROUND(i64 %99, i64 %102)
  store i64 %103, i64* %13, align 8
  br label %117

104:                                              ; preds = %86
  %105 = load i64, i64* %10, align 8
  %106 = load %struct.feed_matrix_info*, %struct.feed_matrix_info** %12, align 8
  %107 = getelementptr inbounds %struct.feed_matrix_info, %struct.feed_matrix_info* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = trunc i64 %108 to i32
  %110 = call i32 @SND_FXDIV(i64 %105, i32 %109)
  %111 = sub nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = load %struct.feed_matrix_info*, %struct.feed_matrix_info** %12, align 8
  %114 = getelementptr inbounds %struct.feed_matrix_info, %struct.feed_matrix_info* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = mul nsw i64 %112, %115
  store i64 %116, i64* %13, align 8
  br label %117

117:                                              ; preds = %104, %94
  br label %118

118:                                              ; preds = %117, %80
  %119 = load i32*, i32** %16, align 8
  %120 = load i64, i64* %10, align 8
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  %122 = load i64, i64* %13, align 8
  %123 = sub i64 0, %122
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  store i32* %124, i32** %15, align 8
  br label %125

125:                                              ; preds = %118, %65
  %126 = load %struct.pcm_feeder*, %struct.pcm_feeder** %7, align 8
  %127 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.pcm_channel*, %struct.pcm_channel** %8, align 8
  %130 = load i32*, i32** %15, align 8
  %131 = load i64, i64* %13, align 8
  %132 = load i8*, i8** %11, align 8
  %133 = call i64 @FEEDER_FEED(i32 %128, %struct.pcm_channel* %129, i32* %130, i64 %131, i8* %132)
  %134 = load %struct.feed_matrix_info*, %struct.feed_matrix_info** %12, align 8
  %135 = getelementptr inbounds %struct.feed_matrix_info, %struct.feed_matrix_info* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = trunc i64 %136 to i32
  %138 = call i32 @SND_FXDIV(i64 %133, i32 %137)
  %139 = sext i32 %138 to i64
  store i64 %139, i64* %13, align 8
  %140 = load i64, i64* %13, align 8
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %125
  br label %166

143:                                              ; preds = %125
  %144 = load %struct.feed_matrix_info*, %struct.feed_matrix_info** %12, align 8
  %145 = getelementptr inbounds %struct.feed_matrix_info, %struct.feed_matrix_info* %144, i32 0, i32 2
  %146 = load i32 (%struct.feed_matrix_info*, i32*, i32*, i64)*, i32 (%struct.feed_matrix_info*, i32*, i32*, i64)** %145, align 8
  %147 = load %struct.feed_matrix_info*, %struct.feed_matrix_info** %12, align 8
  %148 = load i32*, i32** %15, align 8
  %149 = load i32*, i32** %16, align 8
  %150 = load i64, i64* %13, align 8
  %151 = call i32 %146(%struct.feed_matrix_info* %147, i32* %148, i32* %149, i64 %150)
  %152 = load %struct.feed_matrix_info*, %struct.feed_matrix_info** %12, align 8
  %153 = getelementptr inbounds %struct.feed_matrix_info, %struct.feed_matrix_info* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* %13, align 8
  %156 = mul nsw i64 %155, %154
  store i64 %156, i64* %13, align 8
  %157 = load i64, i64* %13, align 8
  %158 = load i32*, i32** %16, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 %157
  store i32* %159, i32** %16, align 8
  %160 = load i64, i64* %13, align 8
  %161 = load i64, i64* %10, align 8
  %162 = sub nsw i64 %161, %160
  store i64 %162, i64* %10, align 8
  br label %163

163:                                              ; preds = %143
  %164 = load i64, i64* %10, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %54, label %166

166:                                              ; preds = %163, %142, %60
  %167 = load i32*, i32** %16, align 8
  %168 = load i32*, i32** %9, align 8
  %169 = ptrtoint i32* %167 to i64
  %170 = ptrtoint i32* %168 to i64
  %171 = sub i64 %169, %170
  %172 = sdiv exact i64 %171, 4
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* %6, align 4
  br label %174

174:                                              ; preds = %166, %30
  %175 = load i32, i32* %6, align 4
  ret i32 %175
}

declare dso_local i64 @FEEDER_FEED(i32, %struct.pcm_channel*, i32*, i64, i8*) #1

declare dso_local i64 @SND_FXROUND(i64, i64) #1

declare dso_local i32 @SND_FXDIV(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
