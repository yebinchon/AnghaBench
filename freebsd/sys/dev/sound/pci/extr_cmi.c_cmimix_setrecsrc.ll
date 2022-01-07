; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_cmi.c_cmimix_setrecsrc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_cmi.c_cmimix_setrecsrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }
%struct.snd_mixer = type { i32 }
%struct.sc_info = type { i32 }

@SOUND_MIXER_NRDEVICES = common dso_local global i32 0, align 4
@cmt = common dso_local global %struct.TYPE_2__* null, align 8
@CMPCI_SB16_MIXER_ADCMIX_R = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"cmimix_setrecsrc: reg 0x%02x val 0x%02x\0A\00", align 1
@CMPCI_SB16_MIXER_ADCMIX_L = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixer*, i32)* @cmimix_setrecsrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmimix_setrecsrc(%struct.snd_mixer* %0, i32 %1) #0 {
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

11:                                               ; preds = %49, %2
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @SOUND_MIXER_NRDEVICES, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %52

15:                                               ; preds = %11
  %16 = load i32, i32* %6, align 4
  %17 = shl i32 1, %16
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %48

21:                                               ; preds = %15
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cmt, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %21
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cmt, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %8, align 4
  br label %47

38:                                               ; preds = %21
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cmt, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %38, %29
  br label %48

48:                                               ; preds = %47, %15
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %11

52:                                               ; preds = %11
  %53 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %54 = load i32, i32* @CMPCI_SB16_MIXER_ADCMIX_R, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %7, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @cmimix_wr(%struct.sc_info* %53, i32 %54, i32 %57)
  %59 = load i32, i32* @CMPCI_SB16_MIXER_ADCMIX_R, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %7, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %62)
  %64 = call i32 @DEBMIX(i32 %63)
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @CMPCI_SB16_MIXER_SRC_R_TO_L(i32 %65)
  store i32 %66, i32* %7, align 4
  %67 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %68 = load i32, i32* @CMPCI_SB16_MIXER_ADCMIX_L, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %7, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @cmimix_wr(%struct.sc_info* %67, i32 %68, i32 %71)
  %73 = load i32, i32* @CMPCI_SB16_MIXER_ADCMIX_L, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %7, align 4
  %76 = or i32 %74, %75
  %77 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %76)
  %78 = call i32 @DEBMIX(i32 %77)
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local %struct.sc_info* @mix_getdevinfo(%struct.snd_mixer*) #1

declare dso_local i32 @cmimix_wr(%struct.sc_info*, i32, i32) #1

declare dso_local i32 @DEBMIX(i32) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i32 @CMPCI_SB16_MIXER_SRC_R_TO_L(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
