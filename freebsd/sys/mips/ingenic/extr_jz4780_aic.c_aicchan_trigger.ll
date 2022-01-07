; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_aic.c_aicchan_trigger.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_aic.c_aicchan_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_pcminfo = type { %struct.aic_softc* }
%struct.aic_softc = type { i32, i32, i32, i32 }
%struct.sc_chinfo = type { i32, %struct.sc_pcminfo* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @aicchan_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aicchan_trigger(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sc_pcminfo*, align 8
  %8 = alloca %struct.sc_chinfo*, align 8
  %9 = alloca %struct.aic_softc*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.sc_chinfo*
  store %struct.sc_chinfo* %11, %struct.sc_chinfo** %8, align 8
  %12 = load %struct.sc_chinfo*, %struct.sc_chinfo** %8, align 8
  %13 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %12, i32 0, i32 1
  %14 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %13, align 8
  store %struct.sc_pcminfo* %14, %struct.sc_pcminfo** %7, align 8
  %15 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %7, align 8
  %16 = getelementptr inbounds %struct.sc_pcminfo, %struct.sc_pcminfo* %15, i32 0, i32 0
  %17 = load %struct.aic_softc*, %struct.aic_softc** %16, align 8
  store %struct.aic_softc* %17, %struct.aic_softc** %9, align 8
  %18 = load %struct.aic_softc*, %struct.aic_softc** %9, align 8
  %19 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @snd_mtxlock(i32 %20)
  %22 = load i32, i32* %6, align 4
  switch i32 %22, label %44 [
    i32 129, label %23
    i32 128, label %30
    i32 130, label %30
  ]

23:                                               ; preds = %3
  %24 = load %struct.sc_chinfo*, %struct.sc_chinfo** %8, align 8
  %25 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load %struct.aic_softc*, %struct.aic_softc** %9, align 8
  %27 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %26, i32 0, i32 3
  store i32 0, i32* %27, align 4
  %28 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %7, align 8
  %29 = call i32 @aic_start(%struct.sc_pcminfo* %28)
  br label %44

30:                                               ; preds = %3, %3
  %31 = load %struct.sc_chinfo*, %struct.sc_chinfo** %8, align 8
  %32 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  %33 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %7, align 8
  %34 = call i32 @aic_stop(%struct.sc_pcminfo* %33)
  %35 = load %struct.aic_softc*, %struct.aic_softc** %9, align 8
  %36 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %35, i32 0, i32 3
  store i32 0, i32* %36, align 4
  %37 = load %struct.aic_softc*, %struct.aic_softc** %9, align 8
  %38 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.aic_softc*, %struct.aic_softc** %9, align 8
  %41 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @bzero(i32 %39, i32 %42)
  br label %44

44:                                               ; preds = %3, %30, %23
  %45 = load %struct.aic_softc*, %struct.aic_softc** %9, align 8
  %46 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @snd_mtxunlock(i32 %47)
  ret i32 0
}

declare dso_local i32 @snd_mtxlock(i32) #1

declare dso_local i32 @aic_start(%struct.sc_pcminfo*) #1

declare dso_local i32 @aic_stop(%struct.sc_pcminfo*) #1

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i32 @snd_mtxunlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
