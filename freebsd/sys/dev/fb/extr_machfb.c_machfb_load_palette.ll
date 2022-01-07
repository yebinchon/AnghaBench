; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_machfb.c_machfb_load_palette.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_machfb.c_machfb_load_palette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.machfb_softc = type { i32 }

@DAC_RINDEX = common dso_local global i32 0, align 4
@DAC_WINDEX = common dso_local global i32 0, align 4
@DAC_MASK = common dso_local global i32 0, align 4
@DAC_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @machfb_load_palette to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @machfb_load_palette(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.machfb_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = bitcast i32* %10 to %struct.machfb_softc*
  store %struct.machfb_softc* %11, %struct.machfb_softc** %5, align 8
  %12 = load %struct.machfb_softc*, %struct.machfb_softc** %5, align 8
  %13 = load i32, i32* @DAC_RINDEX, align 4
  %14 = call i32 @regrb(%struct.machfb_softc* %12, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.machfb_softc*, %struct.machfb_softc** %5, align 8
  %16 = load i32, i32* @DAC_WINDEX, align 4
  %17 = call i32 @regrb(%struct.machfb_softc* %15, i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load %struct.machfb_softc*, %struct.machfb_softc** %5, align 8
  %19 = load i32, i32* @DAC_MASK, align 4
  %20 = call i32 @regrb(%struct.machfb_softc* %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.machfb_softc*, %struct.machfb_softc** %5, align 8
  %22 = load i32, i32* @DAC_MASK, align 4
  %23 = call i32 @regwb(%struct.machfb_softc* %21, i32 %22, i32 255)
  %24 = load %struct.machfb_softc*, %struct.machfb_softc** %5, align 8
  %25 = load i32, i32* @DAC_WINDEX, align 4
  %26 = call i32 @regwb(%struct.machfb_softc* %24, i32 %25, i32 0)
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %39, %2
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 768
  br i1 %29, label %30, label %42

30:                                               ; preds = %27
  %31 = load %struct.machfb_softc*, %struct.machfb_softc** %5, align 8
  %32 = load i32, i32* @DAC_DATA, align 4
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @regwb(%struct.machfb_softc* %31, i32 %32, i32 %37)
  br label %39

39:                                               ; preds = %30
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %27

42:                                               ; preds = %27
  %43 = load %struct.machfb_softc*, %struct.machfb_softc** %5, align 8
  %44 = load i32, i32* @DAC_MASK, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @regwb(%struct.machfb_softc* %43, i32 %44, i32 %45)
  %47 = load %struct.machfb_softc*, %struct.machfb_softc** %5, align 8
  %48 = load i32, i32* @DAC_RINDEX, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @regwb(%struct.machfb_softc* %47, i32 %48, i32 %49)
  %51 = load %struct.machfb_softc*, %struct.machfb_softc** %5, align 8
  %52 = load i32, i32* @DAC_WINDEX, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @regwb(%struct.machfb_softc* %51, i32 %52, i32 %53)
  ret i32 0
}

declare dso_local i32 @regrb(%struct.machfb_softc*, i32) #1

declare dso_local i32 @regwb(%struct.machfb_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
