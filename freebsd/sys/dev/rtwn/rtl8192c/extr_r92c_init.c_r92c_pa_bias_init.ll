; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/extr_r92c_init.c_r92c_pa_bias_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/extr_r92c_init.c_r92c_pa_bias_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32, %struct.r92c_softc* }
%struct.r92c_softc = type { i32 }

@R92C_RF_IPA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r92c_pa_bias_init(%struct.rtwn_softc* %0) #0 {
  %2 = alloca %struct.rtwn_softc*, align 8
  %3 = alloca %struct.r92c_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %2, align 8
  %5 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %6 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %5, i32 0, i32 1
  %7 = load %struct.r92c_softc*, %struct.r92c_softc** %6, align 8
  store %struct.r92c_softc* %7, %struct.r92c_softc** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %40, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %11 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %43

14:                                               ; preds = %8
  %15 = load %struct.r92c_softc*, %struct.r92c_softc** %3, align 8
  %16 = getelementptr inbounds %struct.r92c_softc, %struct.r92c_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %4, align 4
  %19 = shl i32 1, %18
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  br label %40

23:                                               ; preds = %14
  %24 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @R92C_RF_IPA, align 4
  %27 = call i32 @r92c_rf_write(%struct.rtwn_softc* %24, i32 %25, i32 %26, i32 62470)
  %28 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @R92C_RF_IPA, align 4
  %31 = call i32 @r92c_rf_write(%struct.rtwn_softc* %28, i32 %29, i32 %30, i32 324614)
  %32 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @R92C_RF_IPA, align 4
  %35 = call i32 @r92c_rf_write(%struct.rtwn_softc* %32, i32 %33, i32 %34, i32 586758)
  %36 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @R92C_RF_IPA, align 4
  %39 = call i32 @r92c_rf_write(%struct.rtwn_softc* %36, i32 %37, i32 %38, i32 848902)
  br label %40

40:                                               ; preds = %23, %22
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %8

43:                                               ; preds = %8
  %44 = load %struct.r92c_softc*, %struct.r92c_softc** %3, align 8
  %45 = getelementptr inbounds %struct.r92c_softc, %struct.r92c_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 16
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %43
  %50 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %51 = call i32 @rtwn_setbits_1(%struct.rtwn_softc* %50, i32 22, i32 240, i32 144)
  br label %52

52:                                               ; preds = %49, %43
  ret void
}

declare dso_local i32 @r92c_rf_write(%struct.rtwn_softc*, i32, i32, i32) #1

declare dso_local i32 @rtwn_setbits_1(%struct.rtwn_softc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
