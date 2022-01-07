; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/extr_r92c_attach.c_r92c_read_chipid_vendor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/extr_r92c_attach.c_r92c_read_chipid_vendor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { %struct.r92c_softc* }
%struct.r92c_softc = type { i32 }

@R92C_SYS_CFG_TYPE_92C = common dso_local global i32 0, align 4
@R92C_CHIP_92C = common dso_local global i32 0, align 4
@R92C_HPON_FSM = common dso_local global i32 0, align 4
@R92C_HPON_FSM_CHIP_BONDING_ID = common dso_local global i32 0, align 4
@R92C_HPON_FSM_CHIP_BONDING_ID_92C_1T2R = common dso_local global i64 0, align 8
@R92C_CHIP_92C_1T2R = common dso_local global i32 0, align 4
@R92C_SYS_CFG_VENDOR_UMC = common dso_local global i32 0, align 4
@R92C_SYS_CFG_CHIP_VER_RTL = common dso_local global i32 0, align 4
@R92C_CHIP_UMC_A_CUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r92c_read_chipid_vendor(%struct.rtwn_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.rtwn_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.r92c_softc*, align 8
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %7 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %6, i32 0, i32 0
  %8 = load %struct.r92c_softc*, %struct.r92c_softc** %7, align 8
  store %struct.r92c_softc* %8, %struct.r92c_softc** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @R92C_SYS_CFG_TYPE_92C, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %2
  %14 = load i32, i32* @R92C_CHIP_92C, align 4
  %15 = load %struct.r92c_softc*, %struct.r92c_softc** %5, align 8
  %16 = getelementptr inbounds %struct.r92c_softc, %struct.r92c_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %20 = load i32, i32* @R92C_HPON_FSM, align 4
  %21 = call i32 @rtwn_read_4(%struct.rtwn_softc* %19, i32 %20)
  %22 = load i32, i32* @R92C_HPON_FSM_CHIP_BONDING_ID, align 4
  %23 = call i64 @MS(i32 %21, i32 %22)
  %24 = load i64, i64* @R92C_HPON_FSM_CHIP_BONDING_ID_92C_1T2R, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %13
  %27 = load i32, i32* @R92C_CHIP_92C_1T2R, align 4
  %28 = load %struct.r92c_softc*, %struct.r92c_softc** %5, align 8
  %29 = getelementptr inbounds %struct.r92c_softc, %struct.r92c_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %26, %13
  br label %33

33:                                               ; preds = %32, %2
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @R92C_SYS_CFG_VENDOR_UMC, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %33
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @R92C_SYS_CFG_CHIP_VER_RTL, align 4
  %41 = call i64 @MS(i32 %39, i32 %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load i32, i32* @R92C_CHIP_UMC_A_CUT, align 4
  %45 = load %struct.r92c_softc*, %struct.r92c_softc** %5, align 8
  %46 = getelementptr inbounds %struct.r92c_softc, %struct.r92c_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %43, %38
  br label %50

50:                                               ; preds = %49, %33
  ret void
}

declare dso_local i64 @MS(i32, i32) #1

declare dso_local i32 @rtwn_read_4(%struct.rtwn_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
