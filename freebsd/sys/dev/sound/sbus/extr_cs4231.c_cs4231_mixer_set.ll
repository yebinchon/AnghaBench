; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/sbus/extr_cs4231.c_cs4231_mixer_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/sbus/extr_cs4231.c_cs4231_mixer_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer = type { i32 }
%struct.cs4231_softc = type { i32 }

@cs4231_mix_table = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixer*, i64, i64, i64)* @cs4231_mixer_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs4231_mixer_set(%struct.snd_mixer* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.snd_mixer*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.cs4231_softc*, align 8
  store %struct.snd_mixer* %0, %struct.snd_mixer** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.snd_mixer*, %struct.snd_mixer** %5, align 8
  %11 = call %struct.cs4231_softc* @mix_getdevinfo(%struct.snd_mixer* %10)
  store %struct.cs4231_softc* %11, %struct.cs4231_softc** %9, align 8
  %12 = load %struct.cs4231_softc*, %struct.cs4231_softc** %9, align 8
  %13 = call i32 @CS4231_LOCK(%struct.cs4231_softc* %12)
  %14 = load %struct.cs4231_softc*, %struct.cs4231_softc** %9, align 8
  %15 = load i32**, i32*** @cs4231_mix_table, align 8
  %16 = load i64, i64* %6, align 8
  %17 = getelementptr inbounds i32*, i32** %15, i64 %16
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @cs4231_mixer_set_value(%struct.cs4231_softc* %14, i32* %19, i64 %20)
  %22 = load %struct.cs4231_softc*, %struct.cs4231_softc** %9, align 8
  %23 = load i32**, i32*** @cs4231_mix_table, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds i32*, i32** %23, i64 %24
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @cs4231_mixer_set_value(%struct.cs4231_softc* %22, i32* %27, i64 %28)
  %30 = load %struct.cs4231_softc*, %struct.cs4231_softc** %9, align 8
  %31 = call i32 @CS4231_UNLOCK(%struct.cs4231_softc* %30)
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = shl i64 %33, 8
  %35 = or i64 %32, %34
  %36 = trunc i64 %35 to i32
  ret i32 %36
}

declare dso_local %struct.cs4231_softc* @mix_getdevinfo(%struct.snd_mixer*) #1

declare dso_local i32 @CS4231_LOCK(%struct.cs4231_softc*) #1

declare dso_local i32 @cs4231_mixer_set_value(%struct.cs4231_softc*, i32*, i64) #1

declare dso_local i32 @CS4231_UNLOCK(%struct.cs4231_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
