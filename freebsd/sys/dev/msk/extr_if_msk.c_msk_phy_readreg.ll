; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_msk_phy_readreg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_msk_phy_readreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msk_if_softc = type { i32, i32, %struct.msk_softc* }
%struct.msk_softc = type { i32 }

@GM_SMI_CTRL = common dso_local global i32 0, align 4
@GM_SMI_CT_OP_RD = common dso_local global i32 0, align 4
@MSK_TIMEOUT = common dso_local global i32 0, align 4
@GM_SMI_CT_RD_VAL = common dso_local global i32 0, align 4
@GM_SMI_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"phy failed to come ready\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msk_if_softc*, i32, i32)* @msk_phy_readreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msk_phy_readreg(%struct.msk_if_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.msk_if_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.msk_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.msk_if_softc* %0, %struct.msk_if_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.msk_if_softc*, %struct.msk_if_softc** %4, align 8
  %11 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %10, i32 0, i32 2
  %12 = load %struct.msk_softc*, %struct.msk_softc** %11, align 8
  store %struct.msk_softc* %12, %struct.msk_softc** %7, align 8
  %13 = load %struct.msk_softc*, %struct.msk_softc** %7, align 8
  %14 = load %struct.msk_if_softc*, %struct.msk_if_softc** %4, align 8
  %15 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @GM_SMI_CTRL, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @GM_SMI_CT_PHY_AD(i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @GM_SMI_CT_REG_AD(i32 %20)
  %22 = or i32 %19, %21
  %23 = load i32, i32* @GM_SMI_CT_OP_RD, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @GMAC_WRITE_2(%struct.msk_softc* %13, i32 %16, i32 %17, i32 %24)
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %50, %3
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @MSK_TIMEOUT, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %53

30:                                               ; preds = %26
  %31 = call i32 @DELAY(i32 1)
  %32 = load %struct.msk_softc*, %struct.msk_softc** %7, align 8
  %33 = load %struct.msk_if_softc*, %struct.msk_if_softc** %4, align 8
  %34 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @GM_SMI_CTRL, align 4
  %37 = call i32 @GMAC_READ_2(%struct.msk_softc* %32, i32 %35, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @GM_SMI_CT_RD_VAL, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %30
  %43 = load %struct.msk_softc*, %struct.msk_softc** %7, align 8
  %44 = load %struct.msk_if_softc*, %struct.msk_if_softc** %4, align 8
  %45 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @GM_SMI_DATA, align 4
  %48 = call i32 @GMAC_READ_2(%struct.msk_softc* %43, i32 %46, i32 %47)
  store i32 %48, i32* %9, align 4
  br label %53

49:                                               ; preds = %30
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %26

53:                                               ; preds = %42, %26
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @MSK_TIMEOUT, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load %struct.msk_if_softc*, %struct.msk_if_softc** %4, align 8
  %59 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @if_printf(i32 %60, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %62

62:                                               ; preds = %57, %53
  %63 = load i32, i32* %9, align 4
  ret i32 %63
}

declare dso_local i32 @GMAC_WRITE_2(%struct.msk_softc*, i32, i32, i32) #1

declare dso_local i32 @GM_SMI_CT_PHY_AD(i32) #1

declare dso_local i32 @GM_SMI_CT_REG_AD(i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @GMAC_READ_2(%struct.msk_softc*, i32, i32) #1

declare dso_local i32 @if_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
