; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs.c_mvs_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs.c_mvs_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvs_slot = type { i64, i32, i32 }
%struct.mvs_channel = type { i32, i32, i32, i32 }

@MVS_SLOT_RUNNING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"Timeout on slot %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [85 x i8] c"iec %08x sstat %08x serr %08x edma_s %08x dma_c %08x dma_s %08x rs %08x status %02x\0A\00", align 1
@EDMA_IEC = common dso_local global i32 0, align 4
@SATA_SS = common dso_local global i32 0, align 4
@SATA_SE = common dso_local global i32 0, align 4
@EDMA_S = common dso_local global i32 0, align 4
@DMA_C = common dso_local global i32 0, align 4
@DMA_S = common dso_local global i32 0, align 4
@ATA_ALTSTAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c" ... waiting for slots %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvs_slot*)* @mvs_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvs_timeout(%struct.mvs_slot* %0) #0 {
  %2 = alloca %struct.mvs_slot*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mvs_channel*, align 8
  store %struct.mvs_slot* %0, %struct.mvs_slot** %2, align 8
  %5 = load %struct.mvs_slot*, %struct.mvs_slot** %2, align 8
  %6 = getelementptr inbounds %struct.mvs_slot, %struct.mvs_slot* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.mvs_channel* @device_get_softc(i32 %8)
  store %struct.mvs_channel* %9, %struct.mvs_channel** %4, align 8
  %10 = load %struct.mvs_slot*, %struct.mvs_slot** %2, align 8
  %11 = getelementptr inbounds %struct.mvs_slot, %struct.mvs_slot* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MVS_SLOT_RUNNING, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %105

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.mvs_slot*, %struct.mvs_slot** %2, align 8
  %19 = getelementptr inbounds %struct.mvs_slot, %struct.mvs_slot* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %24 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @EDMA_IEC, align 4
  %27 = call i32 @ATA_INL(i32 %25, i32 %26)
  %28 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %29 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @SATA_SS, align 4
  %32 = call i32 @ATA_INL(i32 %30, i32 %31)
  %33 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %34 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @SATA_SE, align 4
  %37 = call i32 @ATA_INL(i32 %35, i32 %36)
  %38 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %39 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @EDMA_S, align 4
  %42 = call i32 @ATA_INL(i32 %40, i32 %41)
  %43 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %44 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @DMA_C, align 4
  %47 = call i32 @ATA_INL(i32 %45, i32 %46)
  %48 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %49 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @DMA_S, align 4
  %52 = call i32 @ATA_INL(i32 %50, i32 %51)
  %53 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %54 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %57 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @ATA_ALTSTAT, align 4
  %60 = call i32 @ATA_INB(i32 %58, i32 %59)
  %61 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %22, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %32, i32 %37, i32 %42, i32 %47, i32 %52, i32 %55, i32 %60)
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @mvs_requeue_frozen(i32 %62)
  %64 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %65 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %16
  %69 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %70 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @xpt_freeze_simq(i32 %71, i32 1)
  br label %73

73:                                               ; preds = %68, %16
  %74 = load %struct.mvs_slot*, %struct.mvs_slot** %2, align 8
  %75 = getelementptr inbounds %struct.mvs_slot, %struct.mvs_slot* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = shl i32 1, %76
  %78 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %79 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  %82 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %83 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %86 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = xor i32 %87, -1
  %89 = and i32 %84, %88
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %73
  %92 = load i32, i32* %3, align 4
  %93 = call i32 @mvs_process_timeout(i32 %92)
  br label %105

94:                                               ; preds = %73
  %95 = load i32, i32* %3, align 4
  %96 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %97 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %100 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = xor i32 %101, -1
  %103 = and i32 %98, %102
  %104 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %95, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %15, %94, %91
  ret void
}

declare dso_local %struct.mvs_channel* @device_get_softc(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @ATA_INL(i32, i32) #1

declare dso_local i32 @ATA_INB(i32, i32) #1

declare dso_local i32 @mvs_requeue_frozen(i32) #1

declare dso_local i32 @xpt_freeze_simq(i32, i32) #1

declare dso_local i32 @mvs_process_timeout(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
