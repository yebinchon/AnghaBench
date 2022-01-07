; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder_format.c_feed_format_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder_format.c_feed_format_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcm_feeder = type { %struct.feed_format_info* }
%struct.feed_format_info = type { i32, i32, i32, i32, i32 }

@SND_CHN_MIN = common dso_local global i32 0, align 4
@SND_CHN_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcm_feeder*, i32, i32)* @feed_format_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @feed_format_set(%struct.pcm_feeder* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pcm_feeder*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.feed_format_info*, align 8
  store %struct.pcm_feeder* %0, %struct.pcm_feeder** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.pcm_feeder*, %struct.pcm_feeder** %5, align 8
  %10 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %9, i32 0, i32 0
  %11 = load %struct.feed_format_info*, %struct.feed_format_info** %10, align 8
  store %struct.feed_format_info* %11, %struct.feed_format_info** %8, align 8
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %45 [
    i32 128, label %13
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
  br label %48

23:                                               ; preds = %17
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.feed_format_info*, %struct.feed_format_info** %8, align 8
  %26 = getelementptr inbounds %struct.feed_format_info, %struct.feed_format_info* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.feed_format_info*, %struct.feed_format_info** %8, align 8
  %28 = getelementptr inbounds %struct.feed_format_info, %struct.feed_format_info* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.feed_format_info*, %struct.feed_format_info** %8, align 8
  %31 = getelementptr inbounds %struct.feed_format_info, %struct.feed_format_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %29, %32
  %34 = load %struct.feed_format_info*, %struct.feed_format_info** %8, align 8
  %35 = getelementptr inbounds %struct.feed_format_info, %struct.feed_format_info* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.feed_format_info*, %struct.feed_format_info** %8, align 8
  %37 = getelementptr inbounds %struct.feed_format_info, %struct.feed_format_info* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.feed_format_info*, %struct.feed_format_info** %8, align 8
  %40 = getelementptr inbounds %struct.feed_format_info, %struct.feed_format_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %38, %41
  %43 = load %struct.feed_format_info*, %struct.feed_format_info** %8, align 8
  %44 = getelementptr inbounds %struct.feed_format_info, %struct.feed_format_info* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  br label %47

45:                                               ; preds = %3
  %46 = load i32, i32* @EINVAL, align 4
  store i32 %46, i32* %4, align 4
  br label %48

47:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %45, %21
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
