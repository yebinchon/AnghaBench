; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_sb16.c_sb16mix_setrecsrc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_sb16.c_sb16mix_setrecsrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer = type { i32 }
%struct.sb_info = type { i32 }

@SOUND_MASK_MIC = common dso_local global i32 0, align 4
@SOUND_MASK_CD = common dso_local global i32 0, align 4
@SOUND_MASK_LINE = common dso_local global i32 0, align 4
@SOUND_MASK_SYNTH = common dso_local global i32 0, align 4
@SB16_IMASK_L = common dso_local global i32 0, align 4
@SB16_IMASK_R = common dso_local global i32 0, align 4
@SOUND_MASK_LINE1 = common dso_local global i32 0, align 4
@SB16_OMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixer*, i32)* @sb16mix_setrecsrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sb16mix_setrecsrc(%struct.snd_mixer* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_mixer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_mixer* %0, %struct.snd_mixer** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.snd_mixer*, %struct.snd_mixer** %3, align 8
  %9 = call %struct.sb_info* @mix_getdevinfo(%struct.snd_mixer* %8)
  store %struct.sb_info* %9, %struct.sb_info** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @SOUND_MASK_MIC, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = or i32 %15, 1
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = or i32 %17, 1
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %14, %2
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @SOUND_MASK_CD, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load i32, i32* %6, align 4
  %26 = or i32 %25, 4
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %27, 2
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %24, %19
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @SOUND_MASK_LINE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %35, 16
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %37, 8
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %34, %29
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @SOUND_MASK_SYNTH, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load i32, i32* %6, align 4
  %46 = or i32 %45, 64
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = or i32 %47, 32
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %44, %39
  %50 = load %struct.sb_info*, %struct.sb_info** %5, align 8
  %51 = load i32, i32* @SB16_IMASK_L, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @sb_setmixer(%struct.sb_info* %50, i32 %51, i32 %52)
  %54 = load %struct.sb_info*, %struct.sb_info** %5, align 8
  %55 = load i32, i32* @SB16_IMASK_R, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @sb_setmixer(%struct.sb_info* %54, i32 %55, i32 %56)
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @SOUND_MASK_LINE1, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %49
  %63 = load %struct.sb_info*, %struct.sb_info** %5, align 8
  %64 = call i32 @sb_setmixer(%struct.sb_info* %63, i32 74, i32 12)
  br label %68

65:                                               ; preds = %49
  %66 = load %struct.sb_info*, %struct.sb_info** %5, align 8
  %67 = call i32 @sb_setmixer(%struct.sb_info* %66, i32 74, i32 0)
  br label %68

68:                                               ; preds = %65, %62
  %69 = load %struct.sb_info*, %struct.sb_info** %5, align 8
  %70 = load i32, i32* @SB16_OMASK, align 4
  %71 = call i32 @sb_setmixer(%struct.sb_info* %69, i32 %70, i32 30)
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local %struct.sb_info* @mix_getdevinfo(%struct.snd_mixer*) #1

declare dso_local i32 @sb_setmixer(%struct.sb_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
