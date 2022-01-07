; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_sound.c_pcm_sysinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_sound.c_pcm_sysinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snddev_info = type { i32, i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"buffersize\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"allocated buffer size\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"bitperfect\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RWTUN = common dso_local global i32 0, align 4
@sysctl_dev_pcm_bitperfect = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"bit-perfect playback/recording (0=disable, 1=enable)\00", align 1
@SD_F_AUTOVCHAN = common dso_local global i32 0, align 4
@SD_F_EQ = common dso_local global i32 0, align 4
@CTLTYPE_UINT = common dso_local global i32 0, align 4
@sysctl_dev_pcm_clone_deadline = common dso_local global i32 0, align 4
@sysctl_dev_pcm_clone_flags = common dso_local global i32 0, align 4
@sysctl_dev_pcm_clone_gc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @pcm_sysinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcm_sysinit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snddev_info*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.snddev_info* @device_get_softc(i32 %4)
  store %struct.snddev_info* %5, %struct.snddev_info** %3, align 8
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @device_get_sysctl_ctx(i32 %6)
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @device_get_sysctl_tree(i32 %8)
  %10 = call i32 @SYSCTL_CHILDREN(i32 %9)
  %11 = load i32, i32* @OID_AUTO, align 4
  %12 = load i32, i32* @CTLFLAG_RD, align 4
  %13 = load %struct.snddev_info*, %struct.snddev_info** %3, align 8
  %14 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %13, i32 0, i32 1
  %15 = call i32 @SYSCTL_ADD_UINT(i32 %7, i32 %10, i32 %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %12, i32* %14, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @device_get_sysctl_ctx(i32 %16)
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @device_get_sysctl_tree(i32 %18)
  %20 = call i32 @SYSCTL_CHILDREN(i32 %19)
  %21 = load i32, i32* @OID_AUTO, align 4
  %22 = load i32, i32* @CTLTYPE_INT, align 4
  %23 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.snddev_info*, %struct.snddev_info** %3, align 8
  %26 = load i32, i32* @sysctl_dev_pcm_bitperfect, align 4
  %27 = call i32 @SYSCTL_ADD_PROC(i32 %17, i32 %20, i32 %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %24, %struct.snddev_info* %25, i32 8, i32 %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0))
  %28 = load %struct.snddev_info*, %struct.snddev_info** %3, align 8
  %29 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @SD_F_AUTOVCHAN, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %1
  %35 = load i32, i32* %2, align 4
  %36 = call i32 @vchan_initsys(i32 %35)
  br label %37

37:                                               ; preds = %34, %1
  %38 = load %struct.snddev_info*, %struct.snddev_info** %3, align 8
  %39 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @SD_F_EQ, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i32, i32* %2, align 4
  %46 = call i32 @feeder_eq_initsys(i32 %45)
  br label %47

47:                                               ; preds = %44, %37
  ret void
}

declare dso_local %struct.snddev_info* @device_get_softc(i32) #1

declare dso_local i32 @SYSCTL_ADD_UINT(i32, i32, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @device_get_sysctl_ctx(i32) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @device_get_sysctl_tree(i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(i32, i32, i32, i8*, i32, %struct.snddev_info*, i32, i32, i8*, i8*) #1

declare dso_local i32 @vchan_initsys(i32) #1

declare dso_local i32 @feeder_eq_initsys(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
