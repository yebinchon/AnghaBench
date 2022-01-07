; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx_pci.c_ahd_aic790X_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx_pci.c_ahd_aic790X_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32, i32, i32, i64, i32 }

@PCIR_REVID = common dso_local global i32 0, align 4
@ID_AIC7902_PCI_REV_A4 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [54 x i8] c"%s: Unable to attach to unsupported chip revision %d\0A\00", align 1
@PCIR_COMMAND = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ID_AIC7902_PCI_REV_B0 = common dso_local global i64 0, align 8
@AHD_SENT_SCB_UPDATE_BUG = common dso_local global i32 0, align 4
@AHD_ABORT_LQI_BUG = common dso_local global i32 0, align 4
@AHD_PKT_BITBUCKET_BUG = common dso_local global i32 0, align 4
@AHD_LONG_SETIMO_BUG = common dso_local global i32 0, align 4
@AHD_NLQICRC_DELAYED_BUG = common dso_local global i32 0, align 4
@AHD_SCSIRST_BUG = common dso_local global i32 0, align 4
@AHD_LQO_ATNO_BUG = common dso_local global i32 0, align 4
@AHD_AUTOFLUSH_BUG = common dso_local global i32 0, align 4
@AHD_CLRLQO_AUTOCLR_BUG = common dso_local global i32 0, align 4
@AHD_PCIX_MMAPIO_BUG = common dso_local global i32 0, align 4
@AHD_PCIX_CHIPRST_BUG = common dso_local global i32 0, align 4
@AHD_PCIX_SCBRAM_RD_BUG = common dso_local global i32 0, align 4
@AHD_PKTIZED_STATUS_BUG = common dso_local global i32 0, align 4
@AHD_PKT_LUN_BUG = common dso_local global i32 0, align 4
@AHD_MDFF_WSCBPTR_BUG = common dso_local global i32 0, align 4
@AHD_REG_SLOW_SETTLE_BUG = common dso_local global i32 0, align 4
@AHD_SET_MODE_BUG = common dso_local global i32 0, align 4
@AHD_BUSFREEREV_BUG = common dso_local global i32 0, align 4
@AHD_NONPACKFIFO_BUG = common dso_local global i32 0, align 4
@AHD_PACED_NEGTABLE_BUG = common dso_local global i32 0, align 4
@AHD_FAINT_LED_BUG = common dso_local global i32 0, align 4
@AHD_PRECOMP_CUTBACK_29 = common dso_local global i32 0, align 4
@AHD_HP_BOARD = common dso_local global i32 0, align 4
@AHD_SLEWRATE_DEF_REVA = common dso_local global i32 0, align 4
@AHD_RTI = common dso_local global i32 0, align 4
@AHD_NEW_IOCELL_OPTS = common dso_local global i32 0, align 4
@AHD_NEW_DFCNTRL_OPTS = common dso_local global i32 0, align 4
@AHD_FAST_CDB_DELIVERY = common dso_local global i32 0, align 4
@AHD_LQOOVERRUN_BUG = common dso_local global i32 0, align 4
@AHD_EARLY_REQ_BUG = common dso_local global i32 0, align 4
@AHD_MULTI_FUNC = common dso_local global i32 0, align 4
@AHD_INTCOLLISION_BUG = common dso_local global i32 0, align 4
@AHD_SLEWRATE_DEF_REVB = common dso_local global i32 0, align 4
@AHD_AMPLITUDE_DEF = common dso_local global i32 0, align 4
@DEVCONFIG1 = common dso_local global i32 0, align 4
@PREQDIS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahd_softc*)* @ahd_aic790X_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahd_aic790X_setup(%struct.ahd_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahd_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.ahd_softc* %0, %struct.ahd_softc** %3, align 8
  %7 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %8 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @PCIR_REVID, align 4
  %12 = call i64 @aic_pci_read_config(i32 %10, i32 %11, i32 1)
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @ID_AIC7902_PCI_REV_A4, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %1
  %17 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %18 = call i8* @ahd_name(%struct.ahd_softc* %17)
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8* %18, i64 %19)
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @PCIR_COMMAND, align 4
  %23 = call i32 @aic_pci_write_config(i32 %21, i32 %22, i64 0, i32 2)
  %24 = load i32, i32* @ENXIO, align 4
  store i32 %24, i32* %2, align 4
  br label %152

25:                                               ; preds = %1
  %26 = load i32, i32* %4, align 4
  %27 = call i64 @aic_get_pci_function(i32 %26)
  %28 = add nsw i64 %27, 65
  %29 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %30 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %29, i32 0, i32 3
  store i64 %28, i64* %30, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @ID_AIC7902_PCI_REV_B0, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %94

34:                                               ; preds = %25
  %35 = load i32, i32* @AHD_SENT_SCB_UPDATE_BUG, align 4
  %36 = load i32, i32* @AHD_ABORT_LQI_BUG, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @AHD_PKT_BITBUCKET_BUG, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @AHD_LONG_SETIMO_BUG, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @AHD_NLQICRC_DELAYED_BUG, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @AHD_SCSIRST_BUG, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @AHD_LQO_ATNO_BUG, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @AHD_AUTOFLUSH_BUG, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @AHD_CLRLQO_AUTOCLR_BUG, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @AHD_PCIX_MMAPIO_BUG, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @AHD_PCIX_CHIPRST_BUG, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @AHD_PCIX_SCBRAM_RD_BUG, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @AHD_PKTIZED_STATUS_BUG, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @AHD_PKT_LUN_BUG, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @AHD_MDFF_WSCBPTR_BUG, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @AHD_REG_SLOW_SETTLE_BUG, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @AHD_SET_MODE_BUG, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @AHD_BUSFREEREV_BUG, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @AHD_NONPACKFIFO_BUG, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @AHD_PACED_NEGTABLE_BUG, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @AHD_FAINT_LED_BUG, align 4
  %75 = or i32 %73, %74
  %76 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %77 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 8
  %80 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %81 = load i32, i32* @AHD_PRECOMP_CUTBACK_29, align 4
  %82 = call i32 @AHD_SET_PRECOMP(%struct.ahd_softc* %80, i32 %81)
  %83 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %84 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @AHD_HP_BOARD, align 4
  %87 = and i32 %85, %86
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %34
  %90 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %91 = load i32, i32* @AHD_SLEWRATE_DEF_REVA, align 4
  %92 = call i32 @AHD_SET_SLEWRATE(%struct.ahd_softc* %90, i32 %91)
  br label %93

93:                                               ; preds = %89, %34
  br label %151

94:                                               ; preds = %25
  %95 = load i32, i32* @AHD_RTI, align 4
  %96 = load i32, i32* @AHD_NEW_IOCELL_OPTS, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @AHD_NEW_DFCNTRL_OPTS, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @AHD_FAST_CDB_DELIVERY, align 4
  %101 = or i32 %99, %100
  %102 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %103 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 8
  %106 = load i32, i32* @AHD_LQOOVERRUN_BUG, align 4
  %107 = load i32, i32* @AHD_EARLY_REQ_BUG, align 4
  %108 = or i32 %106, %107
  %109 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %110 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 8
  %113 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %114 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @AHD_MULTI_FUNC, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %129

119:                                              ; preds = %94
  %120 = load i32, i32* @AHD_INTCOLLISION_BUG, align 4
  %121 = load i32, i32* @AHD_ABORT_LQI_BUG, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @AHD_BUSFREEREV_BUG, align 4
  %124 = or i32 %122, %123
  %125 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %126 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 8
  br label %129

129:                                              ; preds = %119, %94
  %130 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %131 = load i32, i32* @AHD_PRECOMP_CUTBACK_29, align 4
  %132 = call i32 @AHD_SET_PRECOMP(%struct.ahd_softc* %130, i32 %131)
  %133 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %134 = load i32, i32* @AHD_SLEWRATE_DEF_REVB, align 4
  %135 = call i32 @AHD_SET_SLEWRATE(%struct.ahd_softc* %133, i32 %134)
  %136 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %137 = load i32, i32* @AHD_AMPLITUDE_DEF, align 4
  %138 = call i32 @AHD_SET_AMPLITUDE(%struct.ahd_softc* %136, i32 %137)
  %139 = load i32, i32* %4, align 4
  %140 = load i32, i32* @DEVCONFIG1, align 4
  %141 = call i64 @aic_pci_read_config(i32 %139, i32 %140, i32 1)
  store i64 %141, i64* %6, align 8
  %142 = load i32, i32* %4, align 4
  %143 = load i32, i32* @DEVCONFIG1, align 4
  %144 = load i64, i64* %6, align 8
  %145 = load i64, i64* @PREQDIS, align 8
  %146 = or i64 %144, %145
  %147 = call i32 @aic_pci_write_config(i32 %142, i32 %143, i64 %146, i32 1)
  %148 = load i32, i32* %4, align 4
  %149 = load i32, i32* @DEVCONFIG1, align 4
  %150 = call i64 @aic_pci_read_config(i32 %148, i32 %149, i32 1)
  store i64 %150, i64* %6, align 8
  br label %151

151:                                              ; preds = %129, %93
  store i32 0, i32* %2, align 4
  br label %152

152:                                              ; preds = %151, %16
  %153 = load i32, i32* %2, align 4
  ret i32 %153
}

declare dso_local i64 @aic_pci_read_config(i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i8*, i64) #1

declare dso_local i8* @ahd_name(%struct.ahd_softc*) #1

declare dso_local i32 @aic_pci_write_config(i32, i32, i64, i32) #1

declare dso_local i64 @aic_get_pci_function(i32) #1

declare dso_local i32 @AHD_SET_PRECOMP(%struct.ahd_softc*, i32) #1

declare dso_local i32 @AHD_SET_SLEWRATE(%struct.ahd_softc*, i32) #1

declare dso_local i32 @AHD_SET_AMPLITUDE(%struct.ahd_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
