; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_sound.c_pcm_killchan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_sound.c_pcm_killchan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.snddev_info = type { i32 }
%struct.pcm_channel = type { i32 }

@channels = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pcm_killchan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm_killchan(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.snddev_info*, align 8
  %5 = alloca %struct.pcm_channel*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.snddev_info* @device_get_softc(i32 %7)
  store %struct.snddev_info* %8, %struct.snddev_info** %4, align 8
  %9 = load %struct.snddev_info*, %struct.snddev_info** %4, align 8
  %10 = call i32 @PCM_BUSYASSERT(%struct.snddev_info* %9)
  %11 = load %struct.snddev_info*, %struct.snddev_info** %4, align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @channels, i32 0, i32 0), align 4
  %13 = call %struct.pcm_channel* @CHN_FIRST(%struct.snddev_info* %11, i32 %12)
  store %struct.pcm_channel* %13, %struct.pcm_channel** %5, align 8
  %14 = load %struct.snddev_info*, %struct.snddev_info** %4, align 8
  %15 = call i32 @PCM_LOCK(%struct.snddev_info* %14)
  %16 = load %struct.snddev_info*, %struct.snddev_info** %4, align 8
  %17 = load %struct.pcm_channel*, %struct.pcm_channel** %5, align 8
  %18 = call i32 @pcm_chn_remove(%struct.snddev_info* %16, %struct.pcm_channel* %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.snddev_info*, %struct.snddev_info** %4, align 8
  %20 = call i32 @PCM_UNLOCK(%struct.snddev_info* %19)
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %2, align 4
  br label %28

25:                                               ; preds = %1
  %26 = load %struct.pcm_channel*, %struct.pcm_channel** %5, align 8
  %27 = call i32 @pcm_chn_destroy(%struct.pcm_channel* %26)
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %25, %23
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local %struct.snddev_info* @device_get_softc(i32) #1

declare dso_local i32 @PCM_BUSYASSERT(%struct.snddev_info*) #1

declare dso_local %struct.pcm_channel* @CHN_FIRST(%struct.snddev_info*, i32) #1

declare dso_local i32 @PCM_LOCK(%struct.snddev_info*) #1

declare dso_local i32 @pcm_chn_remove(%struct.snddev_info*, %struct.pcm_channel*) #1

declare dso_local i32 @PCM_UNLOCK(%struct.snddev_info*) #1

declare dso_local i32 @pcm_chn_destroy(%struct.pcm_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
