; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_buffer.c_sndbuf_feed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_buffer.c_sndbuf_feed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dbuf = type { i32 }
%struct.pcm_channel = type { i32 }
%struct.pcm_feeder = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"can't feed 0 bytes\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SND_FXDIV_MAX = common dso_local global i32 0, align 4
@snd_feeder_maxcycle = common dso_local global i32 0, align 4
@snd_feeder_maxfeed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sndbuf_feed(%struct.snd_dbuf* %0, %struct.snd_dbuf* %1, %struct.pcm_channel* %2, %struct.pcm_feeder* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_dbuf*, align 8
  %8 = alloca %struct.snd_dbuf*, align 8
  %9 = alloca %struct.pcm_channel*, align 8
  %10 = alloca %struct.pcm_feeder*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_dbuf* %0, %struct.snd_dbuf** %7, align 8
  store %struct.snd_dbuf* %1, %struct.snd_dbuf** %8, align 8
  store %struct.pcm_channel* %2, %struct.pcm_channel** %9, align 8
  store %struct.pcm_feeder* %3, %struct.pcm_feeder** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = icmp ugt i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @KASSERT(i32 %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.snd_dbuf*, %struct.snd_dbuf** %8, align 8
  %19 = call i32 @sndbuf_getfree(%struct.snd_dbuf* %18)
  %20 = load i32, i32* %11, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %6, align 4
  br label %57

24:                                               ; preds = %5
  %25 = load i32, i32* @SND_FXDIV_MAX, align 4
  %26 = load %struct.snd_dbuf*, %struct.snd_dbuf** %8, align 8
  %27 = call i32 @sndbuf_getalign(%struct.snd_dbuf* %26)
  %28 = call i32 @SND_FXROUND(i32 %25, i32 %27)
  store i32 %28, i32* %13, align 4
  br label %29

29:                                               ; preds = %53, %24
  %30 = load %struct.pcm_feeder*, %struct.pcm_feeder** %10, align 8
  %31 = load %struct.pcm_channel*, %struct.pcm_channel** %9, align 8
  %32 = load %struct.snd_dbuf*, %struct.snd_dbuf** %8, align 8
  %33 = getelementptr inbounds %struct.snd_dbuf, %struct.snd_dbuf* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %13, align 4
  %37 = call i32 @min(i32 %35, i32 %36)
  %38 = load %struct.snd_dbuf*, %struct.snd_dbuf** %7, align 8
  %39 = call i32 @FEEDER_FEED(%struct.pcm_feeder* %30, %struct.pcm_channel* %31, i32 %34, i32 %37, %struct.snd_dbuf* %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %29
  br label %56

43:                                               ; preds = %29
  %44 = load %struct.snd_dbuf*, %struct.snd_dbuf** %8, align 8
  %45 = load %struct.snd_dbuf*, %struct.snd_dbuf** %8, align 8
  %46 = getelementptr inbounds %struct.snd_dbuf, %struct.snd_dbuf* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @sndbuf_acquire(%struct.snd_dbuf* %44, i32 %47, i32 %48)
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %11, align 4
  %52 = sub i32 %51, %50
  store i32 %52, i32* %11, align 4
  br label %53

53:                                               ; preds = %43
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %29, label %56

56:                                               ; preds = %53, %42
  store i32 0, i32* %6, align 4
  br label %57

57:                                               ; preds = %56, %22
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @sndbuf_getfree(%struct.snd_dbuf*) #1

declare dso_local i32 @SND_FXROUND(i32, i32) #1

declare dso_local i32 @sndbuf_getalign(%struct.snd_dbuf*) #1

declare dso_local i32 @FEEDER_FEED(%struct.pcm_feeder*, %struct.pcm_channel*, i32, i32, %struct.snd_dbuf*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @sndbuf_acquire(%struct.snd_dbuf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
