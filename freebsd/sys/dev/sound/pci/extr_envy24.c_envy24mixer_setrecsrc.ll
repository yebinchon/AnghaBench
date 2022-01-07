; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24.c_envy24mixer_setrecsrc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24.c_envy24mixer_setrecsrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer = type { i32 }
%struct.sc_info = type { i32, i32 }

@envy24_mixmap = common dso_local global i32* null, align 8
@ENVY24_CHAN_PLAY_SPDIF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.snd_mixer*, i64)* @envy24mixer_setrecsrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @envy24mixer_setrecsrc(%struct.snd_mixer* %0, i64 %1) #0 {
  %3 = alloca %struct.snd_mixer*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.sc_info*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_mixer* %0, %struct.snd_mixer** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.snd_mixer*, %struct.snd_mixer** %3, align 8
  %8 = call %struct.sc_info* @mix_getdevinfo(%struct.snd_mixer* %7)
  store %struct.sc_info* %8, %struct.sc_info** %5, align 8
  %9 = load i32*, i32** @envy24_mixmap, align 8
  %10 = load i64, i64* %4, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @ENVY24_CHAN_PLAY_SPDIF, align 4
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %19 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  br label %20

20:                                               ; preds = %16, %2
  %21 = load i64, i64* %4, align 8
  ret i64 %21
}

declare dso_local %struct.sc_info* @mix_getdevinfo(%struct.snd_mixer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
