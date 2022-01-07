; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_channel.c_chn_setparam.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_channel.c_chn_setparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcm_channel = type { i32, i32, i32, i32, i32 }
%struct.pcmchan_caps = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@feeder_rate_round = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chn_setparam(%struct.pcm_channel* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pcm_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pcmchan_caps*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pcm_channel* %0, %struct.pcm_channel** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.pcm_channel*, %struct.pcm_channel** %5, align 8
  %13 = call i32 @CHN_LOCKASSERT(%struct.pcm_channel* %12)
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %23, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = load %struct.pcm_channel*, %struct.pcm_channel** %5, align 8
  %21 = call i64 @CHN_STARTED(%struct.pcm_channel* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19, %16, %3
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %4, align 4
  br label %104

25:                                               ; preds = %19
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.pcm_channel*, %struct.pcm_channel** %5, align 8
  %28 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.pcm_channel*, %struct.pcm_channel** %5, align 8
  %31 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.pcm_channel*, %struct.pcm_channel** %5, align 8
  %33 = call %struct.pcmchan_caps* @chn_getcaps(%struct.pcm_channel* %32)
  store %struct.pcmchan_caps* %33, %struct.pcmchan_caps** %8, align 8
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.pcmchan_caps*, %struct.pcmchan_caps** %8, align 8
  %37 = getelementptr inbounds %struct.pcmchan_caps, %struct.pcmchan_caps* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.pcmchan_caps*, %struct.pcmchan_caps** %8, align 8
  %40 = getelementptr inbounds %struct.pcmchan_caps, %struct.pcmchan_caps* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @RANGE(i32 %35, i32 %38, i32 %41)
  %43 = load %struct.pcm_channel*, %struct.pcm_channel** %5, align 8
  %44 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.pcm_channel*, %struct.pcm_channel** %5, align 8
  %47 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.pcm_channel*, %struct.pcm_channel** %5, align 8
  %50 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @CHANNEL_SETSPEED(i32 %48, i32 %51, i32 %52)
  %54 = call i32 @sndbuf_setspd(i32 %45, i32 %53)
  %55 = load %struct.pcm_channel*, %struct.pcm_channel** %5, align 8
  %56 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @sndbuf_getspd(i32 %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %25
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %7, align 4
  %65 = sub nsw i32 %63, %64
  br label %70

66:                                               ; preds = %25
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %9, align 4
  %69 = sub nsw i32 %67, %68
  br label %70

70:                                               ; preds = %66, %62
  %71 = phi i32 [ %65, %62 ], [ %69, %66 ]
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @feeder_rate_round, align 4
  %74 = icmp sle i32 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.pcm_channel*, %struct.pcm_channel** %5, align 8
  %78 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  br label %79

79:                                               ; preds = %75, %70
  %80 = load %struct.pcm_channel*, %struct.pcm_channel** %5, align 8
  %81 = call i32 @feeder_chain(%struct.pcm_channel* %80)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %96

84:                                               ; preds = %79
  %85 = load %struct.pcm_channel*, %struct.pcm_channel** %5, align 8
  %86 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.pcm_channel*, %struct.pcm_channel** %5, align 8
  %89 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.pcm_channel*, %struct.pcm_channel** %5, align 8
  %92 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @sndbuf_getfmt(i32 %93)
  %95 = call i32 @CHANNEL_SETFORMAT(i32 %87, i32 %90, i32 %94)
  store i32 %95, i32* %11, align 4
  br label %96

96:                                               ; preds = %84, %79
  %97 = load i32, i32* %11, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load %struct.pcm_channel*, %struct.pcm_channel** %5, align 8
  %101 = call i32 @chn_resizebuf(%struct.pcm_channel* %100, i32 -2, i32 0, i32 0)
  store i32 %101, i32* %11, align 4
  br label %102

102:                                              ; preds = %99, %96
  %103 = load i32, i32* %11, align 4
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %102, %23
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i32 @CHN_LOCKASSERT(%struct.pcm_channel*) #1

declare dso_local i64 @CHN_STARTED(%struct.pcm_channel*) #1

declare dso_local %struct.pcmchan_caps* @chn_getcaps(%struct.pcm_channel*) #1

declare dso_local i32 @RANGE(i32, i32, i32) #1

declare dso_local i32 @sndbuf_setspd(i32, i32) #1

declare dso_local i32 @CHANNEL_SETSPEED(i32, i32, i32) #1

declare dso_local i32 @sndbuf_getspd(i32) #1

declare dso_local i32 @feeder_chain(%struct.pcm_channel*) #1

declare dso_local i32 @CHANNEL_SETFORMAT(i32, i32, i32) #1

declare dso_local i32 @sndbuf_getfmt(i32) #1

declare dso_local i32 @chn_resizebuf(%struct.pcm_channel*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
