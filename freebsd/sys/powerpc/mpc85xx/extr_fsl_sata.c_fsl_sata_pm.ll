; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_fsl_sata.c_fsl_sata_pm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_fsl_sata.c_fsl_sata_pm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_sata_channel = type { i64, i32, i32 }

@FSL_SATA_P_PCC = common dso_local global i32 0, align 4
@FSL_SATA_PCC_LPB_EN = common dso_local global i32 0, align 4
@FSL_SATA_P_PCC_PARTIAL = common dso_local global i32 0, align 4
@FSL_SATA_P_PCC_SLUMBER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @fsl_sata_pm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_sata_pm(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.fsl_sata_channel*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.fsl_sata_channel*
  store %struct.fsl_sata_channel* %6, %struct.fsl_sata_channel** %3, align 8
  %7 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %8 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %40

12:                                               ; preds = %1
  %13 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %14 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @FSL_SATA_P_PCC, align 4
  %17 = call i32 @ATA_INL(i32 %15, i32 %16)
  %18 = load i32, i32* @FSL_SATA_PCC_LPB_EN, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  store i32 %20, i32* %4, align 4
  %21 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %22 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 4
  br i1 %24, label %25, label %29

25:                                               ; preds = %12
  %26 = load i32, i32* @FSL_SATA_P_PCC_PARTIAL, align 4
  %27 = load i32, i32* %4, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %4, align 4
  br label %33

29:                                               ; preds = %12
  %30 = load i32, i32* @FSL_SATA_P_PCC_SLUMBER, align 4
  %31 = load i32, i32* %4, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %29, %25
  %34 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %35 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @FSL_SATA_P_PCC, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @ATA_OUTL(i32 %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %33, %11
  ret void
}

declare dso_local i32 @ATA_INL(i32, i32) #1

declare dso_local i32 @ATA_OUTL(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
