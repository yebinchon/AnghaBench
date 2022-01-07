; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_dsp.c_dsp_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_dsp.c_dsp_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.thread = type { i32 }
%struct.snddev_info = type { i32 }
%struct.pcm_channel = type { i32 }

@EBADF = common dso_local global i32 0, align 4
@SD_F_PRIO_RD = common dso_local global i32 0, align 4
@SD_F_PRIO_WR = common dso_local global i32 0, align 4
@CHN_F_DEAD = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, %struct.thread*)* @dsp_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsp_poll(%struct.cdev* %0, i32 %1, %struct.thread* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.snddev_info*, align 8
  %9 = alloca %struct.pcm_channel*, align 8
  %10 = alloca %struct.pcm_channel*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.thread* %2, %struct.thread** %7, align 8
  %13 = load %struct.cdev*, %struct.cdev** %5, align 8
  %14 = call %struct.snddev_info* @dsp_get_info(%struct.cdev* %13)
  store %struct.snddev_info* %14, %struct.snddev_info** %8, align 8
  %15 = load %struct.snddev_info*, %struct.snddev_info** %8, align 8
  %16 = load %struct.cdev*, %struct.cdev** %5, align 8
  %17 = call i32 @DSP_REGISTERED(%struct.snddev_info* %15, %struct.cdev* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @EBADF, align 4
  store i32 %20, i32* %4, align 4
  br label %91

21:                                               ; preds = %3
  %22 = load %struct.snddev_info*, %struct.snddev_info** %8, align 8
  %23 = call i32 @PCM_GIANT_ENTER(%struct.snddev_info* %22)
  store %struct.pcm_channel* null, %struct.pcm_channel** %9, align 8
  store %struct.pcm_channel* null, %struct.pcm_channel** %10, align 8
  store i32 0, i32* %11, align 4
  %24 = load %struct.cdev*, %struct.cdev** %5, align 8
  %25 = load i32, i32* @SD_F_PRIO_RD, align 4
  %26 = load i32, i32* @SD_F_PRIO_WR, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @getchns(%struct.cdev* %24, %struct.pcm_channel** %10, %struct.pcm_channel** %9, i32 %27)
  %29 = load %struct.pcm_channel*, %struct.pcm_channel** %9, align 8
  %30 = icmp ne %struct.pcm_channel* %29, null
  br i1 %30, label %31, label %54

31:                                               ; preds = %21
  %32 = load %struct.pcm_channel*, %struct.pcm_channel** %9, align 8
  %33 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @CHN_F_DEAD, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %54, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @POLLOUT, align 4
  %41 = load i32, i32* @POLLWRNORM, align 4
  %42 = or i32 %40, %41
  %43 = and i32 %39, %42
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %38
  %47 = load %struct.pcm_channel*, %struct.pcm_channel** %9, align 8
  %48 = load i32, i32* %12, align 4
  %49 = load %struct.thread*, %struct.thread** %7, align 8
  %50 = call i32 @chn_poll(%struct.pcm_channel* %47, i32 %48, %struct.thread* %49)
  %51 = load i32, i32* %11, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %11, align 4
  br label %53

53:                                               ; preds = %46, %38
  br label %54

54:                                               ; preds = %53, %31, %21
  %55 = load %struct.pcm_channel*, %struct.pcm_channel** %10, align 8
  %56 = icmp ne %struct.pcm_channel* %55, null
  br i1 %56, label %57, label %80

57:                                               ; preds = %54
  %58 = load %struct.pcm_channel*, %struct.pcm_channel** %10, align 8
  %59 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @CHN_F_DEAD, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %80, label %64

64:                                               ; preds = %57
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @POLLIN, align 4
  %67 = load i32, i32* @POLLRDNORM, align 4
  %68 = or i32 %66, %67
  %69 = and i32 %65, %68
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %64
  %73 = load %struct.pcm_channel*, %struct.pcm_channel** %10, align 8
  %74 = load i32, i32* %12, align 4
  %75 = load %struct.thread*, %struct.thread** %7, align 8
  %76 = call i32 @chn_poll(%struct.pcm_channel* %73, i32 %74, %struct.thread* %75)
  %77 = load i32, i32* %11, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %11, align 4
  br label %79

79:                                               ; preds = %72, %64
  br label %80

80:                                               ; preds = %79, %57, %54
  %81 = load %struct.cdev*, %struct.cdev** %5, align 8
  %82 = load %struct.pcm_channel*, %struct.pcm_channel** %10, align 8
  %83 = load %struct.pcm_channel*, %struct.pcm_channel** %9, align 8
  %84 = load i32, i32* @SD_F_PRIO_RD, align 4
  %85 = load i32, i32* @SD_F_PRIO_WR, align 4
  %86 = or i32 %84, %85
  %87 = call i32 @relchns(%struct.cdev* %81, %struct.pcm_channel* %82, %struct.pcm_channel* %83, i32 %86)
  %88 = load %struct.snddev_info*, %struct.snddev_info** %8, align 8
  %89 = call i32 @PCM_GIANT_LEAVE(%struct.snddev_info* %88)
  %90 = load i32, i32* %11, align 4
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %80, %19
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local %struct.snddev_info* @dsp_get_info(%struct.cdev*) #1

declare dso_local i32 @DSP_REGISTERED(%struct.snddev_info*, %struct.cdev*) #1

declare dso_local i32 @PCM_GIANT_ENTER(%struct.snddev_info*) #1

declare dso_local i32 @getchns(%struct.cdev*, %struct.pcm_channel**, %struct.pcm_channel**, i32) #1

declare dso_local i32 @chn_poll(%struct.pcm_channel*, i32, %struct.thread*) #1

declare dso_local i32 @relchns(%struct.cdev*, %struct.pcm_channel*, %struct.pcm_channel*, i32) #1

declare dso_local i32 @PCM_GIANT_LEAVE(%struct.snddev_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
