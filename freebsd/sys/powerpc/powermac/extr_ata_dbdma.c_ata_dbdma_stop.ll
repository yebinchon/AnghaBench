; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_ata_dbdma.c_ata_dbdma_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_ata_dbdma.c_ata_dbdma_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_request = type { i32 }
%struct.ata_dbdma_channel = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ATA_DMA_ACTIVE = common dso_local global i32 0, align 4
@DBDMA_STATUS_DEAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"DBDMA dead, resetting channel...\0A\00", align 1
@ATA_S_ERROR = common dso_local global i32 0, align 4
@DBDMA_STATUS_RUN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"DBDMA confused, stop called when channel is not running!\0A\00", align 1
@DBDMA_STATUS_ACTIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"DBDMA channel stopped prematurely\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_request*)* @ata_dbdma_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_dbdma_stop(%struct.ata_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_request*, align 8
  %4 = alloca %struct.ata_dbdma_channel*, align 8
  %5 = alloca i32, align 4
  store %struct.ata_request* %0, %struct.ata_request** %3, align 8
  %6 = load %struct.ata_request*, %struct.ata_request** %3, align 8
  %7 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.ata_dbdma_channel* @device_get_softc(i32 %8)
  store %struct.ata_dbdma_channel* %9, %struct.ata_dbdma_channel** %4, align 8
  %10 = load %struct.ata_dbdma_channel*, %struct.ata_dbdma_channel** %4, align 8
  %11 = getelementptr inbounds %struct.ata_dbdma_channel, %struct.ata_dbdma_channel* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @dbdma_get_chan_status(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.ata_dbdma_channel*, %struct.ata_dbdma_channel** %4, align 8
  %15 = getelementptr inbounds %struct.ata_dbdma_channel, %struct.ata_dbdma_channel* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dbdma_pause(i32 %16)
  %18 = load i32, i32* @ATA_DMA_ACTIVE, align 4
  %19 = xor i32 %18, -1
  %20 = load %struct.ata_dbdma_channel*, %struct.ata_dbdma_channel** %4, align 8
  %21 = getelementptr inbounds %struct.ata_dbdma_channel, %struct.ata_dbdma_channel* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, %19
  store i32 %25, i32* %23, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @DBDMA_STATUS_DEAD, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %1
  %31 = load %struct.ata_request*, %struct.ata_request** %3, align 8
  %32 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @device_printf(i32 %33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.ata_request*, %struct.ata_request** %3, align 8
  %36 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ata_dbdma_reset(i32 %37)
  %39 = load i32, i32* @ATA_S_ERROR, align 4
  store i32 %39, i32* %2, align 4
  br label %63

40:                                               ; preds = %1
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @DBDMA_STATUS_RUN, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %40
  %46 = load %struct.ata_request*, %struct.ata_request** %3, align 8
  %47 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @device_printf(i32 %48, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @ATA_S_ERROR, align 4
  store i32 %50, i32* %2, align 4
  br label %63

51:                                               ; preds = %40
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @DBDMA_STATUS_ACTIVE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load %struct.ata_request*, %struct.ata_request** %3, align 8
  %58 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @device_printf(i32 %59, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %61 = load i32, i32* @ATA_S_ERROR, align 4
  store i32 %61, i32* %2, align 4
  br label %63

62:                                               ; preds = %51
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %56, %45, %30
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local %struct.ata_dbdma_channel* @device_get_softc(i32) #1

declare dso_local i32 @dbdma_get_chan_status(i32) #1

declare dso_local i32 @dbdma_pause(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @ata_dbdma_reset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
