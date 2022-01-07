; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_sound.c_pcm_chnrelease.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_sound.c_pcm_chnrelease.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcm_channel = type { i32, i32, i32, i32 }

@CHN_F_BUSY = common dso_local global i32 0, align 4
@CHN_COMM_UNUSED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcm_chnrelease(%struct.pcm_channel* %0) #0 {
  %2 = alloca %struct.pcm_channel*, align 8
  store %struct.pcm_channel* %0, %struct.pcm_channel** %2, align 8
  %3 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %4 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @PCM_BUSYASSERT(i32 %5)
  %7 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %8 = call i32 @CHN_LOCKASSERT(%struct.pcm_channel* %7)
  %9 = load i32, i32* @CHN_F_BUSY, align 4
  %10 = xor i32 %9, -1
  %11 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %12 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, %10
  store i32 %14, i32* %12, align 4
  %15 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %16 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %15, i32 0, i32 0
  store i32 -1, i32* %16, align 4
  %17 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %18 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @CHN_COMM_UNUSED, align 4
  %21 = call i32 @strlcpy(i32 %19, i32 %20, i32 4)
  %22 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %23 = call i32 @CHN_UNLOCK(%struct.pcm_channel* %22)
  ret i32 0
}

declare dso_local i32 @PCM_BUSYASSERT(i32) #1

declare dso_local i32 @CHN_LOCKASSERT(%struct.pcm_channel*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @CHN_UNLOCK(%struct.pcm_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
