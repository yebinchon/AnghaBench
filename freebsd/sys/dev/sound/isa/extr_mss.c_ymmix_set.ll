; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_ymmix_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_ymmix_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer = type { i32 }
%struct.mss_info = type { i32 }

@OPL3SAx_VOLUMEL = common dso_local global i32 0, align 4
@OPL3SAx_VOLUMER = common dso_local global i32 0, align 4
@OPL3SAx_MIC = common dso_local global i32 0, align 4
@OPL3SAx_BASS = common dso_local global i32 0, align 4
@OPL3SAx_TREBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixer*, i32, i32, i32)* @ymmix_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ymmix_set(%struct.snd_mixer* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.snd_mixer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mss_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_mixer* %0, %struct.snd_mixer** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.snd_mixer*, %struct.snd_mixer** %5, align 8
  %14 = call %struct.mss_info* @mix_getdevinfo(%struct.snd_mixer* %13)
  store %struct.mss_info* %14, %struct.mss_info** %9, align 8
  %15 = load %struct.mss_info*, %struct.mss_info** %9, align 8
  %16 = call i32 @mss_lock(%struct.mss_info* %15)
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %90 [
    i32 128, label %18
    i32 130, label %45
    i32 131, label %60
    i32 129, label %75
  ]

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i32, i32* %7, align 4
  %23 = mul i32 %22, 15
  %24 = udiv i32 %23, 100
  %25 = sub i32 15, %24
  store i32 %25, i32* %10, align 4
  br label %27

26:                                               ; preds = %18
  store i32 128, i32* %10, align 4
  br label %27

27:                                               ; preds = %26, %21
  %28 = load %struct.mss_info*, %struct.mss_info** %9, align 8
  %29 = load i32, i32* @OPL3SAx_VOLUMEL, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @conf_wr(%struct.mss_info* %28, i32 %29, i32 %30)
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load i32, i32* %8, align 4
  %36 = mul i32 %35, 15
  %37 = udiv i32 %36, 100
  %38 = sub i32 15, %37
  store i32 %38, i32* %10, align 4
  br label %40

39:                                               ; preds = %27
  store i32 128, i32* %10, align 4
  br label %40

40:                                               ; preds = %39, %34
  %41 = load %struct.mss_info*, %struct.mss_info** %9, align 8
  %42 = load i32, i32* @OPL3SAx_VOLUMER, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @conf_wr(%struct.mss_info* %41, i32 %42, i32 %43)
  br label %96

45:                                               ; preds = %4
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load i32, i32* %7, align 4
  %51 = mul i32 %50, 31
  %52 = udiv i32 %51, 100
  %53 = sub i32 31, %52
  store i32 %53, i32* %10, align 4
  br label %55

54:                                               ; preds = %45
  store i32 128, i32* %10, align 4
  br label %55

55:                                               ; preds = %54, %49
  %56 = load %struct.mss_info*, %struct.mss_info** %9, align 8
  %57 = load i32, i32* @OPL3SAx_MIC, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @conf_wr(%struct.mss_info* %56, i32 %57, i32 %58)
  br label %96

60:                                               ; preds = %4
  %61 = load i32, i32* %7, align 4
  %62 = mul i32 %61, 7
  %63 = udiv i32 %62, 100
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %8, align 4
  %65 = mul i32 %64, 7
  %66 = udiv i32 %65, 100
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = shl i32 %67, 4
  %69 = load i32, i32* %11, align 4
  %70 = or i32 %68, %69
  store i32 %70, i32* %10, align 4
  %71 = load %struct.mss_info*, %struct.mss_info** %9, align 8
  %72 = load i32, i32* @OPL3SAx_BASS, align 4
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @conf_wr(%struct.mss_info* %71, i32 %72, i32 %73)
  br label %96

75:                                               ; preds = %4
  %76 = load i32, i32* %7, align 4
  %77 = mul i32 %76, 7
  %78 = udiv i32 %77, 100
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %8, align 4
  %80 = mul i32 %79, 7
  %81 = udiv i32 %80, 100
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = shl i32 %82, 4
  %84 = load i32, i32* %11, align 4
  %85 = or i32 %83, %84
  store i32 %85, i32* %10, align 4
  %86 = load %struct.mss_info*, %struct.mss_info** %9, align 8
  %87 = load i32, i32* @OPL3SAx_TREBLE, align 4
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @conf_wr(%struct.mss_info* %86, i32 %87, i32 %88)
  br label %96

90:                                               ; preds = %4
  %91 = load %struct.mss_info*, %struct.mss_info** %9, align 8
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @mss_mixer_set(%struct.mss_info* %91, i32 %92, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %90, %75, %60, %55, %40
  %97 = load %struct.mss_info*, %struct.mss_info** %9, align 8
  %98 = call i32 @mss_unlock(%struct.mss_info* %97)
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* %8, align 4
  %101 = shl i32 %100, 8
  %102 = or i32 %99, %101
  ret i32 %102
}

declare dso_local %struct.mss_info* @mix_getdevinfo(%struct.snd_mixer*) #1

declare dso_local i32 @mss_lock(%struct.mss_info*) #1

declare dso_local i32 @conf_wr(%struct.mss_info*, i32, i32) #1

declare dso_local i32 @mss_mixer_set(%struct.mss_info*, i32, i32, i32) #1

declare dso_local i32 @mss_unlock(%struct.mss_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
