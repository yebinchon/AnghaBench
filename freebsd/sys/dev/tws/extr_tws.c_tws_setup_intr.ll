; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws.c_tws_setup_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws.c_tws_setup_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tws_softc = type { i32*, i32*, i32 }

@INTR_TYPE_CAM = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@tws_intr = common dso_local global i32 0, align 4
@SETUP_INTR_RES = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tws_setup_intr(%struct.tws_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tws_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tws_softc* %0, %struct.tws_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %52, %2
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %55

12:                                               ; preds = %8
  %13 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %14 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %51, label %21

21:                                               ; preds = %12
  %22 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %23 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %26 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @INTR_TYPE_CAM, align 4
  %33 = load i32, i32* @INTR_MPSAFE, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @tws_intr, align 4
  %36 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %37 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %38 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = call i32 @bus_setup_intr(i32 %24, i32 %31, i32 %34, i32* null, i32 %35, %struct.tws_softc* %36, i32* %42)
  store i32 %43, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %21
  %46 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %47 = load i32, i32* @SETUP_INTR_RES, align 4
  %48 = call i32 @tws_log(%struct.tws_softc* %46, i32 %47)
  %49 = load i32, i32* @FAILURE, align 4
  store i32 %49, i32* %3, align 4
  br label %57

50:                                               ; preds = %21
  br label %51

51:                                               ; preds = %50, %12
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %8

55:                                               ; preds = %8
  %56 = load i32, i32* @SUCCESS, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %55, %45
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @bus_setup_intr(i32, i32, i32, i32*, i32, %struct.tws_softc*, i32*) #1

declare dso_local i32 @tws_log(%struct.tws_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
