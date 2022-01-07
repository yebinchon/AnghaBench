; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_audio_ctl_amp_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_audio_ctl_amp_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdaa_audio_ctl = type { i64, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.hdaa_devinfo = type { i32* }

@HDAA_CTL_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hdaa_audio_ctl* (%struct.hdaa_devinfo*, i64, i32, i32, i32)* @hdaa_audio_ctl_amp_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hdaa_audio_ctl* @hdaa_audio_ctl_amp_get(%struct.hdaa_devinfo* %0, i64 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.hdaa_audio_ctl*, align 8
  %7 = alloca %struct.hdaa_devinfo*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.hdaa_audio_ctl*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.hdaa_devinfo* %0, %struct.hdaa_devinfo** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %14, align 4
  %15 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %7, align 8
  %16 = icmp eq %struct.hdaa_devinfo* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %5
  %18 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %7, align 8
  %19 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %17, %5
  store %struct.hdaa_audio_ctl* null, %struct.hdaa_audio_ctl** %6, align 8
  br label %90

23:                                               ; preds = %17
  store i32 0, i32* %13, align 4
  br label %24

24:                                               ; preds = %88, %76, %52, %42, %33, %23
  %25 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %7, align 8
  %26 = call %struct.hdaa_audio_ctl* @hdaa_audio_ctl_each(%struct.hdaa_devinfo* %25, i32* %13)
  store %struct.hdaa_audio_ctl* %26, %struct.hdaa_audio_ctl** %12, align 8
  %27 = icmp ne %struct.hdaa_audio_ctl* %26, null
  br i1 %27, label %28, label %89

28:                                               ; preds = %24
  %29 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %12, align 8
  %30 = getelementptr inbounds %struct.hdaa_audio_ctl, %struct.hdaa_audio_ctl* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %24

34:                                               ; preds = %28
  %35 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %12, align 8
  %36 = getelementptr inbounds %struct.hdaa_audio_ctl, %struct.hdaa_audio_ctl* %35, i32 0, i32 4
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %8, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %24

43:                                               ; preds = %34
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %12, align 8
  %48 = getelementptr inbounds %struct.hdaa_audio_ctl, %struct.hdaa_audio_ctl* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %24

53:                                               ; preds = %46, %43
  %54 = load i32, i32* %10, align 4
  %55 = icmp sge i32 %54, 0
  br i1 %55, label %56, label %77

56:                                               ; preds = %53
  %57 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %12, align 8
  %58 = getelementptr inbounds %struct.hdaa_audio_ctl, %struct.hdaa_audio_ctl* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @HDAA_CTL_IN, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %77

62:                                               ; preds = %56
  %63 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %12, align 8
  %64 = getelementptr inbounds %struct.hdaa_audio_ctl, %struct.hdaa_audio_ctl* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %12, align 8
  %67 = getelementptr inbounds %struct.hdaa_audio_ctl, %struct.hdaa_audio_ctl* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %65, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %62
  %71 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %12, align 8
  %72 = getelementptr inbounds %struct.hdaa_audio_ctl, %struct.hdaa_audio_ctl* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %24

77:                                               ; preds = %70, %62, %56, %53
  %78 = load i32, i32* %14, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %14, align 4
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %86, label %83

83:                                               ; preds = %77
  %84 = load i32, i32* %11, align 4
  %85 = icmp sle i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %83, %77
  %87 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %12, align 8
  store %struct.hdaa_audio_ctl* %87, %struct.hdaa_audio_ctl** %6, align 8
  br label %90

88:                                               ; preds = %83
  br label %24

89:                                               ; preds = %24
  store %struct.hdaa_audio_ctl* null, %struct.hdaa_audio_ctl** %6, align 8
  br label %90

90:                                               ; preds = %89, %86, %22
  %91 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %6, align 8
  ret %struct.hdaa_audio_ctl* %91
}

declare dso_local %struct.hdaa_audio_ctl* @hdaa_audio_ctl_each(%struct.hdaa_devinfo*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
