; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_fsl_sata.c_fsl_sata_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_fsl_sata.c_fsl_sata_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_sata_channel = type { i64, i32, i32 }

@FSL_SATA_P_HCTRL = common dso_local global i32 0, align 4
@FSL_SATA_P_HCTRL_HC_ON = common dso_local global i32 0, align 4
@FSL_SATA_P_HSTS = common dso_local global i32 0, align 4
@FSL_SATA_P_HSTS_HS_ON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"stopping FSL SATA engine failed\0A\00", align 1
@FSL_SATA_P_HCTRL_HC_FORCE_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_sata_channel*)* @fsl_sata_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_sata_stop(%struct.fsl_sata_channel* %0) #0 {
  %2 = alloca %struct.fsl_sata_channel*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.fsl_sata_channel* %0, %struct.fsl_sata_channel** %2, align 8
  %5 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %6 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @FSL_SATA_P_HCTRL, align 4
  %9 = call i32 @ATA_INL(i32 %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @FSL_SATA_P_HCTRL_HC_ON, align 4
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %43, %1
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 2
  br i1 %16, label %17, label %46

17:                                               ; preds = %14
  %18 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %19 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @FSL_SATA_P_HCTRL, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @ATA_OUTL(i32 %20, i32 %21, i32 %22)
  %24 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %25 = load i32, i32* @FSL_SATA_P_HSTS, align 4
  %26 = load i32, i32* @FSL_SATA_P_HSTS_HS_ON, align 4
  %27 = call i64 @fsl_sata_wait_register(%struct.fsl_sata_channel* %24, i32 %25, i32 %26, i32 0, i32 500)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %17
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %34 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @device_printf(i32 %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %32, %29
  %38 = load i32, i32* @FSL_SATA_P_HCTRL_HC_FORCE_OFF, align 4
  %39 = load i32, i32* %3, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %3, align 4
  br label %42

41:                                               ; preds = %17
  br label %46

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %14

46:                                               ; preds = %41, %14
  %47 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %48 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  ret void
}

declare dso_local i32 @ATA_INL(i32, i32) #1

declare dso_local i32 @ATA_OUTL(i32, i32, i32) #1

declare dso_local i64 @fsl_sata_wait_register(%struct.fsl_sata_channel*, i32, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
