; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192e/extr_r92e_init.c_r92e_llt_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192e/extr_r92e_init.c_r92e_llt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32 }

@R92C_AUTO_LLT = common dso_local global i32 0, align 4
@R92C_AUTO_LLT_INIT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r92e_llt_init(%struct.rtwn_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtwn_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %3, align 8
  %6 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %7 = load i32, i32* @R92C_AUTO_LLT, align 4
  %8 = load i32, i32* @R92C_AUTO_LLT_INIT, align 4
  %9 = call i32 @rtwn_setbits_4(%struct.rtwn_softc* %6, i32 %7, i32 0, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %34

14:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %29, %14
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 1000
  br i1 %17, label %18, label %32

18:                                               ; preds = %15
  %19 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %20 = load i32, i32* @R92C_AUTO_LLT, align 4
  %21 = call i32 @rtwn_read_4(%struct.rtwn_softc* %19, i32 %20)
  %22 = load i32, i32* @R92C_AUTO_LLT_INIT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %34

26:                                               ; preds = %18
  %27 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %28 = call i32 @rtwn_delay(%struct.rtwn_softc* %27, i32 1)
  br label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %15

32:                                               ; preds = %15
  %33 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %32, %25, %12
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @rtwn_setbits_4(%struct.rtwn_softc*, i32, i32, i32) #1

declare dso_local i32 @rtwn_read_4(%struct.rtwn_softc*, i32) #1

declare dso_local i32 @rtwn_delay(%struct.rtwn_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
