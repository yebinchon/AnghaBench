; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_channel.c_chn_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_channel.c_chn_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcm_channel = type { i32, i32, i32, i32, i32, i64, i64, i64 }

@CHN_F_RESET = common dso_local global i32 0, align 4
@SD_F_BITPERFECT = common dso_local global i32 0, align 4
@CHN_F_BITPERFECT = common dso_local global i32 0, align 4
@chn_latency = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chn_reset(%struct.pcm_channel* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.pcm_channel*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.pcm_channel* %0, %struct.pcm_channel** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %9 = call i32 @CHN_LOCKASSERT(%struct.pcm_channel* %8)
  %10 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %11 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %10, i32 0, i32 7
  store i64 0, i64* %11, align 8
  %12 = load i32, i32* @CHN_F_RESET, align 4
  %13 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %14 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %15, %12
  store i32 %16, i32* %14, align 8
  %17 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %18 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %17, i32 0, i32 6
  store i64 0, i64* %18, align 8
  %19 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %20 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %22 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %21, i32 0, i32 5
  store i64 0, i64* %22, align 8
  %23 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %24 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @pcm_getflags(i32 %25)
  %27 = load i32, i32* @SD_F_BITPERFECT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i32, i32* @CHN_F_BITPERFECT, align 4
  br label %33

32:                                               ; preds = %3
  br label %33

33:                                               ; preds = %32, %30
  %34 = phi i32 [ %31, %30 ], [ 0, %32 ]
  %35 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %36 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 8
  %39 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %40 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %43 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @CHANNEL_RESET(i32 %41, i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %33
  %49 = load i64, i64* %5, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load i64, i64* %6, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %56 = load i64, i64* %5, align 8
  %57 = load i64, i64* %6, align 8
  %58 = call i32 @chn_setparam(%struct.pcm_channel* %55, i64 %56, i64 %57)
  store i32 %58, i32* %7, align 4
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %59

59:                                               ; preds = %54, %51, %48, %33
  %60 = load i32, i32* %7, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = load i64, i64* %5, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %67 = load i64, i64* %5, align 8
  %68 = call i32 @chn_setformat(%struct.pcm_channel* %66, i64 %67)
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %65, %62, %59
  %70 = load i32, i32* %7, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = load i64, i64* %6, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %77 = load i64, i64* %6, align 8
  %78 = call i32 @chn_setspeed(%struct.pcm_channel* %76, i64 %77)
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %75, %72, %69
  %80 = load i32, i32* %7, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %84 = load i32, i32* @chn_latency, align 4
  %85 = call i32 @chn_setlatency(%struct.pcm_channel* %83, i32 %84)
  store i32 %85, i32* %7, align 4
  br label %86

86:                                               ; preds = %82, %79
  %87 = load i32, i32* %7, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %86
  %90 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %91 = call i32 @chn_resetbuf(%struct.pcm_channel* %90)
  %92 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %93 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %96 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @CHANNEL_RESETDONE(i32 %94, i32 %97)
  store i32 %98, i32* %7, align 4
  br label %99

99:                                               ; preds = %89, %86
  %100 = load i32, i32* %7, align 4
  ret i32 %100
}

declare dso_local i32 @CHN_LOCKASSERT(%struct.pcm_channel*) #1

declare dso_local i32 @pcm_getflags(i32) #1

declare dso_local i32 @CHANNEL_RESET(i32, i32) #1

declare dso_local i32 @chn_setparam(%struct.pcm_channel*, i64, i64) #1

declare dso_local i32 @chn_setformat(%struct.pcm_channel*, i64) #1

declare dso_local i32 @chn_setspeed(%struct.pcm_channel*, i64) #1

declare dso_local i32 @chn_setlatency(%struct.pcm_channel*, i32) #1

declare dso_local i32 @chn_resetbuf(%struct.pcm_channel*) #1

declare dso_local i32 @CHANNEL_RESETDONE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
