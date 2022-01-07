; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_als4000.c_alsmix_setrecsrc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_als4000.c_alsmix_setrecsrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.snd_mixer = type { i32 }
%struct.sc_info = type { i32 }

@SOUND_MIXER_NRDEVICES = common dso_local global i32 0, align 4
@amt = common dso_local global %struct.TYPE_2__* null, align 8
@SB16_IMASK_L = common dso_local global i32 0, align 4
@SB16_IMASK_R = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixer*, i32)* @alsmix_setrecsrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alsmix_setrecsrc(%struct.snd_mixer* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_mixer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sc_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_mixer* %0, %struct.snd_mixer** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.snd_mixer*, %struct.snd_mixer** %3, align 8
  %10 = call %struct.sc_info* @mix_getdevinfo(%struct.snd_mixer* %9)
  store %struct.sc_info* %10, %struct.sc_info** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %66, %2
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @SOUND_MIXER_NRDEVICES, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %69

15:                                               ; preds = %11
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %6, align 4
  %18 = shl i32 1, %17
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %65

21:                                               ; preds = %15
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @amt, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %46

29:                                               ; preds = %21
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @amt, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %7, align 4
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @amt, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %8, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %8, align 4
  br label %64

46:                                               ; preds = %21
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @amt, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %7, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %7, align 4
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @amt, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = ashr i32 %60, 1
  %62 = load i32, i32* %8, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %46, %29
  br label %65

65:                                               ; preds = %64, %15
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %11

69:                                               ; preds = %11
  %70 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %71 = load i32, i32* @SB16_IMASK_L, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @als_mix_wr(%struct.sc_info* %70, i32 %71, i32 %72)
  %74 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %75 = load i32, i32* @SB16_IMASK_R, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @als_mix_wr(%struct.sc_info* %74, i32 %75, i32 %76)
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local %struct.sc_info* @mix_getdevinfo(%struct.snd_mixer*) #1

declare dso_local i32 @als_mix_wr(%struct.sc_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
