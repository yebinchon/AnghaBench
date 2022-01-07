; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_nvram.c_sfxge_nvram_erase.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_nvram.c_sfxge_nvram_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_softc = type { i64, i32* }

@EFX_NVRAM_DYNAMIC_CFG = common dso_local global i32 0, align 4
@EFX_FAMILY_SIENA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sfxge_softc*, i32)* @sfxge_nvram_erase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfxge_nvram_erase(%struct.sfxge_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sfxge_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.sfxge_softc* %0, %struct.sfxge_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %10 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @EFX_NVRAM_DYNAMIC_CFG, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %17 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @EFX_FAMILY_SIENA, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %37

22:                                               ; preds = %15, %2
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @efx_nvram_rw_start(i32* %23, i32 %24, i64* %7)
  store i32 %25, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %3, align 4
  br label %37

29:                                               ; preds = %22
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @efx_nvram_erase(i32* %30, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @efx_nvram_rw_finish(i32* %33, i32 %34, i32* null)
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %29, %27, %21
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @efx_nvram_rw_start(i32*, i32, i64*) #1

declare dso_local i32 @efx_nvram_erase(i32*, i32) #1

declare dso_local i32 @efx_nvram_rw_finish(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
