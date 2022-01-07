; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_mixer.c_mixer_clone.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_mixer.c_mixer_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }
%struct.cdev = type { i32 }
%struct.snddev_info = type { %struct.cdev* }

@.str = private unnamed_addr constant [6 x i8] c"mixer\00", align 1
@pcm_devclass = common dso_local global i32 0, align 4
@snd_unit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ucred*, i8*, i32, %struct.cdev**)* @mixer_clone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mixer_clone(i8* %0, %struct.ucred* %1, i8* %2, i32 %3, %struct.cdev** %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.cdev**, align 8
  %11 = alloca %struct.snddev_info*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.ucred* %1, %struct.ucred** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.cdev** %4, %struct.cdev*** %10, align 8
  %12 = load %struct.cdev**, %struct.cdev*** %10, align 8
  %13 = load %struct.cdev*, %struct.cdev** %12, align 8
  %14 = icmp ne %struct.cdev* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  br label %41

16:                                               ; preds = %5
  %17 = load i8*, i8** %8, align 8
  %18 = call i64 @strcmp(i8* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %16
  %21 = load i32, i32* @pcm_devclass, align 4
  %22 = load i32, i32* @snd_unit, align 4
  %23 = call %struct.snddev_info* @devclass_get_softc(i32 %21, i32 %22)
  store %struct.snddev_info* %23, %struct.snddev_info** %11, align 8
  %24 = load %struct.snddev_info*, %struct.snddev_info** %11, align 8
  %25 = call i64 @PCM_REGISTERED(%struct.snddev_info* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %20
  %28 = load %struct.snddev_info*, %struct.snddev_info** %11, align 8
  %29 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %28, i32 0, i32 0
  %30 = load %struct.cdev*, %struct.cdev** %29, align 8
  %31 = icmp ne %struct.cdev* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load %struct.snddev_info*, %struct.snddev_info** %11, align 8
  %34 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %33, i32 0, i32 0
  %35 = load %struct.cdev*, %struct.cdev** %34, align 8
  %36 = load %struct.cdev**, %struct.cdev*** %10, align 8
  store %struct.cdev* %35, %struct.cdev** %36, align 8
  %37 = load %struct.cdev**, %struct.cdev*** %10, align 8
  %38 = load %struct.cdev*, %struct.cdev** %37, align 8
  %39 = call i32 @dev_ref(%struct.cdev* %38)
  br label %40

40:                                               ; preds = %32, %27, %20
  br label %41

41:                                               ; preds = %15, %40, %16
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.snddev_info* @devclass_get_softc(i32, i32) #1

declare dso_local i64 @PCM_REGISTERED(%struct.snddev_info*) #1

declare dso_local i32 @dev_ref(%struct.cdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
