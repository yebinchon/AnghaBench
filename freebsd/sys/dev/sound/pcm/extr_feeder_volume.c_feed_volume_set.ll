; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder_volume.c_feed_volume_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder_volume.c_feed_volume_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcm_feeder = type { %struct.feed_volume_info* }
%struct.feed_volume_info = type { i32, i32 }
%struct.pcmchan_matrix = type { i32 }

@SND_VOL_C_BEGIN = common dso_local global i32 0, align 4
@SND_VOL_C_END = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_CHN_MIN = common dso_local global i32 0, align 4
@SND_CHN_MAX = common dso_local global i32 0, align 4
@FEEDVOLUME_ENABLE = common dso_local global i32 0, align 4
@FEEDVOLUME_BYPASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcm_feeder*, i32, i32)* @feed_volume_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @feed_volume_set(%struct.pcm_feeder* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pcm_feeder*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.feed_volume_info*, align 8
  %9 = alloca %struct.pcmchan_matrix*, align 8
  %10 = alloca i32, align 4
  store %struct.pcm_feeder* %0, %struct.pcm_feeder** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.pcm_feeder*, %struct.pcm_feeder** %5, align 8
  %12 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %11, i32 0, i32 0
  %13 = load %struct.feed_volume_info*, %struct.feed_volume_info** %12, align 8
  store %struct.feed_volume_info* %13, %struct.feed_volume_info** %8, align 8
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %64 [
    i32 129, label %15
    i32 130, label %29
    i32 128, label %50
  ]

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @SND_VOL_C_BEGIN, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @SND_VOL_C_END, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19, %15
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %4, align 4
  br label %68

25:                                               ; preds = %19
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.feed_volume_info*, %struct.feed_volume_info** %8, align 8
  %28 = getelementptr inbounds %struct.feed_volume_info, %struct.feed_volume_info* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %66

29:                                               ; preds = %3
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @SND_CHN_MIN, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @SND_CHN_MAX, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33, %29
  %38 = load i32, i32* @EINVAL, align 4
  store i32 %38, i32* %4, align 4
  br label %68

39:                                               ; preds = %33
  %40 = load i32, i32* %7, align 4
  %41 = call %struct.pcmchan_matrix* @feeder_matrix_default_channel_map(i32 %40)
  store %struct.pcmchan_matrix* %41, %struct.pcmchan_matrix** %9, align 8
  %42 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %9, align 8
  %43 = icmp eq %struct.pcmchan_matrix* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* @EINVAL, align 4
  store i32 %45, i32* %4, align 4
  br label %68

46:                                               ; preds = %39
  %47 = load %struct.pcm_feeder*, %struct.pcm_feeder** %5, align 8
  %48 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %9, align 8
  %49 = call i32 @feeder_volume_apply_matrix(%struct.pcm_feeder* %47, %struct.pcmchan_matrix* %48)
  store i32 %49, i32* %10, align 4
  br label %66

50:                                               ; preds = %3
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @FEEDVOLUME_ENABLE, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %60, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @FEEDVOLUME_BYPASS, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* @EINVAL, align 4
  store i32 %59, i32* %4, align 4
  br label %68

60:                                               ; preds = %54, %50
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.feed_volume_info*, %struct.feed_volume_info** %8, align 8
  %63 = getelementptr inbounds %struct.feed_volume_info, %struct.feed_volume_info* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  br label %66

64:                                               ; preds = %3
  %65 = load i32, i32* @EINVAL, align 4
  store i32 %65, i32* %4, align 4
  br label %68

66:                                               ; preds = %60, %46, %25
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %66, %64, %58, %44, %37, %23
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local %struct.pcmchan_matrix* @feeder_matrix_default_channel_map(i32) #1

declare dso_local i32 @feeder_volume_apply_matrix(%struct.pcm_feeder*, %struct.pcmchan_matrix*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
