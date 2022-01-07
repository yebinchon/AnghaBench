; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_audio.c_audio_set_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_audio.c_audio_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio = type { i32, i32, i32, i32, i32, i64, i32 }
%struct.audio_params = type { i32, i32, i32, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [42 x i8] c"Incorrect audio device descriptor for %s\0A\00", align 1
@SNDCTL_DSP_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to reset fd: %d, errno: %d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@SNDCTL_DSP_SETFMT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Fail to set fmt: 0x%x errno: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Mismatch format: 0x%x params->format: 0x%x\0A\00", align 1
@SNDCTL_DSP_CHANNELS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"Fail to set channels: %d errno: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"Mismatch channels: %d params->channels: %d\0A\00", align 1
@SNDCTL_DSP_SPEED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"Fail to set speed: %d errno: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"Mismatch rate: %d params->rate: %d\0A\00", align 1
@SNDCTL_DSP_GETISPACE = common dso_local global i32 0, align 4
@SNDCTL_DSP_GETOSPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @audio_set_params(%struct.audio* %0, %struct.audio_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.audio*, align 8
  %5 = alloca %struct.audio_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.audio* %0, %struct.audio** %4, align 8
  store %struct.audio_params* %1, %struct.audio_params** %5, align 8
  %11 = load %struct.audio*, %struct.audio** %4, align 8
  %12 = bitcast %struct.audio* %11 to %struct.audio_params*
  %13 = call i32 @assert(%struct.audio_params* %12)
  %14 = load %struct.audio_params*, %struct.audio_params** %5, align 8
  %15 = call i32 @assert(%struct.audio_params* %14)
  %16 = load %struct.audio*, %struct.audio** %4, align 8
  %17 = getelementptr inbounds %struct.audio, %struct.audio* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.audio*, %struct.audio** %4, align 8
  %22 = getelementptr inbounds %struct.audio, %struct.audio* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i8*, i32, ...) @DPRINTF(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %23)
  store i32 -1, i32* %3, align 4
  br label %128

25:                                               ; preds = %2
  %26 = load %struct.audio*, %struct.audio** %4, align 8
  %27 = getelementptr inbounds %struct.audio, %struct.audio* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %25
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @SNDCTL_DSP_RESET, align 4
  %33 = call i32 @ioctl(i32 %31, i32 %32, i32* null)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load %struct.audio*, %struct.audio** %4, align 8
  %38 = getelementptr inbounds %struct.audio, %struct.audio* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @errno, align 4
  %41 = call i32 (i8*, i32, ...) @DPRINTF(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %40)
  store i32 -1, i32* %3, align 4
  br label %128

42:                                               ; preds = %30
  br label %46

43:                                               ; preds = %25
  %44 = load %struct.audio*, %struct.audio** %4, align 8
  %45 = getelementptr inbounds %struct.audio, %struct.audio* %44, i32 0, i32 1
  store i32 1, i32* %45, align 4
  br label %46

46:                                               ; preds = %43, %42
  %47 = load %struct.audio_params*, %struct.audio_params** %5, align 8
  %48 = getelementptr inbounds %struct.audio_params, %struct.audio_params* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @SNDCTL_DSP_SETFMT, align 4
  %52 = call i32 @ioctl(i32 %50, i32 %51, i32* %7)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %61

55:                                               ; preds = %46
  %56 = load %struct.audio_params*, %struct.audio_params** %5, align 8
  %57 = getelementptr inbounds %struct.audio_params, %struct.audio_params* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @errno, align 4
  %60 = call i32 (i8*, i32, ...) @DPRINTF(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %58, i32 %59)
  store i32 -1, i32* %3, align 4
  br label %128

61:                                               ; preds = %46
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.audio_params*, %struct.audio_params** %5, align 8
  %64 = getelementptr inbounds %struct.audio_params, %struct.audio_params* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %62, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %61
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.audio_params*, %struct.audio_params** %5, align 8
  %70 = getelementptr inbounds %struct.audio_params, %struct.audio_params* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 (i8*, i32, ...) @DPRINTF(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %68, i32 %71)
  store i32 -1, i32* %3, align 4
  br label %128

73:                                               ; preds = %61
  %74 = load %struct.audio_params*, %struct.audio_params** %5, align 8
  %75 = getelementptr inbounds %struct.audio_params, %struct.audio_params* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @SNDCTL_DSP_CHANNELS, align 4
  %79 = call i32 @ioctl(i32 %77, i32 %78, i32* %8)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp eq i32 %80, -1
  br i1 %81, label %82, label %88

82:                                               ; preds = %73
  %83 = load %struct.audio_params*, %struct.audio_params** %5, align 8
  %84 = getelementptr inbounds %struct.audio_params, %struct.audio_params* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @errno, align 4
  %87 = call i32 (i8*, i32, ...) @DPRINTF(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %85, i32 %86)
  store i32 -1, i32* %3, align 4
  br label %128

88:                                               ; preds = %73
  %89 = load i32, i32* %8, align 4
  %90 = load %struct.audio_params*, %struct.audio_params** %5, align 8
  %91 = getelementptr inbounds %struct.audio_params, %struct.audio_params* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %89, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %88
  %95 = load i32, i32* %8, align 4
  %96 = load %struct.audio_params*, %struct.audio_params** %5, align 8
  %97 = getelementptr inbounds %struct.audio_params, %struct.audio_params* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (i8*, i32, ...) @DPRINTF(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %95, i32 %98)
  store i32 -1, i32* %3, align 4
  br label %128

100:                                              ; preds = %88
  %101 = load %struct.audio_params*, %struct.audio_params** %5, align 8
  %102 = getelementptr inbounds %struct.audio_params, %struct.audio_params* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* @SNDCTL_DSP_SPEED, align 4
  %106 = call i32 @ioctl(i32 %104, i32 %105, i32* %9)
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %10, align 4
  %108 = icmp eq i32 %107, -1
  br i1 %108, label %109, label %115

109:                                              ; preds = %100
  %110 = load %struct.audio_params*, %struct.audio_params** %5, align 8
  %111 = getelementptr inbounds %struct.audio_params, %struct.audio_params* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @errno, align 4
  %114 = call i32 (i8*, i32, ...) @DPRINTF(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %112, i32 %113)
  store i32 -1, i32* %3, align 4
  br label %128

115:                                              ; preds = %100
  %116 = load i32, i32* %9, align 4
  %117 = load %struct.audio_params*, %struct.audio_params** %5, align 8
  %118 = getelementptr inbounds %struct.audio_params, %struct.audio_params* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %116, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %115
  %122 = load i32, i32* %9, align 4
  %123 = load %struct.audio_params*, %struct.audio_params** %5, align 8
  %124 = getelementptr inbounds %struct.audio_params, %struct.audio_params* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = call i32 (i8*, i32, ...) @DPRINTF(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %122, i32 %125)
  store i32 -1, i32* %3, align 4
  br label %128

127:                                              ; preds = %115
  store i32 0, i32* %3, align 4
  br label %128

128:                                              ; preds = %127, %121, %109, %94, %82, %67, %55, %36, %20
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i32 @assert(%struct.audio_params*) #1

declare dso_local i32 @DPRINTF(i8*, i32, ...) #1

declare dso_local i32 @ioctl(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
