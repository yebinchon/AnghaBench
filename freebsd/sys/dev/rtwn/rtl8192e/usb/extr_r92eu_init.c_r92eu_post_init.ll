; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192e/usb/extr_r92eu_init.c_r92eu_post_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192e/usb/extr_r92eu_init.c_r92eu_post_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32, i64, i64 }

@R92C_QUEUE_CTRL = common dso_local global i32 0, align 4
@R92C_ACLK_MON = common dso_local global i32 0, align 4
@R92C_USB_HRPWM = common dso_local global i32 0, align 4
@RTWN_FW_LOADED = common dso_local global i32 0, align 4
@RTWN_RATECTL_FW = common dso_local global i64 0, align 8
@RTWN_RATECTL_NET80211 = common dso_local global i64 0, align 8
@RTWN_RATECTL_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r92eu_post_init(%struct.rtwn_softc* %0) #0 {
  %2 = alloca %struct.rtwn_softc*, align 8
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %2, align 8
  %3 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %4 = load i32, i32* @R92C_QUEUE_CTRL, align 4
  %5 = call i32 @rtwn_setbits_1(%struct.rtwn_softc* %3, i32 %4, i32 8, i32 0)
  %6 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %7 = load i32, i32* @R92C_ACLK_MON, align 4
  %8 = call i32 @rtwn_write_1(%struct.rtwn_softc* %6, i32 %7, i32 0)
  %9 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %10 = load i32, i32* @R92C_USB_HRPWM, align 4
  %11 = call i32 @rtwn_write_1(%struct.rtwn_softc* %9, i32 %10, i32 0)
  %12 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %13 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @RTWN_FW_LOADED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %1
  %19 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %20 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @RTWN_RATECTL_FW, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i64, i64* @RTWN_RATECTL_NET80211, align 8
  %26 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %27 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %26, i32 0, i32 2
  store i64 %25, i64* %27, align 8
  br label %34

28:                                               ; preds = %18
  %29 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %30 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %33 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %32, i32 0, i32 2
  store i64 %31, i64* %33, align 8
  br label %34

34:                                               ; preds = %28, %24
  br label %39

35:                                               ; preds = %1
  %36 = load i64, i64* @RTWN_RATECTL_NONE, align 8
  %37 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %38 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %37, i32 0, i32 2
  store i64 %36, i64* %38, align 8
  br label %39

39:                                               ; preds = %35, %34
  ret void
}

declare dso_local i32 @rtwn_setbits_1(%struct.rtwn_softc*, i32, i32, i32) #1

declare dso_local i32 @rtwn_write_1(%struct.rtwn_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
