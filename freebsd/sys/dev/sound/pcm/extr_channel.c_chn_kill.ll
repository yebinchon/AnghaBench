; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_channel.c_chn_kill.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_channel.c_chn_kill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcm_channel = type { i32, i32, i32, %struct.snd_dbuf*, %struct.snd_dbuf* }
%struct.snd_dbuf = type { i32 }

@PCMTRIG_ABORT = common dso_local global i32 0, align 4
@CHN_F_DEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chn_kill(%struct.pcm_channel* %0) #0 {
  %2 = alloca %struct.pcm_channel*, align 8
  %3 = alloca %struct.snd_dbuf*, align 8
  %4 = alloca %struct.snd_dbuf*, align 8
  store %struct.pcm_channel* %0, %struct.pcm_channel** %2, align 8
  %5 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %6 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %5, i32 0, i32 4
  %7 = load %struct.snd_dbuf*, %struct.snd_dbuf** %6, align 8
  store %struct.snd_dbuf* %7, %struct.snd_dbuf** %3, align 8
  %8 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %9 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %8, i32 0, i32 3
  %10 = load %struct.snd_dbuf*, %struct.snd_dbuf** %9, align 8
  store %struct.snd_dbuf* %10, %struct.snd_dbuf** %4, align 8
  %11 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %12 = call i64 @CHN_STARTED(%struct.pcm_channel* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %16 = call i32 @CHN_LOCK(%struct.pcm_channel* %15)
  %17 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %18 = load i32, i32* @PCMTRIG_ABORT, align 4
  %19 = call i32 @chn_trigger(%struct.pcm_channel* %17, i32 %18)
  %20 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %21 = call i32 @CHN_UNLOCK(%struct.pcm_channel* %20)
  br label %22

22:                                               ; preds = %14, %1
  br label %23

23:                                               ; preds = %27, %22
  %24 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %25 = call i64 @chn_removefeeder(%struct.pcm_channel* %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %23

28:                                               ; preds = %23
  %29 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %30 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %33 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @CHANNEL_FREE(i32 %31, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = load %struct.snd_dbuf*, %struct.snd_dbuf** %3, align 8
  %39 = call i32 @sndbuf_free(%struct.snd_dbuf* %38)
  br label %40

40:                                               ; preds = %37, %28
  %41 = load %struct.snd_dbuf*, %struct.snd_dbuf** %4, align 8
  %42 = call i32 @sndbuf_destroy(%struct.snd_dbuf* %41)
  %43 = load %struct.snd_dbuf*, %struct.snd_dbuf** %3, align 8
  %44 = call i32 @sndbuf_destroy(%struct.snd_dbuf* %43)
  %45 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %46 = call i32 @CHN_LOCK(%struct.pcm_channel* %45)
  %47 = load i32, i32* @CHN_F_DEAD, align 4
  %48 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %49 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  %52 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %53 = call i32 @chn_lockdestroy(%struct.pcm_channel* %52)
  ret i32 0
}

declare dso_local i64 @CHN_STARTED(%struct.pcm_channel*) #1

declare dso_local i32 @CHN_LOCK(%struct.pcm_channel*) #1

declare dso_local i32 @chn_trigger(%struct.pcm_channel*, i32) #1

declare dso_local i32 @CHN_UNLOCK(%struct.pcm_channel*) #1

declare dso_local i64 @chn_removefeeder(%struct.pcm_channel*) #1

declare dso_local i64 @CHANNEL_FREE(i32, i32) #1

declare dso_local i32 @sndbuf_free(%struct.snd_dbuf*) #1

declare dso_local i32 @sndbuf_destroy(%struct.snd_dbuf*) #1

declare dso_local i32 @chn_lockdestroy(%struct.pcm_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
