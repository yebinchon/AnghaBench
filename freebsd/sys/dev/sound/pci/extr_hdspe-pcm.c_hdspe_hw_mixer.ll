; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_hdspe-pcm.c_hdspe_hw_mixer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_hdspe-pcm.c_hdspe_hw_mixer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_chinfo = type { i64, %struct.sc_pcminfo* }
%struct.sc_pcminfo = type { %struct.sc_info* }
%struct.sc_info = type { i32 }

@PCMDIR_PLAY = common dso_local global i64 0, align 8
@HDSPE_MIXER_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sc_chinfo*, i32, i32, i16)* @hdspe_hw_mixer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdspe_hw_mixer(%struct.sc_chinfo* %0, i32 %1, i32 %2, i16 zeroext %3) #0 {
  %5 = alloca %struct.sc_chinfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca %struct.sc_pcminfo*, align 8
  %10 = alloca %struct.sc_info*, align 8
  %11 = alloca i32, align 4
  store %struct.sc_chinfo* %0, %struct.sc_chinfo** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i16 %3, i16* %8, align 2
  %12 = load %struct.sc_chinfo*, %struct.sc_chinfo** %5, align 8
  %13 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %12, i32 0, i32 1
  %14 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %13, align 8
  store %struct.sc_pcminfo* %14, %struct.sc_pcminfo** %9, align 8
  %15 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %9, align 8
  %16 = getelementptr inbounds %struct.sc_pcminfo, %struct.sc_pcminfo* %15, i32 0, i32 0
  %17 = load %struct.sc_info*, %struct.sc_info** %16, align 8
  store %struct.sc_info* %17, %struct.sc_info** %10, align 8
  store i32 0, i32* %11, align 4
  %18 = load %struct.sc_chinfo*, %struct.sc_chinfo** %5, align 8
  %19 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PCMDIR_PLAY, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32 64, i32* %11, align 4
  br label %24

24:                                               ; preds = %23, %4
  %25 = load %struct.sc_info*, %struct.sc_info** %10, align 8
  %26 = load i64, i64* @HDSPE_MIXER_BASE, align 8
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %7, align 4
  %29 = add i32 %27, %28
  %30 = load i32, i32* %6, align 4
  %31 = mul i32 128, %30
  %32 = add i32 %29, %31
  %33 = zext i32 %32 to i64
  %34 = mul i64 %33, 4
  %35 = add i64 %26, %34
  %36 = load i16, i16* %8, align 2
  %37 = zext i16 %36 to i32
  %38 = and i32 %37, 65535
  %39 = trunc i32 %38 to i16
  %40 = call i32 @hdspe_write_4(%struct.sc_info* %25, i64 %35, i16 zeroext %39)
  ret i32 0
}

declare dso_local i32 @hdspe_write_4(%struct.sc_info*, i64, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
