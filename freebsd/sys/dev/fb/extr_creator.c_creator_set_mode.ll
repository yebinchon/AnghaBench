; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_creator.c_creator_set_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_creator.c_creator_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.creator_softc = type { i32, i32, i32, i32, i32, i64 }

@FFB_FBC = common dso_local global i32 0, align 4
@FFB_FBC_PPC = common dso_local global i32 0, align 4
@FBC_PPC_VCE_DIS = common dso_local global i32 0, align 4
@FBC_PPC_TBE_OPAQUE = common dso_local global i32 0, align 4
@FBC_PPC_APE_DIS = common dso_local global i32 0, align 4
@FBC_PPC_CS_CONST = common dso_local global i32 0, align 4
@FFB_FBC_FBC = common dso_local global i32 0, align 4
@FFB_FBC_WB_A = common dso_local global i32 0, align 4
@FFB_FBC_RB_A = common dso_local global i32 0, align 4
@FFB_FBC_SB_BOTH = common dso_local global i32 0, align 4
@FFB_FBC_XE_OFF = common dso_local global i32 0, align 4
@FFB_FBC_RGBE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @creator_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @creator_set_mode(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.creator_softc*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32*, i32** %3, align 8
  %7 = bitcast i32* %6 to %struct.creator_softc*
  store %struct.creator_softc* %7, %struct.creator_softc** %5, align 8
  %8 = load %struct.creator_softc*, %struct.creator_softc** %5, align 8
  %9 = getelementptr inbounds %struct.creator_softc, %struct.creator_softc* %8, i32 0, i32 0
  store i32 -1, i32* %9, align 8
  %10 = load %struct.creator_softc*, %struct.creator_softc** %5, align 8
  %11 = getelementptr inbounds %struct.creator_softc, %struct.creator_softc* %10, i32 0, i32 1
  store i32 -1, i32* %11, align 4
  %12 = load %struct.creator_softc*, %struct.creator_softc** %5, align 8
  %13 = getelementptr inbounds %struct.creator_softc, %struct.creator_softc* %12, i32 0, i32 2
  store i32 -1, i32* %13, align 8
  %14 = load %struct.creator_softc*, %struct.creator_softc** %5, align 8
  %15 = getelementptr inbounds %struct.creator_softc, %struct.creator_softc* %14, i32 0, i32 3
  store i32 -1, i32* %15, align 4
  %16 = load %struct.creator_softc*, %struct.creator_softc** %5, align 8
  %17 = getelementptr inbounds %struct.creator_softc, %struct.creator_softc* %16, i32 0, i32 4
  store i32 -1, i32* %17, align 8
  %18 = load %struct.creator_softc*, %struct.creator_softc** %5, align 8
  %19 = call i32 @creator_ras_wait(%struct.creator_softc* %18)
  %20 = load %struct.creator_softc*, %struct.creator_softc** %5, align 8
  %21 = getelementptr inbounds %struct.creator_softc, %struct.creator_softc* %20, i32 0, i32 5
  store i64 0, i64* %21, align 8
  %22 = load %struct.creator_softc*, %struct.creator_softc** %5, align 8
  %23 = call i32 @creator_ras_fifo_wait(%struct.creator_softc* %22, i32 2)
  %24 = load %struct.creator_softc*, %struct.creator_softc** %5, align 8
  %25 = load i32, i32* @FFB_FBC, align 4
  %26 = load i32, i32* @FFB_FBC_PPC, align 4
  %27 = load i32, i32* @FBC_PPC_VCE_DIS, align 4
  %28 = load i32, i32* @FBC_PPC_TBE_OPAQUE, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @FBC_PPC_APE_DIS, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @FBC_PPC_CS_CONST, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @FFB_WRITE(%struct.creator_softc* %24, i32 %25, i32 %26, i32 %33)
  %35 = load %struct.creator_softc*, %struct.creator_softc** %5, align 8
  %36 = load i32, i32* @FFB_FBC, align 4
  %37 = load i32, i32* @FFB_FBC_FBC, align 4
  %38 = load i32, i32* @FFB_FBC_WB_A, align 4
  %39 = load i32, i32* @FFB_FBC_RB_A, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @FFB_FBC_SB_BOTH, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @FFB_FBC_XE_OFF, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @FFB_FBC_RGBE_MASK, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @FFB_WRITE(%struct.creator_softc* %35, i32 %36, i32 %37, i32 %46)
  ret i32 0
}

declare dso_local i32 @creator_ras_wait(%struct.creator_softc*) #1

declare dso_local i32 @creator_ras_fifo_wait(%struct.creator_softc*, i32) #1

declare dso_local i32 @FFB_WRITE(%struct.creator_softc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
