; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/extr_r92c_init.c_r92c_init_antsel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/extr_r92c_init.c_r92c_init_antsel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32, i32, i32 }

@R92C_LEDCFG2 = common dso_local global i32 0, align 4
@R92C_FPGA0_RFIFACEOE0_ANT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r92c_init_antsel(%struct.rtwn_softc* %0) #0 {
  %2 = alloca %struct.rtwn_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %2, align 8
  %4 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %5 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 1
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %10 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %8, %1
  br label %32

14:                                               ; preds = %8
  %15 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %16 = load i32, i32* @R92C_LEDCFG2, align 4
  %17 = call i32 @rtwn_setbits_1(%struct.rtwn_softc* %15, i32 %16, i32 0, i32 128)
  %18 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %19 = call i32 @R92C_FPGA0_RFPARAM(i32 0)
  %20 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %18, i32 %19, i32 0, i32 8192)
  %21 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %22 = call i32 @R92C_FPGA0_RFIFACEOE(i32 0)
  %23 = call i32 @rtwn_bb_read(%struct.rtwn_softc* %21, i32 %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @R92C_FPGA0_RFIFACEOE0_ANT, align 4
  %26 = call i32 @MS(i32 %24, i32 %25)
  %27 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %28 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %30 = load i32, i32* @R92C_LEDCFG2, align 4
  %31 = call i32 @rtwn_setbits_1(%struct.rtwn_softc* %29, i32 %30, i32 128, i32 0)
  br label %32

32:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @rtwn_setbits_1(%struct.rtwn_softc*, i32, i32, i32) #1

declare dso_local i32 @rtwn_bb_setbits(%struct.rtwn_softc*, i32, i32, i32) #1

declare dso_local i32 @R92C_FPGA0_RFPARAM(i32) #1

declare dso_local i32 @rtwn_bb_read(%struct.rtwn_softc*, i32) #1

declare dso_local i32 @R92C_FPGA0_RFIFACEOE(i32) #1

declare dso_local i32 @MS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
