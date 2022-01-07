; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_audio_ctl_amp_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_audio_ctl_amp_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdaa_audio_ctl = type { i32, i32, i32, i32, %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@HDAA_AMP_MUTE_DEFAULT = common dso_local global i64 0, align 8
@HDAA_AMP_VOL_DEFAULT = common dso_local global i32 0, align 4
@HDAA_CTL_OUT = common dso_local global i32 0, align 4
@HDAA_CTL_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdaa_audio_ctl*, i64, i32, i32)* @hdaa_audio_ctl_amp_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdaa_audio_ctl_amp_set(%struct.hdaa_audio_ctl* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.hdaa_audio_ctl*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hdaa_audio_ctl* %0, %struct.hdaa_audio_ctl** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %5, align 8
  %13 = getelementptr inbounds %struct.hdaa_audio_ctl, %struct.hdaa_audio_ctl* %12, i32 0, i32 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @HDAA_AMP_MUTE_DEFAULT, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %5, align 8
  %23 = getelementptr inbounds %struct.hdaa_audio_ctl, %struct.hdaa_audio_ctl* %22, i32 0, i32 5
  store i64 %21, i64* %23, align 8
  br label %24

24:                                               ; preds = %20, %4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @HDAA_AMP_VOL_DEFAULT, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %5, align 8
  %31 = getelementptr inbounds %struct.hdaa_audio_ctl, %struct.hdaa_audio_ctl* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  br label %32

32:                                               ; preds = %28, %24
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @HDAA_AMP_VOL_DEFAULT, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %5, align 8
  %39 = getelementptr inbounds %struct.hdaa_audio_ctl, %struct.hdaa_audio_ctl* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %36, %32
  %41 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %5, align 8
  %42 = getelementptr inbounds %struct.hdaa_audio_ctl, %struct.hdaa_audio_ctl* %41, i32 0, i32 6
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 1, i32* %10, align 4
  store i32 1, i32* %11, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %61

46:                                               ; preds = %40
  %47 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %5, align 8
  %48 = getelementptr inbounds %struct.hdaa_audio_ctl, %struct.hdaa_audio_ctl* %47, i32 0, i32 5
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @HDAA_AMP_LEFT_MUTED(i64 %49)
  store i32 %50, i32* %10, align 4
  %51 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %5, align 8
  %52 = getelementptr inbounds %struct.hdaa_audio_ctl, %struct.hdaa_audio_ctl* %51, i32 0, i32 5
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @HDAA_AMP_RIGHT_MUTED(i64 %53)
  store i32 %54, i32* %11, align 4
  %55 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %5, align 8
  %56 = getelementptr inbounds %struct.hdaa_audio_ctl, %struct.hdaa_audio_ctl* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %7, align 4
  %58 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %5, align 8
  %59 = getelementptr inbounds %struct.hdaa_audio_ctl, %struct.hdaa_audio_ctl* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %46, %45
  %62 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %5, align 8
  %63 = getelementptr inbounds %struct.hdaa_audio_ctl, %struct.hdaa_audio_ctl* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @HDAA_CTL_OUT, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %61
  %69 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %5, align 8
  %70 = getelementptr inbounds %struct.hdaa_audio_ctl, %struct.hdaa_audio_ctl* %69, i32 0, i32 4
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %5, align 8
  %76 = getelementptr inbounds %struct.hdaa_audio_ctl, %struct.hdaa_audio_ctl* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @hdaa_audio_ctl_amp_set_internal(i32 %73, i32 %74, i32 %77, i32 %78, i32 %79, i32 %80, i32 %81, i32 0)
  br label %83

83:                                               ; preds = %68, %61
  %84 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %5, align 8
  %85 = getelementptr inbounds %struct.hdaa_audio_ctl, %struct.hdaa_audio_ctl* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @HDAA_CTL_IN, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %105

90:                                               ; preds = %83
  %91 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %5, align 8
  %92 = getelementptr inbounds %struct.hdaa_audio_ctl, %struct.hdaa_audio_ctl* %91, i32 0, i32 4
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %9, align 4
  %97 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %5, align 8
  %98 = getelementptr inbounds %struct.hdaa_audio_ctl, %struct.hdaa_audio_ctl* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @hdaa_audio_ctl_amp_set_internal(i32 %95, i32 %96, i32 %99, i32 %100, i32 %101, i32 %102, i32 %103, i32 1)
  br label %105

105:                                              ; preds = %90, %83
  ret void
}

declare dso_local i32 @HDAA_AMP_LEFT_MUTED(i64) #1

declare dso_local i32 @HDAA_AMP_RIGHT_MUTED(i64) #1

declare dso_local i32 @hdaa_audio_ctl_amp_set_internal(i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
