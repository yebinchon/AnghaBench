; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_fsl_sata.c_fsl_sata_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_fsl_sata.c_fsl_sata_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_sata_channel = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@FSL_SATA_P_HCTRL = common dso_local global i32 0, align 4
@FSL_SATA_P_HCTRL_HC_ON = common dso_local global i32 0, align 4
@FSL_SATA_P_HCTRL_HC_FORCE_OFF = common dso_local global i32 0, align 4
@FSL_SATA_P_HCTRL_INT_MASK = common dso_local global i32 0, align 4
@FSL_SATA_P_HSTS = common dso_local global i32 0, align 4
@FSL_SATA_P_HSTS_HS_ON = common dso_local global i32 0, align 4
@FSL_SATA_CL_OFFSET = common dso_local global i32 0, align 4
@FSL_SATA_P_CHBA = common dso_local global i32 0, align 4
@FSL_SATA_P_HCTRL_ENT = common dso_local global i32 0, align 4
@FSL_SATA_P_HCTRL_PM = common dso_local global i32 0, align 4
@FSL_SATA_P_PCC = common dso_local global i32 0, align 4
@FSL_SATA_PCC_LPB_EN = common dso_local global i32 0, align 4
@FSL_SATA_P_ICC = common dso_local global i32 0, align 4
@FSL_SATA_P_ICC_ITC_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @fsl_sata_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_sata_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsl_sata_channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.fsl_sata_channel* @device_get_softc(i32 %6)
  store %struct.fsl_sata_channel* %7, %struct.fsl_sata_channel** %3, align 8
  %8 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %9 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @FSL_SATA_P_HCTRL, align 4
  %12 = call i32 @ATA_INL(i32 %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @FSL_SATA_P_HCTRL_HC_ON, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* @FSL_SATA_P_HCTRL_HC_FORCE_OFF, align 4
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %5, align 4
  %20 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %21 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @FSL_SATA_P_HCTRL, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @FSL_SATA_P_HCTRL_INT_MASK, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %24, %26
  %28 = call i32 @ATA_OUTL(i32 %22, i32 %23, i32 %27)
  %29 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %30 = load i32, i32* @FSL_SATA_P_HSTS, align 4
  %31 = load i32, i32* @FSL_SATA_P_HSTS_HS_ON, align 4
  %32 = call i32 @fsl_sata_wait_register(%struct.fsl_sata_channel* %29, i32 %30, i32 %31, i32 0, i32 1000)
  %33 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %34 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @FSL_SATA_CL_OFFSET, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %4, align 4
  %39 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %40 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @FSL_SATA_P_CHBA, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @ATA_OUTL(i32 %41, i32 %42, i32 %43)
  %45 = load i32, i32* @FSL_SATA_P_HCTRL_ENT, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %5, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* @FSL_SATA_P_HCTRL_PM, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %5, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %5, align 4
  %53 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %54 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @FSL_SATA_P_HCTRL, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @ATA_OUTL(i32 %55, i32 %56, i32 %57)
  %59 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %60 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @FSL_SATA_P_PCC, align 4
  %63 = call i32 @ATA_INL(i32 %61, i32 %62)
  store i32 %63, i32* %5, align 4
  %64 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %65 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @FSL_SATA_P_PCC, align 4
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @FSL_SATA_PCC_LPB_EN, align 4
  %70 = xor i32 %69, -1
  %71 = and i32 %68, %70
  %72 = call i32 @ATA_OUTL(i32 %66, i32 %67, i32 %71)
  %73 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %74 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @FSL_SATA_P_ICC, align 4
  %77 = load i32, i32* @FSL_SATA_P_ICC_ITC_S, align 4
  %78 = shl i32 1, %77
  %79 = call i32 @ATA_OUTL(i32 %75, i32 %76, i32 %78)
  %80 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %81 = call i32 @fsl_sata_start(%struct.fsl_sata_channel* %80)
  ret i32 0
}

declare dso_local %struct.fsl_sata_channel* @device_get_softc(i32) #1

declare dso_local i32 @ATA_INL(i32, i32) #1

declare dso_local i32 @ATA_OUTL(i32, i32, i32) #1

declare dso_local i32 @fsl_sata_wait_register(%struct.fsl_sata_channel*, i32, i32, i32, i32) #1

declare dso_local i32 @fsl_sata_start(%struct.fsl_sata_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
