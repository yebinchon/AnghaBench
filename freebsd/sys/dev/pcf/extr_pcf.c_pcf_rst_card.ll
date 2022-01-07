; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pcf/extr_pcf.c_pcf_rst_card.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pcf/extr_pcf.c_pcf_rst_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcf_softc = type { i32, i32 }

@PCF_DEFAULT_ADDR = common dso_local global i32 0, align 4
@PIN = common dso_local global i32 0, align 4
@ES1 = common dso_local global i32 0, align 4
@ESO = common dso_local global i32 0, align 4
@ENI = common dso_local global i32 0, align 4
@ACK = common dso_local global i32 0, align 4
@SLAVE_RECEIVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcf_rst_card(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.pcf_softc*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.pcf_softc* @DEVTOSOFTC(i32 %10)
  store %struct.pcf_softc* %11, %struct.pcf_softc** %9, align 8
  %12 = load %struct.pcf_softc*, %struct.pcf_softc** %9, align 8
  %13 = call i32 @PCF_LOCK(%struct.pcf_softc* %12)
  %14 = load i32*, i32** %8, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load %struct.pcf_softc*, %struct.pcf_softc** %9, align 8
  %18 = getelementptr inbounds %struct.pcf_softc, %struct.pcf_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %8, align 8
  store i32 %19, i32* %20, align 4
  br label %21

21:                                               ; preds = %16, %4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* @PCF_DEFAULT_ADDR, align 4
  %26 = load %struct.pcf_softc*, %struct.pcf_softc** %9, align 8
  %27 = getelementptr inbounds %struct.pcf_softc, %struct.pcf_softc* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  br label %32

28:                                               ; preds = %21
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.pcf_softc*, %struct.pcf_softc** %9, align 8
  %31 = getelementptr inbounds %struct.pcf_softc, %struct.pcf_softc* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  br label %32

32:                                               ; preds = %28, %24
  %33 = load %struct.pcf_softc*, %struct.pcf_softc** %9, align 8
  %34 = load i32, i32* @PIN, align 4
  %35 = call i32 @pcf_set_S1(%struct.pcf_softc* %33, i32 %34)
  %36 = load %struct.pcf_softc*, %struct.pcf_softc** %9, align 8
  %37 = load %struct.pcf_softc*, %struct.pcf_softc** %9, align 8
  %38 = getelementptr inbounds %struct.pcf_softc, %struct.pcf_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = ashr i32 %39, 1
  %41 = call i32 @pcf_set_S0(%struct.pcf_softc* %36, i32 %40)
  %42 = load %struct.pcf_softc*, %struct.pcf_softc** %9, align 8
  %43 = load i32, i32* @PIN, align 4
  %44 = load i32, i32* @ES1, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @pcf_set_S1(%struct.pcf_softc* %42, i32 %45)
  %47 = load i32, i32* %6, align 4
  switch i32 %47, label %55 [
    i32 129, label %48
    i32 131, label %51
    i32 128, label %54
    i32 130, label %54
  ]

48:                                               ; preds = %32
  %49 = load %struct.pcf_softc*, %struct.pcf_softc** %9, align 8
  %50 = call i32 @pcf_set_S0(%struct.pcf_softc* %49, i32 27)
  br label %58

51:                                               ; preds = %32
  %52 = load %struct.pcf_softc*, %struct.pcf_softc** %9, align 8
  %53 = call i32 @pcf_set_S0(%struct.pcf_softc* %52, i32 25)
  br label %58

54:                                               ; preds = %32, %32
  br label %55

55:                                               ; preds = %32, %54
  %56 = load %struct.pcf_softc*, %struct.pcf_softc** %9, align 8
  %57 = call i32 @pcf_set_S0(%struct.pcf_softc* %56, i32 24)
  br label %58

58:                                               ; preds = %55, %51, %48
  %59 = load %struct.pcf_softc*, %struct.pcf_softc** %9, align 8
  %60 = load i32, i32* @PIN, align 4
  %61 = load i32, i32* @ESO, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @ENI, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @ACK, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @pcf_set_S1(%struct.pcf_softc* %59, i32 %66)
  %68 = load i32, i32* @SLAVE_RECEIVER, align 4
  %69 = load %struct.pcf_softc*, %struct.pcf_softc** %9, align 8
  %70 = getelementptr inbounds %struct.pcf_softc, %struct.pcf_softc* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.pcf_softc*, %struct.pcf_softc** %9, align 8
  %72 = call i32 @PCF_UNLOCK(%struct.pcf_softc* %71)
  ret i32 0
}

declare dso_local %struct.pcf_softc* @DEVTOSOFTC(i32) #1

declare dso_local i32 @PCF_LOCK(%struct.pcf_softc*) #1

declare dso_local i32 @pcf_set_S1(%struct.pcf_softc*, i32) #1

declare dso_local i32 @pcf_set_S0(%struct.pcf_softc*, i32) #1

declare dso_local i32 @PCF_UNLOCK(%struct.pcf_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
