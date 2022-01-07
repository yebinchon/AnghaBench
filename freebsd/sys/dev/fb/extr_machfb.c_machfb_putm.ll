; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_machfb.c_machfb_putm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_machfb.c_machfb_putm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.machfb_softc = type { i32, i32, i32 }

@MACHFB_CUREN = common dso_local global i32 0, align 4
@CUR_HORZ_VERT_OFF = common dso_local global i32 0, align 4
@GEN_TEST_CNTL = common dso_local global i32 0, align 4
@CRTC_DBL_SCAN_EN = common dso_local global i32 0, align 4
@CUR_HORZ_VERT_POSN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32*, i32, i32, i32)* @machfb_putm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @machfb_putm(i32* %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.machfb_softc*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %18 = load i32*, i32** %9, align 8
  %19 = bitcast i32* %18 to %struct.machfb_softc*
  store %struct.machfb_softc* %19, %struct.machfb_softc** %16, align 8
  %20 = load %struct.machfb_softc*, %struct.machfb_softc** %16, align 8
  %21 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @MACHFB_CUREN, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %7
  %27 = load %struct.machfb_softc*, %struct.machfb_softc** %16, align 8
  %28 = call i32 @machfb_cursor_install(%struct.machfb_softc* %27)
  store i32 %28, i32* %17, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* %17, align 4
  store i32 %31, i32* %8, align 4
  br label %71

32:                                               ; preds = %26, %7
  %33 = load %struct.machfb_softc*, %struct.machfb_softc** %16, align 8
  %34 = call i32 @machfb_cursor_enable(%struct.machfb_softc* %33, i32 0)
  br label %35

35:                                               ; preds = %32
  %36 = load %struct.machfb_softc*, %struct.machfb_softc** %16, align 8
  %37 = load i32, i32* @CUR_HORZ_VERT_OFF, align 4
  %38 = call i32 @regw(%struct.machfb_softc* %36, i32 %37, i32 0)
  %39 = load %struct.machfb_softc*, %struct.machfb_softc** %16, align 8
  %40 = load i32, i32* @GEN_TEST_CNTL, align 4
  %41 = call i32 @regr(%struct.machfb_softc* %39, i32 %40)
  %42 = load i32, i32* @CRTC_DBL_SCAN_EN, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %35
  %46 = load i32, i32* %11, align 4
  %47 = shl i32 %46, 1
  store i32 %47, i32* %11, align 4
  br label %48

48:                                               ; preds = %45, %35
  %49 = load %struct.machfb_softc*, %struct.machfb_softc** %16, align 8
  %50 = load i32, i32* @CUR_HORZ_VERT_POSN, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.machfb_softc*, %struct.machfb_softc** %16, align 8
  %53 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %51, %54
  %56 = shl i32 %55, 16
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.machfb_softc*, %struct.machfb_softc** %16, align 8
  %59 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %57, %60
  %62 = or i32 %56, %61
  %63 = call i32 @regw(%struct.machfb_softc* %49, i32 %50, i32 %62)
  %64 = load %struct.machfb_softc*, %struct.machfb_softc** %16, align 8
  %65 = call i32 @machfb_cursor_enable(%struct.machfb_softc* %64, i32 1)
  %66 = load i32, i32* @MACHFB_CUREN, align 4
  %67 = load %struct.machfb_softc*, %struct.machfb_softc** %16, align 8
  %68 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  store i32 0, i32* %8, align 4
  br label %71

71:                                               ; preds = %48, %30
  %72 = load i32, i32* %8, align 4
  ret i32 %72
}

declare dso_local i32 @machfb_cursor_install(%struct.machfb_softc*) #1

declare dso_local i32 @machfb_cursor_enable(%struct.machfb_softc*, i32) #1

declare dso_local i32 @regw(%struct.machfb_softc*, i32, i32) #1

declare dso_local i32 @regr(%struct.machfb_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
