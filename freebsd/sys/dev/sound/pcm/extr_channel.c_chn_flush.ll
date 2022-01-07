; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_channel.c_chn_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_channel.c_chn_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcm_channel = type { i64, i32, %struct.snd_dbuf* }
%struct.snd_dbuf = type { i32 }

@PCMDIR_PLAY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"chn_flush on bad channel\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"chn_flush: c->flags 0x%08x\0A\00", align 1
@CHN_F_CLOSING = common dso_local global i32 0, align 4
@CHN_F_TRIGGERED = common dso_local global i32 0, align 4
@PCMTRIG_ABORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chn_flush(%struct.pcm_channel* %0) #0 {
  %2 = alloca %struct.pcm_channel*, align 8
  %3 = alloca %struct.snd_dbuf*, align 8
  store %struct.pcm_channel* %0, %struct.pcm_channel** %2, align 8
  %4 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %5 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %4, i32 0, i32 2
  %6 = load %struct.snd_dbuf*, %struct.snd_dbuf** %5, align 8
  store %struct.snd_dbuf* %6, %struct.snd_dbuf** %3, align 8
  %7 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %8 = call i32 @CHN_LOCKASSERT(%struct.pcm_channel* %7)
  %9 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %10 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PCMDIR_PLAY, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @KASSERT(i32 %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %17 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = call i32 @DEB(i32 %19)
  %21 = load i32, i32* @CHN_F_CLOSING, align 4
  %22 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %23 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 8
  %26 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %27 = call i32 @chn_sync(%struct.pcm_channel* %26, i32 0)
  %28 = load i32, i32* @CHN_F_TRIGGERED, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %31 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %35 = load i32, i32* @PCMTRIG_ABORT, align 4
  %36 = call i32 @chn_trigger(%struct.pcm_channel* %34, i32 %35)
  %37 = load %struct.snd_dbuf*, %struct.snd_dbuf** %3, align 8
  %38 = call i32 @sndbuf_setrun(%struct.snd_dbuf* %37, i32 0)
  %39 = load i32, i32* @CHN_F_CLOSING, align 4
  %40 = xor i32 %39, -1
  %41 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %42 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 8
  ret i32 0
}

declare dso_local i32 @CHN_LOCKASSERT(%struct.pcm_channel*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @DEB(i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @chn_sync(%struct.pcm_channel*, i32) #1

declare dso_local i32 @chn_trigger(%struct.pcm_channel*, i32) #1

declare dso_local i32 @sndbuf_setrun(%struct.snd_dbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
