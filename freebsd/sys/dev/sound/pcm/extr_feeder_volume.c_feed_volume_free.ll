; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder_volume.c_feed_volume_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder_volume.c_feed_volume_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcm_feeder = type { %struct.feed_volume_info* }
%struct.feed_volume_info = type { i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcm_feeder*)* @feed_volume_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @feed_volume_free(%struct.pcm_feeder* %0) #0 {
  %2 = alloca %struct.pcm_feeder*, align 8
  %3 = alloca %struct.feed_volume_info*, align 8
  store %struct.pcm_feeder* %0, %struct.pcm_feeder** %2, align 8
  %4 = load %struct.pcm_feeder*, %struct.pcm_feeder** %2, align 8
  %5 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %4, i32 0, i32 0
  %6 = load %struct.feed_volume_info*, %struct.feed_volume_info** %5, align 8
  store %struct.feed_volume_info* %6, %struct.feed_volume_info** %3, align 8
  %7 = load %struct.feed_volume_info*, %struct.feed_volume_info** %3, align 8
  %8 = icmp ne %struct.feed_volume_info* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.feed_volume_info*, %struct.feed_volume_info** %3, align 8
  %11 = load i32, i32* @M_DEVBUF, align 4
  %12 = call i32 @free(%struct.feed_volume_info* %10, i32 %11)
  br label %13

13:                                               ; preds = %9, %1
  %14 = load %struct.pcm_feeder*, %struct.pcm_feeder** %2, align 8
  %15 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %14, i32 0, i32 0
  store %struct.feed_volume_info* null, %struct.feed_volume_info** %15, align 8
  ret i32 0
}

declare dso_local i32 @free(%struct.feed_volume_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
