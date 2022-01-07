; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_channel.c_chn_rdfeed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_channel.c_chn_rdfeed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcm_channel = type { i32, i32, i32, %struct.snd_dbuf*, %struct.snd_dbuf* }
%struct.snd_dbuf = type { i32 }

@CHN_F_MMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcm_channel*)* @chn_rdfeed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chn_rdfeed(%struct.pcm_channel* %0) #0 {
  %2 = alloca %struct.pcm_channel*, align 8
  %3 = alloca %struct.snd_dbuf*, align 8
  %4 = alloca %struct.snd_dbuf*, align 8
  %5 = alloca i32, align 4
  store %struct.pcm_channel* %0, %struct.pcm_channel** %2, align 8
  %6 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %7 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %6, i32 0, i32 4
  %8 = load %struct.snd_dbuf*, %struct.snd_dbuf** %7, align 8
  store %struct.snd_dbuf* %8, %struct.snd_dbuf** %3, align 8
  %9 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %10 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %9, i32 0, i32 3
  %11 = load %struct.snd_dbuf*, %struct.snd_dbuf** %10, align 8
  store %struct.snd_dbuf* %11, %struct.snd_dbuf** %4, align 8
  %12 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %13 = call i32 @CHN_LOCKASSERT(%struct.pcm_channel* %12)
  %14 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %15 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @CHN_F_MMAP, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.snd_dbuf*, %struct.snd_dbuf** %4, align 8
  %22 = load %struct.snd_dbuf*, %struct.snd_dbuf** %4, align 8
  %23 = call i32 @sndbuf_getready(%struct.snd_dbuf* %22)
  %24 = call i32 @sndbuf_dispose(%struct.snd_dbuf* %21, i32* null, i32 %23)
  br label %25

25:                                               ; preds = %20, %1
  %26 = load %struct.snd_dbuf*, %struct.snd_dbuf** %4, align 8
  %27 = call i32 @sndbuf_getfree(%struct.snd_dbuf* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ugt i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = load %struct.snd_dbuf*, %struct.snd_dbuf** %3, align 8
  %32 = load %struct.snd_dbuf*, %struct.snd_dbuf** %4, align 8
  %33 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %34 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %35 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @sndbuf_feed(%struct.snd_dbuf* %31, %struct.snd_dbuf* %32, %struct.pcm_channel* %33, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %30, %25
  %40 = load %struct.snd_dbuf*, %struct.snd_dbuf** %3, align 8
  %41 = call i32 @sndbuf_getready(%struct.snd_dbuf* %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ugt i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %46 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  %49 = load %struct.snd_dbuf*, %struct.snd_dbuf** %3, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @sndbuf_dispose(%struct.snd_dbuf* %49, i32* null, i32 %50)
  br label %52

52:                                               ; preds = %44, %39
  %53 = load %struct.snd_dbuf*, %struct.snd_dbuf** %4, align 8
  %54 = call i32 @sndbuf_getready(%struct.snd_dbuf* %53)
  %55 = icmp ugt i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %58 = call i32 @chn_wakeup(%struct.pcm_channel* %57)
  br label %59

59:                                               ; preds = %56, %52
  ret void
}

declare dso_local i32 @CHN_LOCKASSERT(%struct.pcm_channel*) #1

declare dso_local i32 @sndbuf_dispose(%struct.snd_dbuf*, i32*, i32) #1

declare dso_local i32 @sndbuf_getready(%struct.snd_dbuf*) #1

declare dso_local i32 @sndbuf_getfree(%struct.snd_dbuf*) #1

declare dso_local i32 @sndbuf_feed(%struct.snd_dbuf*, %struct.snd_dbuf*, %struct.pcm_channel*, i32, i32) #1

declare dso_local i32 @chn_wakeup(%struct.pcm_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
