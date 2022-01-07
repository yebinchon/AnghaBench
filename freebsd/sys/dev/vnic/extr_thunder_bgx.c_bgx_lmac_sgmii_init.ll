; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_thunder_bgx.c_bgx_lmac_sgmii_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_thunder_bgx.c_bgx_lmac_sgmii_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgx = type { i32 }

@BGX_GMP_GMI_TXX_THRESH = common dso_local global i32 0, align 4
@BGX_GMP_GMI_RXX_JABBER = common dso_local global i32 0, align 4
@MAX_FRAME_SIZE = common dso_local global i32 0, align 4
@BGX_GMP_GMI_TXX_APPEND = common dso_local global i32 0, align 4
@BGX_GMP_GMI_TXX_SGMII_CTL = common dso_local global i32 0, align 4
@BGX_CMRX_CFG = common dso_local global i32 0, align 4
@CMR_EN = common dso_local global i32 0, align 4
@BGX_GMP_PCS_MRX_CTL = common dso_local global i32 0, align 4
@PCS_MRX_CTL_RESET = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"BGX PCS reset not completed\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@PCS_MRX_CTL_PWR_DN = common dso_local global i32 0, align 4
@PCS_MRX_CTL_RST_AN = common dso_local global i32 0, align 4
@PCS_MRX_CTL_AN_EN = common dso_local global i32 0, align 4
@BGX_GMP_PCS_MRX_STATUS = common dso_local global i32 0, align 4
@PCS_MRX_STATUS_AN_CPT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"BGX AN_CPT not completed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bgx*, i32)* @bgx_lmac_sgmii_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bgx_lmac_sgmii_init(%struct.bgx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bgx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bgx* %0, %struct.bgx** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.bgx*, %struct.bgx** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @BGX_GMP_GMI_TXX_THRESH, align 4
  %10 = call i32 @bgx_reg_modify(%struct.bgx* %7, i32 %8, i32 %9, i32 48)
  %11 = load %struct.bgx*, %struct.bgx** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @BGX_GMP_GMI_RXX_JABBER, align 4
  %14 = load i32, i32* @MAX_FRAME_SIZE, align 4
  %15 = call i32 @bgx_reg_modify(%struct.bgx* %11, i32 %12, i32 %13, i32 %14)
  %16 = load %struct.bgx*, %struct.bgx** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @BGX_GMP_GMI_TXX_APPEND, align 4
  %19 = call i32 @bgx_reg_read(%struct.bgx* %16, i32 %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, 1
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load %struct.bgx*, %struct.bgx** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @BGX_GMP_GMI_TXX_SGMII_CTL, align 4
  %27 = call i32 @bgx_reg_write(%struct.bgx* %24, i32 %25, i32 %26, i32 0)
  br label %28

28:                                               ; preds = %23, %2
  %29 = load %struct.bgx*, %struct.bgx** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @BGX_CMRX_CFG, align 4
  %32 = load i32, i32* @CMR_EN, align 4
  %33 = call i32 @bgx_reg_modify(%struct.bgx* %29, i32 %30, i32 %31, i32 %32)
  %34 = load %struct.bgx*, %struct.bgx** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @BGX_GMP_PCS_MRX_CTL, align 4
  %37 = load i32, i32* @PCS_MRX_CTL_RESET, align 4
  %38 = call i32 @bgx_reg_modify(%struct.bgx* %34, i32 %35, i32 %36, i32 %37)
  %39 = load %struct.bgx*, %struct.bgx** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @BGX_GMP_PCS_MRX_CTL, align 4
  %42 = load i32, i32* @PCS_MRX_CTL_RESET, align 4
  %43 = load i32, i32* @TRUE, align 4
  %44 = call i64 @bgx_poll_reg(%struct.bgx* %39, i32 %40, i32 %41, i32 %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %28
  %47 = load %struct.bgx*, %struct.bgx** %4, align 8
  %48 = getelementptr inbounds %struct.bgx, %struct.bgx* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @device_printf(i32 %49, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @ENXIO, align 4
  store i32 %51, i32* %3, align 4
  br label %85

52:                                               ; preds = %28
  %53 = load %struct.bgx*, %struct.bgx** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @BGX_GMP_PCS_MRX_CTL, align 4
  %56 = call i32 @bgx_reg_read(%struct.bgx* %53, i32 %54, i32 %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* @PCS_MRX_CTL_PWR_DN, align 4
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %6, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* @PCS_MRX_CTL_RST_AN, align 4
  %62 = load i32, i32* @PCS_MRX_CTL_AN_EN, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* %6, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %6, align 4
  %66 = load %struct.bgx*, %struct.bgx** %4, align 8
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @BGX_GMP_PCS_MRX_CTL, align 4
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @bgx_reg_write(%struct.bgx* %66, i32 %67, i32 %68, i32 %69)
  %71 = load %struct.bgx*, %struct.bgx** %4, align 8
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @BGX_GMP_PCS_MRX_STATUS, align 4
  %74 = load i32, i32* @PCS_MRX_STATUS_AN_CPT, align 4
  %75 = load i32, i32* @FALSE, align 4
  %76 = call i64 @bgx_poll_reg(%struct.bgx* %71, i32 %72, i32 %73, i32 %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %52
  %79 = load %struct.bgx*, %struct.bgx** %4, align 8
  %80 = getelementptr inbounds %struct.bgx, %struct.bgx* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @device_printf(i32 %81, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %83 = load i32, i32* @ENXIO, align 4
  store i32 %83, i32* %3, align 4
  br label %85

84:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %78, %46
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @bgx_reg_modify(%struct.bgx*, i32, i32, i32) #1

declare dso_local i32 @bgx_reg_read(%struct.bgx*, i32, i32) #1

declare dso_local i32 @bgx_reg_write(%struct.bgx*, i32, i32, i32) #1

declare dso_local i64 @bgx_poll_reg(%struct.bgx*, i32, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
