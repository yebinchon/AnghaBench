; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_ata_dbdma.c_ata_dbdma_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_ata_dbdma.c_ata_dbdma_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_dbdma_channel = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ata_channel = type { i32 }

@ATA_DMA_ACTIVE = common dso_local global i32 0, align 4
@DBDMA_STATUS_ACTIVE = common dso_local global i32 0, align 4
@ATA_ALTSTAT = common dso_local global i32 0, align 4
@ATA_S_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ata_dbdma_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_dbdma_status(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_dbdma_channel*, align 8
  %5 = alloca %struct.ata_channel*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i8* @device_get_softc(i32 %6)
  %8 = bitcast i8* %7 to %struct.ata_dbdma_channel*
  store %struct.ata_dbdma_channel* %8, %struct.ata_dbdma_channel** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i8* @device_get_softc(i32 %9)
  %11 = bitcast i8* %10 to %struct.ata_channel*
  store %struct.ata_channel* %11, %struct.ata_channel** %5, align 8
  %12 = load %struct.ata_dbdma_channel*, %struct.ata_dbdma_channel** %4, align 8
  %13 = getelementptr inbounds %struct.ata_dbdma_channel, %struct.ata_dbdma_channel* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ATA_DMA_ACTIVE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %1
  %21 = load %struct.ata_dbdma_channel*, %struct.ata_dbdma_channel** %4, align 8
  %22 = getelementptr inbounds %struct.ata_dbdma_channel, %struct.ata_dbdma_channel* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dbdma_get_chan_status(i32 %23)
  %25 = load i32, i32* @DBDMA_STATUS_ACTIVE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %2, align 4
  br label %48

30:                                               ; preds = %1
  %31 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %32 = load i32, i32* @ATA_ALTSTAT, align 4
  %33 = call i32 @ATA_IDX_INB(%struct.ata_channel* %31, i32 %32)
  %34 = load i32, i32* @ATA_S_BUSY, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %30
  %38 = call i32 @DELAY(i32 100)
  %39 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %40 = load i32, i32* @ATA_ALTSTAT, align 4
  %41 = call i32 @ATA_IDX_INB(%struct.ata_channel* %39, i32 %40)
  %42 = load i32, i32* @ATA_S_BUSY, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %48

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46, %30
  store i32 1, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %45, %20
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @dbdma_get_chan_status(i32) #1

declare dso_local i32 @ATA_IDX_INB(%struct.ata_channel*, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
