; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_creator.c_creator_blank_display.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_creator.c_creator_blank_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.creator_softc = type { i32 }

@FFB_DAC = common dso_local global i32 0, align 4
@FFB_DAC_TYPE = common dso_local global i32 0, align 4
@FFB_DAC_CFG_TGEN = common dso_local global i32 0, align 4
@FFB_DAC_VALUE = common dso_local global i32 0, align 4
@FFB_DAC_CFG_TGEN_VIDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @creator_blank_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @creator_blank_display(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.creator_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = bitcast i32* %8 to %struct.creator_softc*
  store %struct.creator_softc* %9, %struct.creator_softc** %5, align 8
  %10 = load %struct.creator_softc*, %struct.creator_softc** %5, align 8
  %11 = load i32, i32* @FFB_DAC, align 4
  %12 = load i32, i32* @FFB_DAC_TYPE, align 4
  %13 = load i32, i32* @FFB_DAC_CFG_TGEN, align 4
  %14 = call i32 @FFB_WRITE(%struct.creator_softc* %10, i32 %11, i32 %12, i32 %13)
  %15 = load %struct.creator_softc*, %struct.creator_softc** %5, align 8
  %16 = load i32, i32* @FFB_DAC, align 4
  %17 = load i32, i32* @FFB_DAC_VALUE, align 4
  %18 = call i32 @FFB_READ(%struct.creator_softc* %15, i32 %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %4, align 4
  switch i32 %19, label %29 [
    i32 130, label %20
    i32 131, label %24
    i32 129, label %24
    i32 128, label %24
  ]

20:                                               ; preds = %2
  %21 = load i32, i32* @FFB_DAC_CFG_TGEN_VIDE, align 4
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %6, align 4
  br label %29

24:                                               ; preds = %2, %2, %2
  %25 = load i32, i32* @FFB_DAC_CFG_TGEN_VIDE, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %2, %24, %20
  %30 = load %struct.creator_softc*, %struct.creator_softc** %5, align 8
  %31 = load i32, i32* @FFB_DAC, align 4
  %32 = load i32, i32* @FFB_DAC_TYPE, align 4
  %33 = load i32, i32* @FFB_DAC_CFG_TGEN, align 4
  %34 = call i32 @FFB_WRITE(%struct.creator_softc* %30, i32 %31, i32 %32, i32 %33)
  %35 = load %struct.creator_softc*, %struct.creator_softc** %5, align 8
  %36 = load i32, i32* @FFB_DAC, align 4
  %37 = load i32, i32* @FFB_DAC_VALUE, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @FFB_WRITE(%struct.creator_softc* %35, i32 %36, i32 %37, i32 %38)
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %53, %29
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 10
  br i1 %42, label %43, label %56

43:                                               ; preds = %40
  %44 = load %struct.creator_softc*, %struct.creator_softc** %5, align 8
  %45 = load i32, i32* @FFB_DAC, align 4
  %46 = load i32, i32* @FFB_DAC_TYPE, align 4
  %47 = load i32, i32* @FFB_DAC_CFG_TGEN, align 4
  %48 = call i32 @FFB_WRITE(%struct.creator_softc* %44, i32 %45, i32 %46, i32 %47)
  %49 = load %struct.creator_softc*, %struct.creator_softc** %5, align 8
  %50 = load i32, i32* @FFB_DAC, align 4
  %51 = load i32, i32* @FFB_DAC_VALUE, align 4
  %52 = call i32 @FFB_READ(%struct.creator_softc* %49, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %43
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %40

56:                                               ; preds = %40
  ret i32 0
}

declare dso_local i32 @FFB_WRITE(%struct.creator_softc*, i32, i32, i32) #1

declare dso_local i32 @FFB_READ(%struct.creator_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
