; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_channel.c_chn_resetbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_channel.c_chn_resetbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcm_channel = type { i64, %struct.snd_dbuf*, %struct.snd_dbuf* }
%struct.snd_dbuf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @chn_resetbuf(%struct.pcm_channel* %0) #0 {
  %2 = alloca %struct.pcm_channel*, align 8
  %3 = alloca %struct.snd_dbuf*, align 8
  %4 = alloca %struct.snd_dbuf*, align 8
  store %struct.pcm_channel* %0, %struct.pcm_channel** %2, align 8
  %5 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %6 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %5, i32 0, i32 2
  %7 = load %struct.snd_dbuf*, %struct.snd_dbuf** %6, align 8
  store %struct.snd_dbuf* %7, %struct.snd_dbuf** %3, align 8
  %8 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %9 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %8, i32 0, i32 1
  %10 = load %struct.snd_dbuf*, %struct.snd_dbuf** %9, align 8
  store %struct.snd_dbuf* %10, %struct.snd_dbuf** %4, align 8
  %11 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %12 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %11, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = load %struct.snd_dbuf*, %struct.snd_dbuf** %3, align 8
  %14 = call i32 @sndbuf_reset(%struct.snd_dbuf* %13)
  %15 = load %struct.snd_dbuf*, %struct.snd_dbuf** %4, align 8
  %16 = call i32 @sndbuf_reset(%struct.snd_dbuf* %15)
  ret void
}

declare dso_local i32 @sndbuf_reset(%struct.snd_dbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
