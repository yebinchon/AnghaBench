; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder_rate.c_z_resampler_feed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder_rate.c_z_resampler_feed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcm_feeder = type { i64 }
%struct.pcm_channel = type { i32 }
%struct.z_info = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcm_feeder*, %struct.pcm_channel*, i32*, i64, i8*)* @z_resampler_feed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @z_resampler_feed(%struct.pcm_feeder* %0, %struct.pcm_channel* %1, i32* %2, i64 %3, i8* %4) #0 {
  %6 = alloca %struct.pcm_feeder*, align 8
  %7 = alloca %struct.pcm_channel*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.pcm_feeder* %0, %struct.pcm_feeder** %6, align 8
  store %struct.pcm_channel* %1, %struct.pcm_channel** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  %14 = load %struct.pcm_feeder*, %struct.pcm_feeder** %6, align 8
  %15 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.z_info*
  %18 = getelementptr inbounds %struct.z_info, %struct.z_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %12, align 8
  %20 = load i64, i64* %9, align 8
  store i64 %20, i64* %13, align 8
  br label %21

21:                                               ; preds = %42, %5
  %22 = load %struct.pcm_feeder*, %struct.pcm_feeder** %6, align 8
  %23 = load %struct.pcm_channel*, %struct.pcm_channel** %7, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load i64, i64* %12, align 8
  %26 = load i64, i64* %13, align 8
  %27 = call i32 @z_min(i64 %25, i64 %26)
  %28 = load i8*, i8** %10, align 8
  %29 = call i64 @z_resampler_feed_internal(%struct.pcm_feeder* %22, %struct.pcm_channel* %23, i32* %24, i32 %27, i8* %28)
  store i64 %29, i64* %11, align 8
  %30 = load i64, i64* %11, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 %30
  store i32* %32, i32** %8, align 8
  %33 = load i64, i64* %11, align 8
  %34 = load i64, i64* %13, align 8
  %35 = sub nsw i64 %34, %33
  store i64 %35, i64* %13, align 8
  br label %36

36:                                               ; preds = %21
  %37 = load i64, i64* %13, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i64, i64* %11, align 8
  %41 = icmp ne i64 %40, 0
  br label %42

42:                                               ; preds = %39, %36
  %43 = phi i1 [ false, %36 ], [ %41, %39 ]
  br i1 %43, label %21, label %44

44:                                               ; preds = %42
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* %13, align 8
  %47 = sub nsw i64 %45, %46
  %48 = trunc i64 %47 to i32
  ret i32 %48
}

declare dso_local i64 @z_resampler_feed_internal(%struct.pcm_feeder*, %struct.pcm_channel*, i32*, i32, i8*) #1

declare dso_local i32 @z_min(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
