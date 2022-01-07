; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8821a/extr_r21a_beacon.c_r21a_beacon_select.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8821a/extr_r21a_beacon.c_r21a_beacon_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32 }

@R21A_DWBCN1_CTRL = common dso_local global i32 0, align 4
@R21A_DWBCN1_CTRL_SEL_BCN1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"wrong port id %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r21a_beacon_select(%struct.rtwn_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.rtwn_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %16 [
    i32 0, label %6
    i32 1, label %11
  ]

6:                                                ; preds = %2
  %7 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %8 = load i32, i32* @R21A_DWBCN1_CTRL, align 4
  %9 = load i32, i32* @R21A_DWBCN1_CTRL_SEL_BCN1, align 4
  %10 = call i32 @rtwn_setbits_1_shift(%struct.rtwn_softc* %7, i32 %8, i32 %9, i32 0, i32 2)
  br label %21

11:                                               ; preds = %2
  %12 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %13 = load i32, i32* @R21A_DWBCN1_CTRL, align 4
  %14 = load i32, i32* @R21A_DWBCN1_CTRL_SEL_BCN1, align 4
  %15 = call i32 @rtwn_setbits_1_shift(%struct.rtwn_softc* %12, i32 %13, i32 0, i32 %14, i32 2)
  br label %21

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to i8*
  %20 = call i32 @KASSERT(i32 0, i8* %19)
  br label %21

21:                                               ; preds = %16, %11, %6
  ret void
}

declare dso_local i32 @rtwn_setbits_1_shift(%struct.rtwn_softc*, i32, i32, i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
