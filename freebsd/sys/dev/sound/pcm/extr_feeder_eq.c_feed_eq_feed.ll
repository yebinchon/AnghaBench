; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder_eq.c_feed_eq_feed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder_eq.c_feed_eq_feed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcm_feeder = type { i32, %struct.feed_eq_info* }
%struct.feed_eq_info = type { i64, i64, i32 (%struct.feed_eq_info*, i32*, i64)* }
%struct.pcm_channel = type { i32 }

@FEEDEQ_BYPASS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcm_feeder*, %struct.pcm_channel*, i32*, i64, i8*)* @feed_eq_feed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @feed_eq_feed(%struct.pcm_feeder* %0, %struct.pcm_channel* %1, i32* %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pcm_feeder*, align 8
  %8 = alloca %struct.pcm_channel*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.feed_eq_info*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  store %struct.pcm_feeder* %0, %struct.pcm_feeder** %7, align 8
  store %struct.pcm_channel* %1, %struct.pcm_channel** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  %15 = load %struct.pcm_feeder*, %struct.pcm_feeder** %7, align 8
  %16 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %15, i32 0, i32 1
  %17 = load %struct.feed_eq_info*, %struct.feed_eq_info** %16, align 8
  store %struct.feed_eq_info* %17, %struct.feed_eq_info** %12, align 8
  %18 = load %struct.feed_eq_info*, %struct.feed_eq_info** %12, align 8
  %19 = getelementptr inbounds %struct.feed_eq_info, %struct.feed_eq_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @FEEDEQ_BYPASS, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %5
  %24 = load %struct.pcm_feeder*, %struct.pcm_feeder** %7, align 8
  %25 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.pcm_channel*, %struct.pcm_channel** %8, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = call i32 @FEEDER_FEED(i32 %26, %struct.pcm_channel* %27, i32* %28, i64 %29, i8* %30)
  store i32 %31, i32* %6, align 4
  br label %92

32:                                               ; preds = %5
  %33 = load i32*, i32** %9, align 8
  store i32* %33, i32** %14, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load %struct.feed_eq_info*, %struct.feed_eq_info** %12, align 8
  %36 = getelementptr inbounds %struct.feed_eq_info, %struct.feed_eq_info* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @SND_FXROUND(i64 %34, i64 %37)
  store i64 %38, i64* %10, align 8
  br label %39

39:                                               ; preds = %81, %32
  %40 = load i64, i64* %10, align 8
  %41 = load %struct.feed_eq_info*, %struct.feed_eq_info** %12, align 8
  %42 = getelementptr inbounds %struct.feed_eq_info, %struct.feed_eq_info* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp slt i64 %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %84

46:                                               ; preds = %39
  %47 = load %struct.pcm_feeder*, %struct.pcm_feeder** %7, align 8
  %48 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.pcm_channel*, %struct.pcm_channel** %8, align 8
  %51 = load i32*, i32** %14, align 8
  %52 = load i64, i64* %10, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = call i32 @FEEDER_FEED(i32 %49, %struct.pcm_channel* %50, i32* %51, i64 %52, i8* %53)
  %55 = load %struct.feed_eq_info*, %struct.feed_eq_info** %12, align 8
  %56 = getelementptr inbounds %struct.feed_eq_info, %struct.feed_eq_info* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @SND_FXDIV(i32 %54, i64 %57)
  store i64 %58, i64* %13, align 8
  %59 = load i64, i64* %13, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %46
  br label %84

62:                                               ; preds = %46
  %63 = load %struct.feed_eq_info*, %struct.feed_eq_info** %12, align 8
  %64 = getelementptr inbounds %struct.feed_eq_info, %struct.feed_eq_info* %63, i32 0, i32 2
  %65 = load i32 (%struct.feed_eq_info*, i32*, i64)*, i32 (%struct.feed_eq_info*, i32*, i64)** %64, align 8
  %66 = load %struct.feed_eq_info*, %struct.feed_eq_info** %12, align 8
  %67 = load i32*, i32** %14, align 8
  %68 = load i64, i64* %13, align 8
  %69 = call i32 %65(%struct.feed_eq_info* %66, i32* %67, i64 %68)
  %70 = load %struct.feed_eq_info*, %struct.feed_eq_info** %12, align 8
  %71 = getelementptr inbounds %struct.feed_eq_info, %struct.feed_eq_info* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %13, align 8
  %74 = mul nsw i64 %73, %72
  store i64 %74, i64* %13, align 8
  %75 = load i64, i64* %13, align 8
  %76 = load i32*, i32** %14, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 %75
  store i32* %77, i32** %14, align 8
  %78 = load i64, i64* %13, align 8
  %79 = load i64, i64* %10, align 8
  %80 = sub nsw i64 %79, %78
  store i64 %80, i64* %10, align 8
  br label %81

81:                                               ; preds = %62
  %82 = load i64, i64* %10, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %39, label %84

84:                                               ; preds = %81, %61, %45
  %85 = load i32*, i32** %14, align 8
  %86 = load i32*, i32** %9, align 8
  %87 = ptrtoint i32* %85 to i64
  %88 = ptrtoint i32* %86 to i64
  %89 = sub i64 %87, %88
  %90 = sdiv exact i64 %89, 4
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %84, %23
  %93 = load i32, i32* %6, align 4
  ret i32 %93
}

declare dso_local i32 @FEEDER_FEED(i32, %struct.pcm_channel*, i32*, i64, i8*) #1

declare dso_local i64 @SND_FXROUND(i64, i64) #1

declare dso_local i64 @SND_FXDIV(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
