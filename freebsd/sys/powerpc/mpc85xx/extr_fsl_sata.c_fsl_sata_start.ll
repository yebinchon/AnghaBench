; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_fsl_sata.c_fsl_sata_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_fsl_sata.c_fsl_sata_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_sata_channel = type { i32, i64 }

@FSL_SATA_P_SERR = common dso_local global i32 0, align 4
@FSL_SATA_P_HSTS = common dso_local global i32 0, align 4
@FSL_SATA_P_CER = common dso_local global i32 0, align 4
@FSL_SATA_P_DER = common dso_local global i32 0, align 4
@FSL_SATA_P_HCTRL = common dso_local global i32 0, align 4
@FSL_SATA_P_HCTRL_HC_ON = common dso_local global i32 0, align 4
@FSL_SATA_P_HCTRL_SNOOP = common dso_local global i32 0, align 4
@FSL_SATA_P_HCTRL_HC_FORCE_OFF = common dso_local global i32 0, align 4
@FSL_SATA_P_HCTRL_PM = common dso_local global i32 0, align 4
@FSL_SATA_P_HSTS_PR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_sata_channel*)* @fsl_sata_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_sata_start(%struct.fsl_sata_channel* %0) #0 {
  %2 = alloca %struct.fsl_sata_channel*, align 8
  %3 = alloca i32, align 4
  store %struct.fsl_sata_channel* %0, %struct.fsl_sata_channel** %2, align 8
  %4 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %5 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @FSL_SATA_P_SERR, align 4
  %8 = call i32 @ATA_OUTL(i32 %6, i32 %7, i32 -1)
  %9 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %10 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @FSL_SATA_P_HSTS, align 4
  %13 = call i32 @ATA_OUTL(i32 %11, i32 %12, i32 63)
  %14 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %15 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @FSL_SATA_P_CER, align 4
  %18 = call i32 @ATA_OUTL(i32 %16, i32 %17, i32 65535)
  %19 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %20 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @FSL_SATA_P_DER, align 4
  %23 = call i32 @ATA_OUTL(i32 %21, i32 %22, i32 65535)
  %24 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %25 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @FSL_SATA_P_HCTRL, align 4
  %28 = call i32 @ATA_INL(i32 %26, i32 %27)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* @FSL_SATA_P_HCTRL_HC_ON, align 4
  %30 = load i32, i32* @FSL_SATA_P_HCTRL_SNOOP, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* %3, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* @FSL_SATA_P_HCTRL_HC_FORCE_OFF, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %3, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %3, align 4
  %38 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %39 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @FSL_SATA_P_HCTRL, align 4
  %42 = load i32, i32* %3, align 4
  %43 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %44 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %1
  %48 = load i32, i32* @FSL_SATA_P_HCTRL_PM, align 4
  br label %50

49:                                               ; preds = %1
  br label %50

50:                                               ; preds = %49, %47
  %51 = phi i32 [ %48, %47 ], [ 0, %49 ]
  %52 = or i32 %42, %51
  %53 = call i32 @ATA_OUTL(i32 %40, i32 %41, i32 %52)
  %54 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %55 = load i32, i32* @FSL_SATA_P_HSTS, align 4
  %56 = load i32, i32* @FSL_SATA_P_HSTS_PR, align 4
  %57 = load i32, i32* @FSL_SATA_P_HSTS_PR, align 4
  %58 = call i32 @fsl_sata_wait_register(%struct.fsl_sata_channel* %54, i32 %55, i32 %56, i32 %57, i32 500)
  %59 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %60 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @FSL_SATA_P_HSTS, align 4
  %63 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %64 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @FSL_SATA_P_HSTS, align 4
  %67 = call i32 @ATA_INL(i32 %65, i32 %66)
  %68 = load i32, i32* @FSL_SATA_P_HSTS_PR, align 4
  %69 = and i32 %67, %68
  %70 = call i32 @ATA_OUTL(i32 %61, i32 %62, i32 %69)
  ret void
}

declare dso_local i32 @ATA_OUTL(i32, i32, i32) #1

declare dso_local i32 @ATA_INL(i32, i32) #1

declare dso_local i32 @fsl_sata_wait_register(%struct.fsl_sata_channel*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
