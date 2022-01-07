; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_channel.c_chn_dmaupdate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_channel.c_chn_dmaupdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcm_channel = type { i64, i32, %struct.snd_dbuf* }
%struct.snd_dbuf = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"bufsize == 0\00", align 1
@PCMDIR_PLAY = common dso_local global i64 0, align 8
@snd_verbose = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [94 x i8] c"WARNING: %s DMA completion too fast/slow ! hwptr=%u, old=%u delta=%u amt=%u ready=%u free=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcm_channel*)* @chn_dmaupdate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chn_dmaupdate(%struct.pcm_channel* %0) #0 {
  %2 = alloca %struct.pcm_channel*, align 8
  %3 = alloca %struct.snd_dbuf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pcm_channel* %0, %struct.pcm_channel** %2, align 8
  %8 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %9 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %8, i32 0, i32 2
  %10 = load %struct.snd_dbuf*, %struct.snd_dbuf** %9, align 8
  store %struct.snd_dbuf* %10, %struct.snd_dbuf** %3, align 8
  %11 = load %struct.snd_dbuf*, %struct.snd_dbuf** %3, align 8
  %12 = call i32 @sndbuf_getsize(%struct.snd_dbuf* %11)
  %13 = icmp ugt i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @KASSERT(i32 %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %17 = call i32 @CHN_LOCKASSERT(%struct.pcm_channel* %16)
  %18 = load %struct.snd_dbuf*, %struct.snd_dbuf** %3, align 8
  %19 = call i32 @sndbuf_gethwptr(%struct.snd_dbuf* %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %21 = call i32 @chn_getptr(%struct.pcm_channel* %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.snd_dbuf*, %struct.snd_dbuf** %3, align 8
  %23 = call i32 @sndbuf_getsize(%struct.snd_dbuf* %22)
  %24 = load i32, i32* %6, align 4
  %25 = add i32 %23, %24
  %26 = load i32, i32* %5, align 4
  %27 = sub i32 %25, %26
  %28 = load %struct.snd_dbuf*, %struct.snd_dbuf** %3, align 8
  %29 = call i32 @sndbuf_getsize(%struct.snd_dbuf* %28)
  %30 = urem i32 %27, %29
  store i32 %30, i32* %4, align 4
  %31 = load %struct.snd_dbuf*, %struct.snd_dbuf** %3, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @sndbuf_sethwptr(%struct.snd_dbuf* %31, i32 %32)
  %34 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %35 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PCMDIR_PLAY, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %57

39:                                               ; preds = %1
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.snd_dbuf*, %struct.snd_dbuf** %3, align 8
  %42 = call i32 @sndbuf_getready(%struct.snd_dbuf* %41)
  %43 = call i32 @min(i32 %40, i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.snd_dbuf*, %struct.snd_dbuf** %3, align 8
  %46 = call i32 @sndbuf_getalign(%struct.snd_dbuf* %45)
  %47 = urem i32 %44, %46
  %48 = load i32, i32* %7, align 4
  %49 = sub i32 %48, %47
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ugt i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %39
  %53 = load %struct.snd_dbuf*, %struct.snd_dbuf** %3, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @sndbuf_dispose(%struct.snd_dbuf* %53, i32* null, i32 %54)
  br label %56

56:                                               ; preds = %52, %39
  br label %75

57:                                               ; preds = %1
  %58 = load i32, i32* %4, align 4
  %59 = load %struct.snd_dbuf*, %struct.snd_dbuf** %3, align 8
  %60 = call i32 @sndbuf_getfree(%struct.snd_dbuf* %59)
  %61 = call i32 @min(i32 %58, i32 %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.snd_dbuf*, %struct.snd_dbuf** %3, align 8
  %64 = call i32 @sndbuf_getalign(%struct.snd_dbuf* %63)
  %65 = urem i32 %62, %64
  %66 = load i32, i32* %7, align 4
  %67 = sub i32 %66, %65
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ugt i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %57
  %71 = load %struct.snd_dbuf*, %struct.snd_dbuf** %3, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @sndbuf_acquire(%struct.snd_dbuf* %71, i32* null, i32 %72)
  br label %74

74:                                               ; preds = %70, %57
  br label %75

75:                                               ; preds = %74, %56
  %76 = load i32, i32* @snd_verbose, align 4
  %77 = icmp sgt i32 %76, 3
  br i1 %77, label %78, label %100

78:                                               ; preds = %75
  %79 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %80 = call i64 @CHN_STARTED(%struct.pcm_channel* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %100

82:                                               ; preds = %78
  %83 = load i32, i32* %4, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %100

85:                                               ; preds = %82
  %86 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %87 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %90 = call i32 @CHN_DIRSTR(%struct.pcm_channel* %89)
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* %7, align 4
  %95 = load %struct.snd_dbuf*, %struct.snd_dbuf** %3, align 8
  %96 = call i32 @sndbuf_getready(%struct.snd_dbuf* %95)
  %97 = load %struct.snd_dbuf*, %struct.snd_dbuf** %3, align 8
  %98 = call i32 @sndbuf_getfree(%struct.snd_dbuf* %97)
  %99 = call i32 @device_printf(i32 %88, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i64 0, i64 0), i32 %90, i32 %91, i32 %92, i32 %93, i32 %94, i32 %96, i32 %98)
  br label %100

100:                                              ; preds = %85, %82, %78, %75
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @sndbuf_getsize(%struct.snd_dbuf*) #1

declare dso_local i32 @CHN_LOCKASSERT(%struct.pcm_channel*) #1

declare dso_local i32 @sndbuf_gethwptr(%struct.snd_dbuf*) #1

declare dso_local i32 @chn_getptr(%struct.pcm_channel*) #1

declare dso_local i32 @sndbuf_sethwptr(%struct.snd_dbuf*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @sndbuf_getready(%struct.snd_dbuf*) #1

declare dso_local i32 @sndbuf_getalign(%struct.snd_dbuf*) #1

declare dso_local i32 @sndbuf_dispose(%struct.snd_dbuf*, i32*, i32) #1

declare dso_local i32 @sndbuf_getfree(%struct.snd_dbuf*) #1

declare dso_local i32 @sndbuf_acquire(%struct.snd_dbuf*, i32*, i32) #1

declare dso_local i64 @CHN_STARTED(%struct.pcm_channel*) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @CHN_DIRSTR(%struct.pcm_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
