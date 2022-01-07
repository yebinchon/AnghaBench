; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_msk_phy_writereg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_msk_phy_writereg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msk_if_softc = type { i32, i32, %struct.msk_softc* }
%struct.msk_softc = type { i32 }

@GM_SMI_DATA = common dso_local global i32 0, align 4
@GM_SMI_CTRL = common dso_local global i32 0, align 4
@MSK_TIMEOUT = common dso_local global i32 0, align 4
@GM_SMI_CT_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"phy write timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msk_if_softc*, i32, i32, i32)* @msk_phy_writereg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msk_phy_writereg(%struct.msk_if_softc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.msk_if_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.msk_softc*, align 8
  %10 = alloca i32, align 4
  store %struct.msk_if_softc* %0, %struct.msk_if_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %12 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %11, i32 0, i32 2
  %13 = load %struct.msk_softc*, %struct.msk_softc** %12, align 8
  store %struct.msk_softc* %13, %struct.msk_softc** %9, align 8
  %14 = load %struct.msk_softc*, %struct.msk_softc** %9, align 8
  %15 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %16 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @GM_SMI_DATA, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @GMAC_WRITE_2(%struct.msk_softc* %14, i32 %17, i32 %18, i32 %19)
  %21 = load %struct.msk_softc*, %struct.msk_softc** %9, align 8
  %22 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %23 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @GM_SMI_CTRL, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @GM_SMI_CT_PHY_AD(i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @GM_SMI_CT_REG_AD(i32 %28)
  %30 = or i32 %27, %29
  %31 = call i32 @GMAC_WRITE_2(%struct.msk_softc* %21, i32 %24, i32 %25, i32 %30)
  store i32 0, i32* %10, align 4
  br label %32

32:                                               ; preds = %49, %4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @MSK_TIMEOUT, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %52

36:                                               ; preds = %32
  %37 = call i32 @DELAY(i32 1)
  %38 = load %struct.msk_softc*, %struct.msk_softc** %9, align 8
  %39 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %40 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @GM_SMI_CTRL, align 4
  %43 = call i32 @GMAC_READ_2(%struct.msk_softc* %38, i32 %41, i32 %42)
  %44 = load i32, i32* @GM_SMI_CT_BUSY, align 4
  %45 = and i32 %43, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  br label %52

48:                                               ; preds = %36
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %10, align 4
  br label %32

52:                                               ; preds = %47, %32
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @MSK_TIMEOUT, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %58 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @if_printf(i32 %59, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %61

61:                                               ; preds = %56, %52
  ret i32 0
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
