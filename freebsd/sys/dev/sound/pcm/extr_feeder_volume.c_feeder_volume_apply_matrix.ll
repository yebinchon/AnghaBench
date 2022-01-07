; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder_volume.c_feeder_volume_apply_matrix.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder_volume.c_feeder_volume_apply_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcm_feeder = type { %struct.feed_volume_info*, %struct.TYPE_3__* }
%struct.feed_volume_info = type { i32, i32* }
%struct.TYPE_3__ = type { i64 }
%struct.pcmchan_matrix = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@FEEDER_VOLUME = common dso_local global i64 0, align 8
@SND_CHN_MIN = common dso_local global i32 0, align 4
@SND_CHN_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_CHN_T_FL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @feeder_volume_apply_matrix(%struct.pcm_feeder* %0, %struct.pcmchan_matrix* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcm_feeder*, align 8
  %5 = alloca %struct.pcmchan_matrix*, align 8
  %6 = alloca %struct.feed_volume_info*, align 8
  %7 = alloca i32, align 4
  store %struct.pcm_feeder* %0, %struct.pcm_feeder** %4, align 8
  store %struct.pcmchan_matrix* %1, %struct.pcmchan_matrix** %5, align 8
  %8 = load %struct.pcm_feeder*, %struct.pcm_feeder** %4, align 8
  %9 = icmp eq %struct.pcm_feeder* %8, null
  br i1 %9, label %43, label %10

10:                                               ; preds = %2
  %11 = load %struct.pcm_feeder*, %struct.pcm_feeder** %4, align 8
  %12 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = icmp eq %struct.TYPE_3__* %13, null
  br i1 %14, label %43, label %15

15:                                               ; preds = %10
  %16 = load %struct.pcm_feeder*, %struct.pcm_feeder** %4, align 8
  %17 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @FEEDER_VOLUME, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %43, label %23

23:                                               ; preds = %15
  %24 = load %struct.pcm_feeder*, %struct.pcm_feeder** %4, align 8
  %25 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %24, i32 0, i32 0
  %26 = load %struct.feed_volume_info*, %struct.feed_volume_info** %25, align 8
  %27 = icmp eq %struct.feed_volume_info* %26, null
  br i1 %27, label %43, label %28

28:                                               ; preds = %23
  %29 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %5, align 8
  %30 = icmp eq %struct.pcmchan_matrix* %29, null
  br i1 %30, label %43, label %31

31:                                               ; preds = %28
  %32 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %5, align 8
  %33 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @SND_CHN_MIN, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %5, align 8
  %39 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @SND_CHN_MAX, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37, %31, %28, %23, %15, %10, %2
  %44 = load i32, i32* @EINVAL, align 4
  store i32 %44, i32* %3, align 4
  br label %92

45:                                               ; preds = %37
  %46 = load %struct.pcm_feeder*, %struct.pcm_feeder** %4, align 8
  %47 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %46, i32 0, i32 0
  %48 = load %struct.feed_volume_info*, %struct.feed_volume_info** %47, align 8
  store %struct.feed_volume_info* %48, %struct.feed_volume_info** %6, align 8
  store i32 0, i32* %7, align 4
  br label %49

49:                                               ; preds = %83, %45
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = icmp ult i64 %51, 2
  br i1 %52, label %53, label %86

53:                                               ; preds = %49
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %5, align 8
  %56 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %74

59:                                               ; preds = %53
  %60 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %5, align 8
  %61 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.feed_volume_info*, %struct.feed_volume_info** %6, align 8
  %69 = getelementptr inbounds %struct.feed_volume_info, %struct.feed_volume_info* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 %67, i32* %73, align 4
  br label %82

74:                                               ; preds = %53
  %75 = load i32, i32* @SND_CHN_T_FL, align 4
  %76 = load %struct.feed_volume_info*, %struct.feed_volume_info** %6, align 8
  %77 = getelementptr inbounds %struct.feed_volume_info, %struct.feed_volume_info* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %75, i32* %81, align 4
  br label %82

82:                                               ; preds = %74, %59
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %7, align 4
  br label %49

86:                                               ; preds = %49
  %87 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %5, align 8
  %88 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.feed_volume_info*, %struct.feed_volume_info** %6, align 8
  %91 = getelementptr inbounds %struct.feed_volume_info, %struct.feed_volume_info* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %86, %43
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
