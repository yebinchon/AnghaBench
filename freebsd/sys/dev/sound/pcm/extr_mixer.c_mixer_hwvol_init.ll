; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_mixer.c_mixer_hwvol_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_mixer.c_mixer_hwvol_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer = type { i32, i32 }
%struct.cdev = type { %struct.snd_mixer* }

@SOUND_MIXER_VOLUME = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"hwvol_step\00", align 1
@CTLFLAG_RWTUN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"hwvol_mixer\00", align 1
@CTLTYPE_STRING = common dso_local global i32 0, align 4
@sysctl_hw_snd_hwvol_mixer = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mixer_hwvol_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_mixer*, align 8
  %4 = alloca %struct.cdev*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.cdev* @mixer_get_devt(i32 %5)
  store %struct.cdev* %6, %struct.cdev** %4, align 8
  %7 = load %struct.cdev*, %struct.cdev** %4, align 8
  %8 = getelementptr inbounds %struct.cdev, %struct.cdev* %7, i32 0, i32 0
  %9 = load %struct.snd_mixer*, %struct.snd_mixer** %8, align 8
  store %struct.snd_mixer* %9, %struct.snd_mixer** %3, align 8
  %10 = load i32, i32* @SOUND_MIXER_VOLUME, align 4
  %11 = load %struct.snd_mixer*, %struct.snd_mixer** %3, align 8
  %12 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load %struct.snd_mixer*, %struct.snd_mixer** %3, align 8
  %14 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %13, i32 0, i32 0
  store i32 5, i32* %14, align 4
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @device_get_sysctl_ctx(i32 %15)
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @device_get_sysctl_tree(i32 %17)
  %19 = call i32 @SYSCTL_CHILDREN(i32 %18)
  %20 = load i32, i32* @OID_AUTO, align 4
  %21 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %22 = load %struct.snd_mixer*, %struct.snd_mixer** %3, align 8
  %23 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %22, i32 0, i32 0
  %24 = call i32 @SYSCTL_ADD_INT(i32 %16, i32 %19, i32 %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %21, i32* %23, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @device_get_sysctl_ctx(i32 %25)
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @device_get_sysctl_tree(i32 %27)
  %29 = call i32 @SYSCTL_CHILDREN(i32 %28)
  %30 = load i32, i32* @OID_AUTO, align 4
  %31 = load i32, i32* @CTLTYPE_STRING, align 4
  %32 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.snd_mixer*, %struct.snd_mixer** %3, align 8
  %35 = load i32, i32* @sysctl_hw_snd_hwvol_mixer, align 4
  %36 = call i32 @SYSCTL_ADD_PROC(i32 %26, i32 %29, i32 %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %33, %struct.snd_mixer* %34, i32 0, i32 %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local %struct.cdev* @mixer_get_devt(i32) #1

declare dso_local i32 @SYSCTL_ADD_INT(i32, i32, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @device_get_sysctl_ctx(i32) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @device_get_sysctl_tree(i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(i32, i32, i32, i8*, i32, %struct.snd_mixer*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
