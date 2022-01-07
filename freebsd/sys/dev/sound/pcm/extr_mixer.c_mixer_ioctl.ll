; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_mixer.c_mixer_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_mixer.c_mixer_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32* }
%struct.thread = type { i32 }
%struct.snddev_info = type { i32 }
%struct.snd_mixer = type { i32 }

@EBADF = common dso_local global i32 0, align 4
@mixer_bypass = common dso_local global i64 0, align 8
@SD_F_VPC = common dso_local global i32 0, align 4
@MIXER_CMD_CDEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i32, i32, %struct.thread*)* @mixer_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mixer_ioctl(%struct.cdev* %0, i32 %1, i32 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.snddev_info*, align 8
  %13 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  %14 = load %struct.cdev*, %struct.cdev** %7, align 8
  %15 = icmp eq %struct.cdev* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %5
  %17 = load %struct.cdev*, %struct.cdev** %7, align 8
  %18 = getelementptr inbounds %struct.cdev, %struct.cdev* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %16, %5
  %22 = load i32, i32* @EBADF, align 4
  store i32 %22, i32* %6, align 4
  br label %75

23:                                               ; preds = %16
  %24 = load %struct.cdev*, %struct.cdev** %7, align 8
  %25 = getelementptr inbounds %struct.cdev, %struct.cdev* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = bitcast i32* %26 to %struct.snd_mixer*
  %28 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.snddev_info* @device_get_softc(i32 %29)
  store %struct.snddev_info* %30, %struct.snddev_info** %12, align 8
  %31 = load %struct.snddev_info*, %struct.snddev_info** %12, align 8
  %32 = call i32 @PCM_REGISTERED(%struct.snddev_info* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %23
  %35 = load i32, i32* @EBADF, align 4
  store i32 %35, i32* %6, align 4
  br label %75

36:                                               ; preds = %23
  %37 = load %struct.snddev_info*, %struct.snddev_info** %12, align 8
  %38 = call i32 @PCM_GIANT_ENTER(%struct.snddev_info* %37)
  %39 = load %struct.snddev_info*, %struct.snddev_info** %12, align 8
  %40 = call i32 @PCM_ACQUIRE_QUICK(%struct.snddev_info* %39)
  store i32 -1, i32* %13, align 4
  %41 = load i64, i64* @mixer_bypass, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %36
  %44 = load %struct.snddev_info*, %struct.snddev_info** %12, align 8
  %45 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @SD_F_VPC, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %43
  %51 = load %struct.cdev*, %struct.cdev** %7, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.thread*, %struct.thread** %11, align 8
  %56 = load i32, i32* @MIXER_CMD_CDEV, align 4
  %57 = call i32 @mixer_ioctl_channel(%struct.cdev* %51, i32 %52, i32 %53, i32 %54, %struct.thread* %55, i32 %56)
  store i32 %57, i32* %13, align 4
  br label %58

58:                                               ; preds = %50, %43, %36
  %59 = load i32, i32* %13, align 4
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %69

61:                                               ; preds = %58
  %62 = load %struct.cdev*, %struct.cdev** %7, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.thread*, %struct.thread** %11, align 8
  %67 = load i32, i32* @MIXER_CMD_CDEV, align 4
  %68 = call i32 @mixer_ioctl_cmd(%struct.cdev* %62, i32 %63, i32 %64, i32 %65, %struct.thread* %66, i32 %67)
  store i32 %68, i32* %13, align 4
  br label %69

69:                                               ; preds = %61, %58
  %70 = load %struct.snddev_info*, %struct.snddev_info** %12, align 8
  %71 = call i32 @PCM_RELEASE_QUICK(%struct.snddev_info* %70)
  %72 = load %struct.snddev_info*, %struct.snddev_info** %12, align 8
  %73 = call i32 @PCM_GIANT_LEAVE(%struct.snddev_info* %72)
  %74 = load i32, i32* %13, align 4
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %69, %34, %21
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

declare dso_local %struct.snddev_info* @device_get_softc(i32) #1

declare dso_local i32 @PCM_REGISTERED(%struct.snddev_info*) #1

declare dso_local i32 @PCM_GIANT_ENTER(%struct.snddev_info*) #1

declare dso_local i32 @PCM_ACQUIRE_QUICK(%struct.snddev_info*) #1

declare dso_local i32 @mixer_ioctl_channel(%struct.cdev*, i32, i32, i32, %struct.thread*, i32) #1

declare dso_local i32 @mixer_ioctl_cmd(%struct.cdev*, i32, i32, i32, %struct.thread*, i32) #1

declare dso_local i32 @PCM_RELEASE_QUICK(%struct.snddev_info*) #1

declare dso_local i32 @PCM_GIANT_LEAVE(%struct.snddev_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
