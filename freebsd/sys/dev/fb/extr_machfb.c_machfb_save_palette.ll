; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_machfb.c_machfb_save_palette.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_machfb.c_machfb_save_palette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.machfb_softc = type { i32 }

@DAC_RINDEX = common dso_local global i32 0, align 4
@DAC_WINDEX = common dso_local global i32 0, align 4
@DAC_MASK = common dso_local global i32 0, align 4
@DAC_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8**)* @machfb_save_palette to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @machfb_save_palette(i32* %0, i8** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.machfb_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8** %1, i8*** %4, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = bitcast i32* %10 to %struct.machfb_softc*
  store %struct.machfb_softc* %11, %struct.machfb_softc** %5, align 8
  %12 = load %struct.machfb_softc*, %struct.machfb_softc** %5, align 8
  %13 = load i32, i32* @DAC_RINDEX, align 4
  %14 = call i8* @regrb(%struct.machfb_softc* %12, i32 %13)
  %15 = ptrtoint i8* %14 to i32
  store i32 %15, i32* %8, align 4
  %16 = load %struct.machfb_softc*, %struct.machfb_softc** %5, align 8
  %17 = load i32, i32* @DAC_WINDEX, align 4
  %18 = call i8* @regrb(%struct.machfb_softc* %16, i32 %17)
  %19 = ptrtoint i8* %18 to i32
  store i32 %19, i32* %9, align 4
  %20 = load %struct.machfb_softc*, %struct.machfb_softc** %5, align 8
  %21 = load i32, i32* @DAC_MASK, align 4
  %22 = call i8* @regrb(%struct.machfb_softc* %20, i32 %21)
  %23 = ptrtoint i8* %22 to i32
  store i32 %23, i32* %7, align 4
  %24 = load %struct.machfb_softc*, %struct.machfb_softc** %5, align 8
  %25 = load i32, i32* @DAC_MASK, align 4
  %26 = call i32 @regwb(%struct.machfb_softc* %24, i32 %25, i32 255)
  %27 = load %struct.machfb_softc*, %struct.machfb_softc** %5, align 8
  %28 = load i32, i32* @DAC_RINDEX, align 4
  %29 = call i32 @regwb(%struct.machfb_softc* %27, i32 %28, i32 0)
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %41, %2
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 768
  br i1 %32, label %33, label %44

33:                                               ; preds = %30
  %34 = load %struct.machfb_softc*, %struct.machfb_softc** %5, align 8
  %35 = load i32, i32* @DAC_DATA, align 4
  %36 = call i8* @regrb(%struct.machfb_softc* %34, i32 %35)
  %37 = load i8**, i8*** %4, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  store i8* %36, i8** %40, align 8
  br label %41

41:                                               ; preds = %33
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %30

44:                                               ; preds = %30
  %45 = load %struct.machfb_softc*, %struct.machfb_softc** %5, align 8
  %46 = load i32, i32* @DAC_MASK, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @regwb(%struct.machfb_softc* %45, i32 %46, i32 %47)
  %49 = load %struct.machfb_softc*, %struct.machfb_softc** %5, align 8
  %50 = load i32, i32* @DAC_RINDEX, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @regwb(%struct.machfb_softc* %49, i32 %50, i32 %51)
  %53 = load %struct.machfb_softc*, %struct.machfb_softc** %5, align 8
  %54 = load i32, i32* @DAC_WINDEX, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @regwb(%struct.machfb_softc* %53, i32 %54, i32 %55)
  ret i32 0
}

declare dso_local i8* @regrb(%struct.machfb_softc*, i32) #1

declare dso_local i32 @regwb(%struct.machfb_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
