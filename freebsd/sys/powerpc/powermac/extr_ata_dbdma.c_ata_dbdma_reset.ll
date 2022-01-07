; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_ata_dbdma.c_ata_dbdma_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_ata_dbdma.c_ata_dbdma_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_dbdma_channel = type { i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ATA_DMA_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ata_dbdma_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_dbdma_reset(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_dbdma_channel*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.ata_dbdma_channel* @device_get_softc(i32 %4)
  store %struct.ata_dbdma_channel* %5, %struct.ata_dbdma_channel** %3, align 8
  %6 = load %struct.ata_dbdma_channel*, %struct.ata_dbdma_channel** %3, align 8
  %7 = getelementptr inbounds %struct.ata_dbdma_channel, %struct.ata_dbdma_channel* %6, i32 0, i32 1
  %8 = call i32 @mtx_lock(i32* %7)
  %9 = load %struct.ata_dbdma_channel*, %struct.ata_dbdma_channel** %3, align 8
  %10 = getelementptr inbounds %struct.ata_dbdma_channel, %struct.ata_dbdma_channel* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @dbdma_stop(i32 %11)
  %13 = load %struct.ata_dbdma_channel*, %struct.ata_dbdma_channel** %3, align 8
  %14 = getelementptr inbounds %struct.ata_dbdma_channel, %struct.ata_dbdma_channel* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @dbdma_insert_stop(i32 %15, i32 0)
  %17 = load %struct.ata_dbdma_channel*, %struct.ata_dbdma_channel** %3, align 8
  %18 = getelementptr inbounds %struct.ata_dbdma_channel, %struct.ata_dbdma_channel* %17, i32 0, i32 0
  store i32 1, i32* %18, align 4
  %19 = load %struct.ata_dbdma_channel*, %struct.ata_dbdma_channel** %3, align 8
  %20 = getelementptr inbounds %struct.ata_dbdma_channel, %struct.ata_dbdma_channel* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dbdma_set_current_cmd(i32 %21, i32 0)
  %23 = load i32, i32* @ATA_DMA_ACTIVE, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.ata_dbdma_channel*, %struct.ata_dbdma_channel** %3, align 8
  %26 = getelementptr inbounds %struct.ata_dbdma_channel, %struct.ata_dbdma_channel* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, %24
  store i32 %30, i32* %28, align 4
  %31 = load %struct.ata_dbdma_channel*, %struct.ata_dbdma_channel** %3, align 8
  %32 = getelementptr inbounds %struct.ata_dbdma_channel, %struct.ata_dbdma_channel* %31, i32 0, i32 1
  %33 = call i32 @mtx_unlock(i32* %32)
  ret void
}

declare dso_local %struct.ata_dbdma_channel* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @dbdma_stop(i32) #1

declare dso_local i32 @dbdma_insert_stop(i32, i32) #1

declare dso_local i32 @dbdma_set_current_cmd(i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
