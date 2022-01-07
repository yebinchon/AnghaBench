; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws.c_tws_teardown_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws.c_tws_teardown_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tws_softc = type { i32, i32**, i32*, i32 }

@SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tws_teardown_intr(%struct.tws_softc* %0) #0 {
  %2 = alloca %struct.tws_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.tws_softc* %0, %struct.tws_softc** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %46, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %8 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %49

11:                                               ; preds = %5
  %12 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %13 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %12, i32 0, i32 1
  %14 = load i32**, i32*** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32*, i32** %14, i64 %16
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %45

20:                                               ; preds = %11
  %21 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %22 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %25 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %32 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %31, i32 0, i32 1
  %33 = load i32**, i32*** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32*, i32** %33, i64 %35
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @bus_teardown_intr(i32 %23, i32 %30, i32* %37)
  store i32 %38, i32* %4, align 4
  %39 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %40 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %39, i32 0, i32 1
  %41 = load i32**, i32*** %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32*, i32** %41, i64 %43
  store i32* null, i32** %44, align 8
  br label %45

45:                                               ; preds = %20, %11
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %5

49:                                               ; preds = %5
  %50 = load i32, i32* @SUCCESS, align 4
  ret i32 %50
}

declare dso_local i32 @bus_teardown_intr(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
