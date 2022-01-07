; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder_volume.c_feed_volume_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder_volume.c_feed_volume_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }
%struct.pcm_feeder = type { %struct.feed_volume_info*, %struct.TYPE_3__* }
%struct.feed_volume_info = type { i64, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.pcmchan_matrix = type { i32 }

@SND_CHN_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@FEEDVOLUME_TAB_SIZE = common dso_local global i64 0, align 8
@feed_volume_info_tab = common dso_local global %struct.TYPE_4__* null, align 8
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SND_VOL_C_PCM = common dso_local global i32 0, align 4
@FEEDVOLUME_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcm_feeder*)* @feed_volume_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @feed_volume_init(%struct.pcm_feeder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcm_feeder*, align 8
  %4 = alloca %struct.feed_volume_info*, align 8
  %5 = alloca %struct.pcmchan_matrix*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.pcm_feeder* %0, %struct.pcm_feeder** %3, align 8
  %8 = load %struct.pcm_feeder*, %struct.pcm_feeder** %3, align 8
  %9 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.pcm_feeder*, %struct.pcm_feeder** %3, align 8
  %14 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %12, %17
  br i1 %18, label %28, label %19

19:                                               ; preds = %1
  %20 = load %struct.pcm_feeder*, %struct.pcm_feeder** %3, align 8
  %21 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @AFMT_CHANNEL(i64 %24)
  %26 = load i64, i64* @SND_CHN_MAX, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %19, %1
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %2, align 4
  br label %120

30:                                               ; preds = %19
  store i64 0, i64* %6, align 8
  br label %31

31:                                               ; preds = %115, %30
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @FEEDVOLUME_TAB_SIZE, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %118

35:                                               ; preds = %31
  %36 = load %struct.pcm_feeder*, %struct.pcm_feeder** %3, align 8
  %37 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @AFMT_ENCODING(i64 %40)
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** @feed_volume_info_tab, align 8
  %43 = load i64, i64* %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %41, %46
  br i1 %47, label %48, label %114

48:                                               ; preds = %35
  %49 = load i32, i32* @M_DEVBUF, align 4
  %50 = load i32, i32* @M_NOWAIT, align 4
  %51 = load i32, i32* @M_ZERO, align 4
  %52 = or i32 %50, %51
  %53 = call %struct.feed_volume_info* @malloc(i32 24, i32 %49, i32 %52)
  store %struct.feed_volume_info* %53, %struct.feed_volume_info** %4, align 8
  %54 = load %struct.feed_volume_info*, %struct.feed_volume_info** %4, align 8
  %55 = icmp eq %struct.feed_volume_info* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load i32, i32* @ENOMEM, align 4
  store i32 %57, i32* %2, align 4
  br label %120

58:                                               ; preds = %48
  %59 = load %struct.pcm_feeder*, %struct.pcm_feeder** %3, align 8
  %60 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %59, i32 0, i32 1
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @AFMT_BPS(i64 %63)
  %65 = load %struct.feed_volume_info*, %struct.feed_volume_info** %4, align 8
  %66 = getelementptr inbounds %struct.feed_volume_info, %struct.feed_volume_info* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 4
  %67 = load %struct.pcm_feeder*, %struct.pcm_feeder** %3, align 8
  %68 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %67, i32 0, i32 1
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i64 @AFMT_CHANNEL(i64 %71)
  %73 = load %struct.feed_volume_info*, %struct.feed_volume_info** %4, align 8
  %74 = getelementptr inbounds %struct.feed_volume_info, %struct.feed_volume_info* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** @feed_volume_info_tab, align 8
  %76 = load i64, i64* %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.feed_volume_info*, %struct.feed_volume_info** %4, align 8
  %81 = getelementptr inbounds %struct.feed_volume_info, %struct.feed_volume_info* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* @SND_VOL_C_PCM, align 4
  %83 = load %struct.feed_volume_info*, %struct.feed_volume_info** %4, align 8
  %84 = getelementptr inbounds %struct.feed_volume_info, %struct.feed_volume_info* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* @FEEDVOLUME_ENABLE, align 4
  %86 = load %struct.feed_volume_info*, %struct.feed_volume_info** %4, align 8
  %87 = getelementptr inbounds %struct.feed_volume_info, %struct.feed_volume_info* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 8
  %88 = load %struct.feed_volume_info*, %struct.feed_volume_info** %4, align 8
  %89 = load %struct.pcm_feeder*, %struct.pcm_feeder** %3, align 8
  %90 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %89, i32 0, i32 0
  store %struct.feed_volume_info* %88, %struct.feed_volume_info** %90, align 8
  %91 = load %struct.feed_volume_info*, %struct.feed_volume_info** %4, align 8
  %92 = getelementptr inbounds %struct.feed_volume_info, %struct.feed_volume_info* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call %struct.pcmchan_matrix* @feeder_matrix_default_channel_map(i64 %93)
  store %struct.pcmchan_matrix* %94, %struct.pcmchan_matrix** %5, align 8
  %95 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %5, align 8
  %96 = icmp eq %struct.pcmchan_matrix* %95, null
  br i1 %96, label %97, label %102

97:                                               ; preds = %58
  %98 = load %struct.feed_volume_info*, %struct.feed_volume_info** %4, align 8
  %99 = load i32, i32* @M_DEVBUF, align 4
  %100 = call i32 @free(%struct.feed_volume_info* %98, i32 %99)
  %101 = load i32, i32* @EINVAL, align 4
  store i32 %101, i32* %2, align 4
  br label %120

102:                                              ; preds = %58
  %103 = load %struct.pcm_feeder*, %struct.pcm_feeder** %3, align 8
  %104 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %5, align 8
  %105 = call i32 @feeder_volume_apply_matrix(%struct.pcm_feeder* %103, %struct.pcmchan_matrix* %104)
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %7, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %102
  %109 = load %struct.feed_volume_info*, %struct.feed_volume_info** %4, align 8
  %110 = load i32, i32* @M_DEVBUF, align 4
  %111 = call i32 @free(%struct.feed_volume_info* %109, i32 %110)
  br label %112

112:                                              ; preds = %108, %102
  %113 = load i32, i32* %7, align 4
  store i32 %113, i32* %2, align 4
  br label %120

114:                                              ; preds = %35
  br label %115

115:                                              ; preds = %114
  %116 = load i64, i64* %6, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %6, align 8
  br label %31

118:                                              ; preds = %31
  %119 = load i32, i32* @EINVAL, align 4
  store i32 %119, i32* %2, align 4
  br label %120

120:                                              ; preds = %118, %112, %97, %56, %28
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local i64 @AFMT_CHANNEL(i64) #1

declare dso_local i64 @AFMT_ENCODING(i64) #1

declare dso_local %struct.feed_volume_info* @malloc(i32, i32, i32) #1

declare dso_local i32 @AFMT_BPS(i64) #1

declare dso_local %struct.pcmchan_matrix* @feeder_matrix_default_channel_map(i64) #1

declare dso_local i32 @free(%struct.feed_volume_info*, i32) #1

declare dso_local i32 @feeder_volume_apply_matrix(%struct.pcm_feeder*, %struct.pcmchan_matrix*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
