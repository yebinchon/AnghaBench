; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs.c_mvs_ch_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs.c_mvs_ch_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvs_channel = type { i32, i32 }

@EDMA_IEM = common dso_local global i32 0, align 4
@MVS_EDMA_UNKNOWN = common dso_local global i32 0, align 4
@MVS_EDMA_OFF = common dso_local global i32 0, align 4
@SATA_FISIC = common dso_local global i32 0, align 4
@SATA_FISC = common dso_local global i32 0, align 4
@SATA_FISC_FISWAIT4HOSTRDYEN_B1 = common dso_local global i32 0, align 4
@SATA_FISIM = common dso_local global i32 0, align 4
@SATA_SE = common dso_local global i32 0, align 4
@EDMA_IEC = common dso_local global i32 0, align 4
@EDMA_IE_TRANSIENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mvs_ch_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvs_ch_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mvs_channel*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.mvs_channel* @device_get_softc(i32 %5)
  store %struct.mvs_channel* %6, %struct.mvs_channel** %3, align 8
  %7 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %8 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @EDMA_IEM, align 4
  %11 = call i32 @ATA_OUTL(i32 %9, i32 %10, i32 0)
  %12 = load i32, i32* @MVS_EDMA_UNKNOWN, align 4
  %13 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %14 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @MVS_EDMA_OFF, align 4
  %17 = call i32 @mvs_set_edma_mode(i32 %15, i32 %16)
  %18 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %19 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @SATA_FISIC, align 4
  %22 = call i32 @ATA_OUTL(i32 %20, i32 %21, i32 0)
  %23 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %24 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @SATA_FISC, align 4
  %27 = call i32 @ATA_INL(i32 %25, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* @SATA_FISC_FISWAIT4HOSTRDYEN_B1, align 4
  %29 = load i32, i32* %4, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %4, align 4
  %31 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %32 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @SATA_FISC, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @ATA_OUTL(i32 %33, i32 %34, i32 %35)
  %37 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %38 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @SATA_FISIM, align 4
  %41 = call i32 @ATA_INL(i32 %39, i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* @SATA_FISC_FISWAIT4HOSTRDYEN_B1, align 4
  %43 = load i32, i32* %4, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %4, align 4
  %45 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %46 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @SATA_FISC, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @ATA_OUTL(i32 %47, i32 %48, i32 %49)
  %51 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %52 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @SATA_SE, align 4
  %55 = call i32 @ATA_OUTL(i32 %53, i32 %54, i32 -1)
  %56 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %57 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @EDMA_IEC, align 4
  %60 = call i32 @ATA_OUTL(i32 %58, i32 %59, i32 0)
  %61 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %62 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @EDMA_IEM, align 4
  %65 = load i32, i32* @EDMA_IE_TRANSIENT, align 4
  %66 = xor i32 %65, -1
  %67 = call i32 @ATA_OUTL(i32 %63, i32 %64, i32 %66)
  ret i32 0
}

declare dso_local %struct.mvs_channel* @device_get_softc(i32) #1

declare dso_local i32 @ATA_OUTL(i32, i32, i32) #1

declare dso_local i32 @mvs_set_edma_mode(i32, i32) #1

declare dso_local i32 @ATA_INL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
