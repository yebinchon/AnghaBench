; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_set_xmac_rxtx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_set_xmac_rxtx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_params = type { %struct.bxe_softc*, i64 }
%struct.bxe_softc = type { i32 }

@GRCBASE_XMAC1 = common dso_local global i32 0, align 4
@GRCBASE_XMAC0 = common dso_local global i32 0, align 4
@MISC_REG_RESET_REG_2 = common dso_local global i32 0, align 4
@MISC_REGISTERS_RESET_REG_2_XMAC = common dso_local global i32 0, align 4
@XMAC_REG_PFC_CTRL_HI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Disable XMAC on port %x\0A\00", align 1
@XMAC_REG_CTRL = common dso_local global i32 0, align 4
@XMAC_CTRL_REG_TX_EN = common dso_local global i32 0, align 4
@XMAC_CTRL_REG_RX_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elink_params*, i64)* @elink_set_xmac_rxtx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elink_set_xmac_rxtx(%struct.elink_params* %0, i64 %1) #0 {
  %3 = alloca %struct.elink_params*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.bxe_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.elink_params* %0, %struct.elink_params** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %11 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %5, align 8
  %13 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %14 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %13, i32 0, i32 0
  %15 = load %struct.bxe_softc*, %struct.bxe_softc** %14, align 8
  store %struct.bxe_softc* %15, %struct.bxe_softc** %6, align 8
  %16 = load i64, i64* %5, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @GRCBASE_XMAC1, align 4
  br label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @GRCBASE_XMAC0, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  store i32 %23, i32* %8, align 4
  %24 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %25 = load i32, i32* @MISC_REG_RESET_REG_2, align 4
  %26 = call i32 @REG_RD(%struct.bxe_softc* %24, i32 %25)
  %27 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_XMAC, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %80

30:                                               ; preds = %22
  %31 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @XMAC_REG_PFC_CTRL_HI, align 4
  %34 = add nsw i32 %32, %33
  %35 = call i32 @REG_RD(%struct.bxe_softc* %31, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @XMAC_REG_PFC_CTRL_HI, align 4
  %39 = add nsw i32 %37, %38
  %40 = load i32, i32* %7, align 4
  %41 = and i32 %40, -3
  %42 = call i32 @REG_WR(%struct.bxe_softc* %36, i32 %39, i32 %41)
  %43 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @XMAC_REG_PFC_CTRL_HI, align 4
  %46 = add nsw i32 %44, %45
  %47 = load i32, i32* %7, align 4
  %48 = or i32 %47, 2
  %49 = call i32 @REG_WR(%struct.bxe_softc* %43, i32 %46, i32 %48)
  %50 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %51 = load i64, i64* %5, align 8
  %52 = call i32 @ELINK_DEBUG_P1(%struct.bxe_softc* %50, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %51)
  %53 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @XMAC_REG_CTRL, align 4
  %56 = add nsw i32 %54, %55
  %57 = call i32 @REG_RD(%struct.bxe_softc* %53, i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = load i64, i64* %4, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %30
  %61 = load i32, i32* @XMAC_CTRL_REG_TX_EN, align 4
  %62 = load i32, i32* @XMAC_CTRL_REG_RX_EN, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* %9, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %9, align 4
  br label %73

66:                                               ; preds = %30
  %67 = load i32, i32* @XMAC_CTRL_REG_TX_EN, align 4
  %68 = load i32, i32* @XMAC_CTRL_REG_RX_EN, align 4
  %69 = or i32 %67, %68
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %9, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %66, %60
  %74 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @XMAC_REG_CTRL, align 4
  %77 = add nsw i32 %75, %76
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @REG_WR(%struct.bxe_softc* %74, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %73, %22
  ret void
}

declare dso_local i32 @REG_RD(%struct.bxe_softc*, i32) #1

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i32, i32) #1

declare dso_local i32 @ELINK_DEBUG_P1(%struct.bxe_softc*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
