; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_channel.c_chn_lockdestroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_channel.c_chn_lockdestroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcm_channel = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcm_channel*)* @chn_lockdestroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chn_lockdestroy(%struct.pcm_channel* %0) #0 {
  %2 = alloca %struct.pcm_channel*, align 8
  store %struct.pcm_channel* %0, %struct.pcm_channel** %2, align 8
  %3 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %4 = call i32 @CHN_LOCKASSERT(%struct.pcm_channel* %3)
  %5 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %6 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %5, i32 0, i32 2
  %7 = call i32 @CHN_BROADCAST(i32* %6)
  %8 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %9 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %8, i32 0, i32 1
  %10 = call i32 @CHN_BROADCAST(i32* %9)
  %11 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %12 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %11, i32 0, i32 2
  %13 = call i32 @cv_destroy(i32* %12)
  %14 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %15 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %14, i32 0, i32 1
  %16 = call i32 @cv_destroy(i32* %15)
  %17 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %18 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @snd_mtxfree(i32 %19)
  ret void
}

declare dso_local i32 @CHN_LOCKASSERT(%struct.pcm_channel*) #1

declare dso_local i32 @CHN_BROADCAST(i32*) #1

declare dso_local i32 @cv_destroy(i32*) #1

declare dso_local i32 @snd_mtxfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
