; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_mixer_feature_get_bmaControls.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_mixer_feature_get_bmaControls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_audio_feature_unit = type { i64, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.usb_audio_feature_unit*, i64)* @uaudio_mixer_feature_get_bmaControls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @uaudio_mixer_feature_get_bmaControls(%struct.usb_audio_feature_unit* %0, i64 %1) #0 {
  %3 = alloca %struct.usb_audio_feature_unit*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.usb_audio_feature_unit* %0, %struct.usb_audio_feature_unit** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load %struct.usb_audio_feature_unit*, %struct.usb_audio_feature_unit** %3, align 8
  %9 = getelementptr inbounds %struct.usb_audio_feature_unit, %struct.usb_audio_feature_unit* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = mul i64 %7, %10
  store i64 %11, i64* %6, align 8
  %12 = load %struct.usb_audio_feature_unit*, %struct.usb_audio_feature_unit** %3, align 8
  %13 = getelementptr inbounds %struct.usb_audio_feature_unit, %struct.usb_audio_feature_unit* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ugt i64 %14, 0
  br i1 %15, label %16, label %73

16:                                               ; preds = %2
  %17 = load %struct.usb_audio_feature_unit*, %struct.usb_audio_feature_unit** %3, align 8
  %18 = getelementptr inbounds %struct.usb_audio_feature_unit, %struct.usb_audio_feature_unit* %17, i32 0, i32 1
  %19 = load i64*, i64** %18, align 8
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = or i64 %23, %22
  store i64 %24, i64* %5, align 8
  %25 = load %struct.usb_audio_feature_unit*, %struct.usb_audio_feature_unit** %3, align 8
  %26 = getelementptr inbounds %struct.usb_audio_feature_unit, %struct.usb_audio_feature_unit* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ugt i64 %27, 1
  br i1 %28, label %29, label %72

29:                                               ; preds = %16
  %30 = load %struct.usb_audio_feature_unit*, %struct.usb_audio_feature_unit** %3, align 8
  %31 = getelementptr inbounds %struct.usb_audio_feature_unit, %struct.usb_audio_feature_unit* %30, i32 0, i32 1
  %32 = load i64*, i64** %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = add i64 %33, 1
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = shl i64 %36, 8
  %38 = load i64, i64* %5, align 8
  %39 = or i64 %38, %37
  store i64 %39, i64* %5, align 8
  %40 = load %struct.usb_audio_feature_unit*, %struct.usb_audio_feature_unit** %3, align 8
  %41 = getelementptr inbounds %struct.usb_audio_feature_unit, %struct.usb_audio_feature_unit* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ugt i64 %42, 2
  br i1 %43, label %44, label %71

44:                                               ; preds = %29
  %45 = load %struct.usb_audio_feature_unit*, %struct.usb_audio_feature_unit** %3, align 8
  %46 = getelementptr inbounds %struct.usb_audio_feature_unit, %struct.usb_audio_feature_unit* %45, i32 0, i32 1
  %47 = load i64*, i64** %46, align 8
  %48 = load i64, i64* %6, align 8
  %49 = add i64 %48, 2
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = shl i64 %51, 16
  %53 = load i64, i64* %5, align 8
  %54 = or i64 %53, %52
  store i64 %54, i64* %5, align 8
  %55 = load %struct.usb_audio_feature_unit*, %struct.usb_audio_feature_unit** %3, align 8
  %56 = getelementptr inbounds %struct.usb_audio_feature_unit, %struct.usb_audio_feature_unit* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ugt i64 %57, 3
  br i1 %58, label %59, label %70

59:                                               ; preds = %44
  %60 = load %struct.usb_audio_feature_unit*, %struct.usb_audio_feature_unit** %3, align 8
  %61 = getelementptr inbounds %struct.usb_audio_feature_unit, %struct.usb_audio_feature_unit* %60, i32 0, i32 1
  %62 = load i64*, i64** %61, align 8
  %63 = load i64, i64* %6, align 8
  %64 = add i64 %63, 3
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = shl i64 %66, 24
  %68 = load i64, i64* %5, align 8
  %69 = or i64 %68, %67
  store i64 %69, i64* %5, align 8
  br label %70

70:                                               ; preds = %59, %44
  br label %71

71:                                               ; preds = %70, %29
  br label %72

72:                                               ; preds = %71, %16
  br label %73

73:                                               ; preds = %72, %2
  %74 = load i64, i64* %5, align 8
  ret i64 %74
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
