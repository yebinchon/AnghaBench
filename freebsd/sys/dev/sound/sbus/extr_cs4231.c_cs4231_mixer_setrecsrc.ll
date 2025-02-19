; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/sbus/extr_cs4231.c_cs4231_mixer_setrecsrc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/sbus/extr_cs4231.c_cs4231_mixer_setrecsrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer = type { i32 }
%struct.cs4231_softc = type { i32 }

@CS_IN_LINE = common dso_local global i32 0, align 4
@CS_IN_DAC = common dso_local global i32 0, align 4
@CS_IN_MIC = common dso_local global i32 0, align 4
@CS_LEFT_INPUT_CONTROL = common dso_local global i32 0, align 4
@CS_IN_MASK = common dso_local global i32 0, align 4
@CS_RIGHT_INPUT_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixer*, i32)* @cs4231_mixer_setrecsrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs4231_mixer_setrecsrc(%struct.snd_mixer* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_mixer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cs4231_softc*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_mixer* %0, %struct.snd_mixer** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_mixer*, %struct.snd_mixer** %3, align 8
  %8 = call %struct.cs4231_softc* @mix_getdevinfo(%struct.snd_mixer* %7)
  store %struct.cs4231_softc* %8, %struct.cs4231_softc** %5, align 8
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %15 [
    i32 129, label %10
    i32 130, label %12
    i32 128, label %14
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* @CS_IN_LINE, align 4
  store i32 %11, i32* %6, align 4
  br label %17

12:                                               ; preds = %2
  %13 = load i32, i32* @CS_IN_DAC, align 4
  store i32 %13, i32* %6, align 4
  br label %17

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %2, %14
  %16 = load i32, i32* @CS_IN_MIC, align 4
  store i32 %16, i32* %6, align 4
  store i32 128, i32* %4, align 4
  br label %17

17:                                               ; preds = %15, %12, %10
  %18 = load %struct.cs4231_softc*, %struct.cs4231_softc** %5, align 8
  %19 = call i32 @CS4231_LOCK(%struct.cs4231_softc* %18)
  %20 = load %struct.cs4231_softc*, %struct.cs4231_softc** %5, align 8
  %21 = load i32, i32* @CS_LEFT_INPUT_CONTROL, align 4
  %22 = load %struct.cs4231_softc*, %struct.cs4231_softc** %5, align 8
  %23 = load i32, i32* @CS_LEFT_INPUT_CONTROL, align 4
  %24 = call i32 @cs4231_read(%struct.cs4231_softc* %22, i32 %23)
  %25 = load i32, i32* @CS_IN_MASK, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @cs4231_write(%struct.cs4231_softc* %20, i32 %21, i32 %28)
  %30 = load %struct.cs4231_softc*, %struct.cs4231_softc** %5, align 8
  %31 = load i32, i32* @CS_RIGHT_INPUT_CONTROL, align 4
  %32 = load %struct.cs4231_softc*, %struct.cs4231_softc** %5, align 8
  %33 = load i32, i32* @CS_RIGHT_INPUT_CONTROL, align 4
  %34 = call i32 @cs4231_read(%struct.cs4231_softc* %32, i32 %33)
  %35 = load i32, i32* @CS_IN_MASK, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @cs4231_write(%struct.cs4231_softc* %30, i32 %31, i32 %38)
  %40 = load %struct.cs4231_softc*, %struct.cs4231_softc** %5, align 8
  %41 = call i32 @CS4231_UNLOCK(%struct.cs4231_softc* %40)
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %struct.cs4231_softc* @mix_getdevinfo(%struct.snd_mixer*) #1

declare dso_local i32 @CS4231_LOCK(%struct.cs4231_softc*) #1

declare dso_local i32 @cs4231_write(%struct.cs4231_softc*, i32, i32) #1

declare dso_local i32 @cs4231_read(%struct.cs4231_softc*, i32) #1

declare dso_local i32 @CS4231_UNLOCK(%struct.cs4231_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
