; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_channel.c_chn_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_channel.c_chn_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcm_channel = type { i32, %struct.snd_dbuf* }
%struct.snd_dbuf = type { i32 }
%struct.thread = type { i32 }

@CHN_F_MMAP = common dso_local global i32 0, align 4
@CHN_F_TRIGGERED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chn_poll(%struct.pcm_channel* %0, i32 %1, %struct.thread* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pcm_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.snd_dbuf*, align 8
  %9 = alloca i32, align 4
  store %struct.pcm_channel* %0, %struct.pcm_channel** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.thread* %2, %struct.thread** %7, align 8
  %10 = load %struct.pcm_channel*, %struct.pcm_channel** %5, align 8
  %11 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %10, i32 0, i32 1
  %12 = load %struct.snd_dbuf*, %struct.snd_dbuf** %11, align 8
  store %struct.snd_dbuf* %12, %struct.snd_dbuf** %8, align 8
  %13 = load %struct.pcm_channel*, %struct.pcm_channel** %5, align 8
  %14 = call i32 @CHN_LOCKASSERT(%struct.pcm_channel* %13)
  %15 = load %struct.pcm_channel*, %struct.pcm_channel** %5, align 8
  %16 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @CHN_F_MMAP, align 4
  %19 = load i32, i32* @CHN_F_TRIGGERED, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %17, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %3
  %24 = load %struct.pcm_channel*, %struct.pcm_channel** %5, align 8
  %25 = call i32 @chn_start(%struct.pcm_channel* %24, i32 1)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %45

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %29, %3
  store i32 0, i32* %9, align 4
  %31 = load %struct.pcm_channel*, %struct.pcm_channel** %5, align 8
  %32 = call i64 @chn_polltrigger(%struct.pcm_channel* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load %struct.pcm_channel*, %struct.pcm_channel** %5, align 8
  %36 = call i32 @chn_pollreset(%struct.pcm_channel* %35)
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %9, align 4
  br label %43

38:                                               ; preds = %30
  %39 = load %struct.thread*, %struct.thread** %7, align 8
  %40 = load %struct.snd_dbuf*, %struct.snd_dbuf** %8, align 8
  %41 = call i32 @sndbuf_getsel(%struct.snd_dbuf* %40)
  %42 = call i32 @selrecord(%struct.thread* %39, i32 %41)
  br label %43

43:                                               ; preds = %38, %34
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %43, %28
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @CHN_LOCKASSERT(%struct.pcm_channel*) #1

declare dso_local i32 @chn_start(%struct.pcm_channel*, i32) #1

declare dso_local i64 @chn_polltrigger(%struct.pcm_channel*) #1

declare dso_local i32 @chn_pollreset(%struct.pcm_channel*) #1

declare dso_local i32 @selrecord(%struct.thread*, i32) #1

declare dso_local i32 @sndbuf_getsel(%struct.snd_dbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
