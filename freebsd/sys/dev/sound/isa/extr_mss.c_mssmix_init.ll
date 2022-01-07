; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_mssmix_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_mssmix_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer = type { i32 }
%struct.mss_info = type { i32 }

@MODE2_MIXER_DEVICES = common dso_local global i32 0, align 4
@MSS_REC_DEVICES = common dso_local global i32 0, align 4
@OPTI930_MIXER_DEVICES = common dso_local global i32 0, align 4
@OPTI931_MIXER_DEVICES = common dso_local global i32 0, align 4
@MODE1_MIXER_DEVICES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixer*)* @mssmix_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mssmix_init(%struct.snd_mixer* %0) #0 {
  %2 = alloca %struct.snd_mixer*, align 8
  %3 = alloca %struct.mss_info*, align 8
  store %struct.snd_mixer* %0, %struct.snd_mixer** %2, align 8
  %4 = load %struct.snd_mixer*, %struct.snd_mixer** %2, align 8
  %5 = call %struct.mss_info* @mix_getdevinfo(%struct.snd_mixer* %4)
  store %struct.mss_info* %5, %struct.mss_info** %3, align 8
  %6 = load %struct.snd_mixer*, %struct.snd_mixer** %2, align 8
  %7 = load i32, i32* @MODE2_MIXER_DEVICES, align 4
  %8 = call i32 @mix_setdevs(%struct.snd_mixer* %6, i32 %7)
  %9 = load %struct.snd_mixer*, %struct.snd_mixer** %2, align 8
  %10 = load i32, i32* @MSS_REC_DEVICES, align 4
  %11 = call i32 @mix_setrecdevs(%struct.snd_mixer* %9, i32 %10)
  %12 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %13 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %44 [
    i32 129, label %15
    i32 128, label %19
    i32 132, label %31
    i32 130, label %35
    i32 131, label %35
  ]

15:                                               ; preds = %1
  %16 = load %struct.snd_mixer*, %struct.snd_mixer** %2, align 8
  %17 = load i32, i32* @OPTI930_MIXER_DEVICES, align 4
  %18 = call i32 @mix_setdevs(%struct.snd_mixer* %16, i32 %17)
  br label %44

19:                                               ; preds = %1
  %20 = load %struct.snd_mixer*, %struct.snd_mixer** %2, align 8
  %21 = load i32, i32* @OPTI931_MIXER_DEVICES, align 4
  %22 = call i32 @mix_setdevs(%struct.snd_mixer* %20, i32 %21)
  %23 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %24 = call i32 @mss_lock(%struct.mss_info* %23)
  %25 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %26 = call i32 @ad_write(%struct.mss_info* %25, i32 20, i32 136)
  %27 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %28 = call i32 @ad_write(%struct.mss_info* %27, i32 21, i32 136)
  %29 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %30 = call i32 @mss_unlock(%struct.mss_info* %29)
  br label %44

31:                                               ; preds = %1
  %32 = load %struct.snd_mixer*, %struct.snd_mixer** %2, align 8
  %33 = load i32, i32* @MODE1_MIXER_DEVICES, align 4
  %34 = call i32 @mix_setdevs(%struct.snd_mixer* %32, i32 %33)
  br label %44

35:                                               ; preds = %1, %1
  %36 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %37 = call i32 @mss_lock(%struct.mss_info* %36)
  %38 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %39 = call i32 @ad_write(%struct.mss_info* %38, i32 22, i32 136)
  %40 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %41 = call i32 @ad_write(%struct.mss_info* %40, i32 23, i32 136)
  %42 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %43 = call i32 @mss_unlock(%struct.mss_info* %42)
  br label %44

44:                                               ; preds = %1, %35, %31, %19, %15
  ret i32 0
}

declare dso_local %struct.mss_info* @mix_getdevinfo(%struct.snd_mixer*) #1

declare dso_local i32 @mix_setdevs(%struct.snd_mixer*, i32) #1

declare dso_local i32 @mix_setrecdevs(%struct.snd_mixer*, i32) #1

declare dso_local i32 @mss_lock(%struct.mss_info*) #1

declare dso_local i32 @ad_write(%struct.mss_info*, i32, i32) #1

declare dso_local i32 @mss_unlock(%struct.mss_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
