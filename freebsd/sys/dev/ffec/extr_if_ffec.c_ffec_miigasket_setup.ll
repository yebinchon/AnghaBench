; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ffec/extr_if_ffec.c_ffec_miigasket_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ffec/extr_if_ffec.c_ffec_miigasket_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffec_softc = type { i32, i32 }

@FEC_MIIGSK_CFGR_IF_MODE_RMII = common dso_local global i64 0, align 8
@FEC_MIIGSK_ENR = common dso_local global i32 0, align 4
@FEC_MIIGSK_ENR_READY = common dso_local global i32 0, align 4
@FEC_MIIGSK_CFGR = common dso_local global i32 0, align 4
@FEC_MIIGSK_ENR_EN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ffec_softc*)* @ffec_miigasket_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ffec_miigasket_setup(%struct.ffec_softc* %0) #0 {
  %2 = alloca %struct.ffec_softc*, align 8
  %3 = alloca i64, align 8
  store %struct.ffec_softc* %0, %struct.ffec_softc** %2, align 8
  %4 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %5 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %8 [
    i32 130, label %7
  ]

7:                                                ; preds = %1
  br label %9

8:                                                ; preds = %1
  br label %47

9:                                                ; preds = %7
  %10 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %11 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %16 [
    i32 129, label %13
    i32 128, label %14
  ]

13:                                               ; preds = %9
  store i64 0, i64* %3, align 8
  br label %17

14:                                               ; preds = %9
  %15 = load i64, i64* @FEC_MIIGSK_CFGR_IF_MODE_RMII, align 8
  store i64 %15, i64* %3, align 8
  br label %17

16:                                               ; preds = %9
  br label %47

17:                                               ; preds = %14, %13
  %18 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %19 = load i32, i32* @FEC_MIIGSK_ENR, align 4
  %20 = call i32 @WR2(%struct.ffec_softc* %18, i32 %19, i64 0)
  br label %21

21:                                               ; preds = %28, %17
  %22 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %23 = load i32, i32* @FEC_MIIGSK_ENR, align 4
  %24 = call i32 @RD2(%struct.ffec_softc* %22, i32 %23)
  %25 = load i32, i32* @FEC_MIIGSK_ENR_READY, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %21

29:                                               ; preds = %21
  %30 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %31 = load i32, i32* @FEC_MIIGSK_CFGR, align 4
  %32 = load i64, i64* %3, align 8
  %33 = call i32 @WR2(%struct.ffec_softc* %30, i32 %31, i64 %32)
  %34 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %35 = load i32, i32* @FEC_MIIGSK_ENR, align 4
  %36 = load i64, i64* @FEC_MIIGSK_ENR_EN, align 8
  %37 = call i32 @WR2(%struct.ffec_softc* %34, i32 %35, i64 %36)
  br label %38

38:                                               ; preds = %46, %29
  %39 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %40 = load i32, i32* @FEC_MIIGSK_ENR, align 4
  %41 = call i32 @RD2(%struct.ffec_softc* %39, i32 %40)
  %42 = load i32, i32* @FEC_MIIGSK_ENR_READY, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %38

47:                                               ; preds = %8, %16, %38
  ret void
}

declare dso_local i32 @WR2(%struct.ffec_softc*, i32, i64) #1

declare dso_local i32 @RD2(%struct.ffec_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
