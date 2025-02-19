; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder_mixer.c_feed_mixer_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder_mixer.c_feed_mixer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.pcm_feeder = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@FEEDMIXER_TAB_SIZE = common dso_local global i32 0, align 4
@feed_mixer_info_tab = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcm_feeder*)* @feed_mixer_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @feed_mixer_init(%struct.pcm_feeder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcm_feeder*, align 8
  %4 = alloca i32, align 4
  store %struct.pcm_feeder* %0, %struct.pcm_feeder** %3, align 8
  %5 = load %struct.pcm_feeder*, %struct.pcm_feeder** %3, align 8
  %6 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.pcm_feeder*, %struct.pcm_feeder** %3, align 8
  %11 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %9, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %2, align 4
  br label %54

18:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %49, %18
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @FEEDMIXER_TAB_SIZE, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %52

23:                                               ; preds = %19
  %24 = load %struct.pcm_feeder*, %struct.pcm_feeder** %3, align 8
  %25 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @AFMT_ENCODING(i64 %28)
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @feed_mixer_info_tab, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %29, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %23
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.pcm_feeder*, %struct.pcm_feeder** %3, align 8
  %40 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @AFMT_CHANNEL(i64 %43)
  %45 = call i32 @FEEDMIXER_DATA(i32 %38, i32 %44)
  %46 = load %struct.pcm_feeder*, %struct.pcm_feeder** %3, align 8
  %47 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  store i32 0, i32* %2, align 4
  br label %54

48:                                               ; preds = %23
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %19

52:                                               ; preds = %19
  %53 = load i32, i32* @EINVAL, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %52, %37, %16
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i64 @AFMT_ENCODING(i64) #1

declare dso_local i32 @FEEDMIXER_DATA(i32, i32) #1

declare dso_local i32 @AFMT_CHANNEL(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
