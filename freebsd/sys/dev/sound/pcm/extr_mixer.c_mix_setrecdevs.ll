; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_mixer.c_mix_setrecdevs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_mixer.c_mix_setrecdevs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32*, i32 }

@SOUND_MIXER_NRDEVICES = common dso_local global i32 0, align 4
@snd_mixernames = common dso_local global i32* null, align 8
@OSS_ENUM_MAXVALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [83 x i8] c"mix_setrecdevs:  Not enough room to store device names--please file a bug report.\0A\00", align 1
@.str.1 = private unnamed_addr constant [85 x i8] c"mix_setrecdevs:  Please include details about your sound hardware, OS version, etc.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mix_setrecdevs(%struct.snd_mixer* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_mixer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_2__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_mixer* %0, %struct.snd_mixer** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.snd_mixer*, %struct.snd_mixer** %3, align 8
  %13 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %12, i32 0, i32 2
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 8, i32* %10, align 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %75, %2
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @SOUND_MIXER_NRDEVICES, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %78

21:                                               ; preds = %17
  %22 = load i32, i32* %7, align 4
  %23 = shl i32 1, %22
  %24 = load i32, i32* %4, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %74

27:                                               ; preds = %21
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32 %28, i32* %34, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = load i32*, i32** @snd_mixernames, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @strlcpy(i8* %35, i32 %40, i32 %41)
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %10, align 4
  %49 = sub nsw i32 %48, %47
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp sle i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %27
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @OSS_ENUM_MAXVALUE, align 4
  %57 = icmp sge i32 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %54, %27
  %59 = load %struct.snd_mixer*, %struct.snd_mixer** %3, align 8
  %60 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @device_printf(i32 %61, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0))
  %63 = load %struct.snd_mixer*, %struct.snd_mixer** %3, align 8
  %64 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @device_printf(i32 %65, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i64 0, i64 0))
  br label %78

67:                                               ; preds = %54
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  store i8* %73, i8** %6, align 8
  br label %74

74:                                               ; preds = %67, %21
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %17

78:                                               ; preds = %58, %17
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* %4, align 4
  %83 = load %struct.snd_mixer*, %struct.snd_mixer** %3, align 8
  %84 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  ret void
}

declare dso_local i32 @strlcpy(i8*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
