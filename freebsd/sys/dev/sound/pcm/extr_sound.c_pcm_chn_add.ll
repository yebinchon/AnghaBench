; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_sound.c_pcm_chn_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_sound.c_pcm_chn_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.snddev_info = type { i32, i32, i32, i32, i32 }
%struct.pcm_channel = type { i64 }

@PCMDIR_PLAY = common dso_local global i64 0, align 8
@PCMDIR_REC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"Invalid pcm channel\00", align 1
@channels = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcm_chn_add(%struct.snddev_info* %0, %struct.pcm_channel* %1) #0 {
  %3 = alloca %struct.snddev_info*, align 8
  %4 = alloca %struct.pcm_channel*, align 8
  store %struct.snddev_info* %0, %struct.snddev_info** %3, align 8
  store %struct.pcm_channel* %1, %struct.pcm_channel** %4, align 8
  %5 = load %struct.snddev_info*, %struct.snddev_info** %3, align 8
  %6 = call i32 @PCM_BUSYASSERT(%struct.snddev_info* %5)
  %7 = load %struct.snddev_info*, %struct.snddev_info** %3, align 8
  %8 = call i32 @PCM_LOCKASSERT(%struct.snddev_info* %7)
  %9 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %10 = icmp ne %struct.pcm_channel* %9, null
  br i1 %10, label %11, label %25

11:                                               ; preds = %2
  %12 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %13 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PCMDIR_PLAY, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %11
  %18 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %19 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PCMDIR_REC, align 8
  %22 = icmp eq i64 %20, %21
  br label %23

23:                                               ; preds = %17, %11
  %24 = phi i1 [ true, %11 ], [ %22, %17 ]
  br label %25

25:                                               ; preds = %23, %2
  %26 = phi i1 [ false, %2 ], [ %24, %23 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @KASSERT(i32 %27, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.snddev_info*, %struct.snddev_info** %3, align 8
  %30 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @channels, i32 0, i32 0), align 4
  %32 = call i32 @CHN_INSERT_SORT_ASCEND(%struct.snddev_info* %29, %struct.pcm_channel* %30, i32 %31)
  %33 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %34 = call i32 @CHN_DEV(%struct.pcm_channel* %33)
  switch i32 %34, label %55 [
    i32 131, label %35
    i32 129, label %40
    i32 130, label %45
    i32 128, label %50
  ]

35:                                               ; preds = %25
  %36 = load %struct.snddev_info*, %struct.snddev_info** %3, align 8
  %37 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  br label %56

40:                                               ; preds = %25
  %41 = load %struct.snddev_info*, %struct.snddev_info** %3, align 8
  %42 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  br label %56

45:                                               ; preds = %25
  %46 = load %struct.snddev_info*, %struct.snddev_info** %3, align 8
  %47 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  br label %56

50:                                               ; preds = %25
  %51 = load %struct.snddev_info*, %struct.snddev_info** %3, align 8
  %52 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  br label %56

55:                                               ; preds = %25
  br label %56

56:                                               ; preds = %55, %50, %45, %40, %35
  %57 = load %struct.snddev_info*, %struct.snddev_info** %3, align 8
  %58 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  ret i32 0
}

declare dso_local i32 @PCM_BUSYASSERT(%struct.snddev_info*) #1

declare dso_local i32 @PCM_LOCKASSERT(%struct.snddev_info*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @CHN_INSERT_SORT_ASCEND(%struct.snddev_info*, %struct.pcm_channel*, i32) #1

declare dso_local i32 @CHN_DEV(%struct.pcm_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
