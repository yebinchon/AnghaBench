; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_cmi.c_cmimix_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_cmi.c_cmimix_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }
%struct.snd_mixer = type { i32 }
%struct.sc_info = type { i32 }

@SOUND_MIXER_NRDEVICES = common dso_local global i64 0, align 8
@cmt = common dso_local global %struct.TYPE_2__* null, align 8
@CMPCI_SB16_MIXER_RESET = common dso_local global i32 0, align 4
@CMPCI_SB16_MIXER_ADCMIX_L = common dso_local global i32 0, align 4
@CMPCI_SB16_MIXER_ADCMIX_R = common dso_local global i32 0, align 4
@CMPCI_SB16_MIXER_OUTMIX = common dso_local global i32 0, align 4
@CMPCI_SB16_SW_CD = common dso_local global i32 0, align 4
@CMPCI_SB16_SW_MIC = common dso_local global i32 0, align 4
@CMPCI_SB16_SW_LINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixer*)* @cmimix_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmimix_init(%struct.snd_mixer* %0) #0 {
  %2 = alloca %struct.snd_mixer*, align 8
  %3 = alloca %struct.sc_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.snd_mixer* %0, %struct.snd_mixer** %2, align 8
  %6 = load %struct.snd_mixer*, %struct.snd_mixer** %2, align 8
  %7 = call %struct.sc_info* @mix_getdevinfo(%struct.snd_mixer* %6)
  store %struct.sc_info* %7, %struct.sc_info** %3, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %4, align 8
  br label %8

8:                                                ; preds = %27, %1
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @SOUND_MIXER_NRDEVICES, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %30

12:                                               ; preds = %8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cmt, align 8
  %14 = load i64, i64* %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %12
  %20 = load i64, i64* %4, align 8
  %21 = trunc i64 %20 to i32
  %22 = shl i32 1, %21
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* %5, align 8
  %25 = or i64 %24, %23
  store i64 %25, i64* %5, align 8
  br label %26

26:                                               ; preds = %19, %12
  br label %27

27:                                               ; preds = %26
  %28 = load i64, i64* %4, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %4, align 8
  br label %8

30:                                               ; preds = %8
  %31 = load %struct.snd_mixer*, %struct.snd_mixer** %2, align 8
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @mix_setdevs(%struct.snd_mixer* %31, i64 %32)
  store i64 0, i64* %5, align 8
  store i64 0, i64* %4, align 8
  br label %34

34:                                               ; preds = %53, %30
  %35 = load i64, i64* %4, align 8
  %36 = load i64, i64* @SOUND_MIXER_NRDEVICES, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %56

38:                                               ; preds = %34
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cmt, align 8
  %40 = load i64, i64* %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %38
  %46 = load i64, i64* %4, align 8
  %47 = trunc i64 %46 to i32
  %48 = shl i32 1, %47
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* %5, align 8
  %51 = or i64 %50, %49
  store i64 %51, i64* %5, align 8
  br label %52

52:                                               ; preds = %45, %38
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %4, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %4, align 8
  br label %34

56:                                               ; preds = %34
  %57 = load %struct.snd_mixer*, %struct.snd_mixer** %2, align 8
  %58 = load i64, i64* %5, align 8
  %59 = call i32 @mix_setrecdevs(%struct.snd_mixer* %57, i64 %58)
  %60 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %61 = load i32, i32* @CMPCI_SB16_MIXER_RESET, align 4
  %62 = call i32 @cmimix_wr(%struct.sc_info* %60, i32 %61, i32 0)
  %63 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %64 = load i32, i32* @CMPCI_SB16_MIXER_ADCMIX_L, align 4
  %65 = call i32 @cmimix_wr(%struct.sc_info* %63, i32 %64, i32 0)
  %66 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %67 = load i32, i32* @CMPCI_SB16_MIXER_ADCMIX_R, align 4
  %68 = call i32 @cmimix_wr(%struct.sc_info* %66, i32 %67, i32 0)
  %69 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %70 = load i32, i32* @CMPCI_SB16_MIXER_OUTMIX, align 4
  %71 = load i32, i32* @CMPCI_SB16_SW_CD, align 4
  %72 = load i32, i32* @CMPCI_SB16_SW_MIC, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @CMPCI_SB16_SW_LINE, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @cmimix_wr(%struct.sc_info* %69, i32 %70, i32 %75)
  ret i32 0
}

declare dso_local %struct.sc_info* @mix_getdevinfo(%struct.snd_mixer*) #1

declare dso_local i32 @mix_setdevs(%struct.snd_mixer*, i64) #1

declare dso_local i32 @mix_setrecdevs(%struct.snd_mixer*, i64) #1

declare dso_local i32 @cmimix_wr(%struct.sc_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
