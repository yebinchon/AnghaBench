; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_channel.c_chn_wrfeed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_channel.c_chn_wrfeed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcm_channel = type { i32, i32, i32, %struct.snd_dbuf*, %struct.snd_dbuf* }
%struct.snd_dbuf = type { i32 }

@CHN_F_MMAP = common dso_local global i32 0, align 4
@CHN_F_CLOSING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcm_channel*)* @chn_wrfeed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chn_wrfeed(%struct.pcm_channel* %0) #0 {
  %2 = alloca %struct.pcm_channel*, align 8
  %3 = alloca %struct.snd_dbuf*, align 8
  %4 = alloca %struct.snd_dbuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pcm_channel* %0, %struct.pcm_channel** %2, align 8
  %8 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %9 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %8, i32 0, i32 4
  %10 = load %struct.snd_dbuf*, %struct.snd_dbuf** %9, align 8
  store %struct.snd_dbuf* %10, %struct.snd_dbuf** %3, align 8
  %11 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %12 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %11, i32 0, i32 3
  %13 = load %struct.snd_dbuf*, %struct.snd_dbuf** %12, align 8
  store %struct.snd_dbuf* %13, %struct.snd_dbuf** %4, align 8
  %14 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %15 = call i32 @CHN_LOCKASSERT(%struct.pcm_channel* %14)
  %16 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %17 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @CHN_F_MMAP, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %1
  %23 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %24 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @CHN_F_CLOSING, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %22
  %30 = load %struct.snd_dbuf*, %struct.snd_dbuf** %4, align 8
  %31 = load %struct.snd_dbuf*, %struct.snd_dbuf** %4, align 8
  %32 = call i32 @sndbuf_getfree(%struct.snd_dbuf* %31)
  %33 = call i32 @sndbuf_acquire(%struct.snd_dbuf* %30, i32* null, i32 %32)
  br label %34

34:                                               ; preds = %29, %22, %1
  %35 = load %struct.snd_dbuf*, %struct.snd_dbuf** %3, align 8
  %36 = call i32 @sndbuf_getfree(%struct.snd_dbuf* %35)
  store i32 %36, i32* %7, align 4
  %37 = load %struct.snd_dbuf*, %struct.snd_dbuf** %3, align 8
  %38 = call i32 @sndbuf_getsize(%struct.snd_dbuf* %37)
  %39 = load %struct.snd_dbuf*, %struct.snd_dbuf** %4, align 8
  %40 = call i32 @sndbuf_getsize(%struct.snd_dbuf* %39)
  %41 = load %struct.snd_dbuf*, %struct.snd_dbuf** %4, align 8
  %42 = load %struct.snd_dbuf*, %struct.snd_dbuf** %3, align 8
  %43 = call i64 @sndbuf_xbytes(i32 %40, %struct.snd_dbuf* %41, %struct.snd_dbuf* %42)
  %44 = load %struct.snd_dbuf*, %struct.snd_dbuf** %3, align 8
  %45 = call i32 @sndbuf_getready(%struct.snd_dbuf* %44)
  %46 = zext i32 %45 to i64
  %47 = sub nsw i64 %43, %46
  %48 = call i32 @imax(i32 0, i64 %47)
  %49 = call i32 @min(i32 %38, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @min(i32 %50, i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp ugt i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %34
  %56 = load %struct.snd_dbuf*, %struct.snd_dbuf** %4, align 8
  %57 = load %struct.snd_dbuf*, %struct.snd_dbuf** %3, align 8
  %58 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %59 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %60 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @sndbuf_feed(%struct.snd_dbuf* %56, %struct.snd_dbuf* %57, %struct.pcm_channel* %58, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %55, %34
  %65 = load %struct.snd_dbuf*, %struct.snd_dbuf** %3, align 8
  %66 = call i32 @sndbuf_getready(%struct.snd_dbuf* %65)
  %67 = load i32, i32* %6, align 4
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %71 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %69, %64
  %75 = load %struct.snd_dbuf*, %struct.snd_dbuf** %3, align 8
  %76 = call i32 @sndbuf_getfree(%struct.snd_dbuf* %75)
  %77 = load i32, i32* %7, align 4
  %78 = icmp ult i32 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %81 = call i32 @chn_wakeup(%struct.pcm_channel* %80)
  br label %82

82:                                               ; preds = %79, %74
  ret void
}

declare dso_local i32 @CHN_LOCKASSERT(%struct.pcm_channel*) #1

declare dso_local i32 @sndbuf_acquire(%struct.snd_dbuf*, i32*, i32) #1

declare dso_local i32 @sndbuf_getfree(%struct.snd_dbuf*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @sndbuf_getsize(%struct.snd_dbuf*) #1

declare dso_local i32 @imax(i32, i64) #1

declare dso_local i64 @sndbuf_xbytes(i32, %struct.snd_dbuf*, %struct.snd_dbuf*) #1

declare dso_local i32 @sndbuf_getready(%struct.snd_dbuf*) #1

declare dso_local i32 @sndbuf_feed(%struct.snd_dbuf*, %struct.snd_dbuf*, %struct.pcm_channel*, i32, i32) #1

declare dso_local i32 @chn_wakeup(%struct.pcm_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
