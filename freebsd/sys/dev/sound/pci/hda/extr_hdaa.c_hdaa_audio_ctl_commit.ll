; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_audio_ctl_commit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_audio_ctl_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdaa_devinfo = type { i32 }
%struct.hdaa_audio_ctl = type { i64, i64, i32, i32 }

@HDAA_AMP_MUTE_ALL = common dso_local global i32 0, align 4
@HDAA_AMP_MUTE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdaa_devinfo*)* @hdaa_audio_ctl_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdaa_audio_ctl_commit(%struct.hdaa_devinfo* %0) #0 {
  %2 = alloca %struct.hdaa_devinfo*, align 8
  %3 = alloca %struct.hdaa_audio_ctl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hdaa_devinfo* %0, %struct.hdaa_devinfo** %2, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %37, %20, %1
  %7 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %8 = call %struct.hdaa_audio_ctl* @hdaa_audio_ctl_each(%struct.hdaa_devinfo* %7, i32* %4)
  store %struct.hdaa_audio_ctl* %8, %struct.hdaa_audio_ctl** %3, align 8
  %9 = icmp ne %struct.hdaa_audio_ctl* %8, null
  br i1 %9, label %10, label %43

10:                                               ; preds = %6
  %11 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %3, align 8
  %12 = getelementptr inbounds %struct.hdaa_audio_ctl, %struct.hdaa_audio_ctl* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %3, align 8
  %17 = getelementptr inbounds %struct.hdaa_audio_ctl, %struct.hdaa_audio_ctl* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15, %10
  %21 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %3, align 8
  %22 = load i32, i32* @HDAA_AMP_MUTE_ALL, align 4
  %23 = call i32 @hdaa_audio_ctl_amp_set(%struct.hdaa_audio_ctl* %21, i32 %22, i32 0, i32 0)
  br label %6

24:                                               ; preds = %15
  %25 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %3, align 8
  %26 = getelementptr inbounds %struct.hdaa_audio_ctl, %struct.hdaa_audio_ctl* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %3, align 8
  %30 = getelementptr inbounds %struct.hdaa_audio_ctl, %struct.hdaa_audio_ctl* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = icmp sgt i32 %28, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %24
  %34 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %3, align 8
  %35 = getelementptr inbounds %struct.hdaa_audio_ctl, %struct.hdaa_audio_ctl* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %33, %24
  %38 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %3, align 8
  %39 = load i32, i32* @HDAA_AMP_MUTE_NONE, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @hdaa_audio_ctl_amp_set(%struct.hdaa_audio_ctl* %38, i32 %39, i32 %40, i32 %41)
  br label %6

43:                                               ; preds = %6
  ret void
}

declare dso_local %struct.hdaa_audio_ctl* @hdaa_audio_ctl_each(%struct.hdaa_devinfo*, i32*) #1

declare dso_local i32 @hdaa_audio_ctl_amp_set(%struct.hdaa_audio_ctl*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
