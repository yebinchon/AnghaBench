; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_ata_dbdma.c_ata_dbdma_dmainit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_ata_dbdma.c_ata_dbdma_dmainit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_dbdma_channel = type { i32, i32, %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@ata_dbdma_start = common dso_local global i32 0, align 4
@ata_dbdma_stop = common dso_local global i32 0, align 4
@ata_dbdma_load = common dso_local global i32 0, align 4
@ata_dbdma_reset = common dso_local global i32 0, align 4
@DEV_BSIZE = common dso_local global i32 0, align 4
@ata_dbdma_status = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"ATA DBDMA\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ata_dbdma_dmainit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_dbdma_channel*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.ata_dbdma_channel* @device_get_softc(i32 %5)
  store %struct.ata_dbdma_channel* %6, %struct.ata_dbdma_channel** %3, align 8
  %7 = load %struct.ata_dbdma_channel*, %struct.ata_dbdma_channel** %3, align 8
  %8 = getelementptr inbounds %struct.ata_dbdma_channel, %struct.ata_dbdma_channel* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.ata_dbdma_channel*, %struct.ata_dbdma_channel** %3, align 8
  %11 = getelementptr inbounds %struct.ata_dbdma_channel, %struct.ata_dbdma_channel* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @bus_get_dma_tag(i32 %13)
  %15 = load %struct.ata_dbdma_channel*, %struct.ata_dbdma_channel** %3, align 8
  %16 = getelementptr inbounds %struct.ata_dbdma_channel, %struct.ata_dbdma_channel* %15, i32 0, i32 3
  %17 = call i32 @dbdma_allocate_channel(i32 %9, i32 %12, i32 %14, i32 256, i32* %16)
  store i32 %17, i32* %4, align 4
  %18 = load %struct.ata_dbdma_channel*, %struct.ata_dbdma_channel** %3, align 8
  %19 = getelementptr inbounds %struct.ata_dbdma_channel, %struct.ata_dbdma_channel* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dbdma_set_wait_selector(i32 %20, i32 128, i32 128)
  %22 = load %struct.ata_dbdma_channel*, %struct.ata_dbdma_channel** %3, align 8
  %23 = getelementptr inbounds %struct.ata_dbdma_channel, %struct.ata_dbdma_channel* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dbdma_insert_stop(i32 %24, i32 0)
  %26 = load %struct.ata_dbdma_channel*, %struct.ata_dbdma_channel** %3, align 8
  %27 = getelementptr inbounds %struct.ata_dbdma_channel, %struct.ata_dbdma_channel* %26, i32 0, i32 0
  store i32 1, i32* %27, align 4
  %28 = load i32, i32* @ata_dbdma_start, align 4
  %29 = load %struct.ata_dbdma_channel*, %struct.ata_dbdma_channel** %3, align 8
  %30 = getelementptr inbounds %struct.ata_dbdma_channel, %struct.ata_dbdma_channel* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 4
  store i32 %28, i32* %32, align 4
  %33 = load i32, i32* @ata_dbdma_stop, align 4
  %34 = load %struct.ata_dbdma_channel*, %struct.ata_dbdma_channel** %3, align 8
  %35 = getelementptr inbounds %struct.ata_dbdma_channel, %struct.ata_dbdma_channel* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 3
  store i32 %33, i32* %37, align 4
  %38 = load i32, i32* @ata_dbdma_load, align 4
  %39 = load %struct.ata_dbdma_channel*, %struct.ata_dbdma_channel** %3, align 8
  %40 = getelementptr inbounds %struct.ata_dbdma_channel, %struct.ata_dbdma_channel* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  store i32 %38, i32* %42, align 4
  %43 = load i32, i32* @ata_dbdma_reset, align 4
  %44 = load %struct.ata_dbdma_channel*, %struct.ata_dbdma_channel** %3, align 8
  %45 = getelementptr inbounds %struct.ata_dbdma_channel, %struct.ata_dbdma_channel* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store i32 %43, i32* %47, align 4
  %48 = load i32, i32* @DEV_BSIZE, align 4
  %49 = mul nsw i32 126, %48
  %50 = load %struct.ata_dbdma_channel*, %struct.ata_dbdma_channel** %3, align 8
  %51 = getelementptr inbounds %struct.ata_dbdma_channel, %struct.ata_dbdma_channel* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i32 %49, i32* %53, align 4
  %54 = load i32, i32* %2, align 4
  %55 = call i32 @ata_dmainit(i32 %54)
  %56 = load i32, i32* @ata_dbdma_status, align 4
  %57 = load %struct.ata_dbdma_channel*, %struct.ata_dbdma_channel** %3, align 8
  %58 = getelementptr inbounds %struct.ata_dbdma_channel, %struct.ata_dbdma_channel* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  store i32 %56, i32* %60, align 4
  %61 = load %struct.ata_dbdma_channel*, %struct.ata_dbdma_channel** %3, align 8
  %62 = getelementptr inbounds %struct.ata_dbdma_channel, %struct.ata_dbdma_channel* %61, i32 0, i32 1
  %63 = load i32, i32* @MTX_DEF, align 4
  %64 = call i32 @mtx_init(i32* %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* null, i32 %63)
  ret void
}

declare dso_local %struct.ata_dbdma_channel* @device_get_softc(i32) #1

declare dso_local i32 @dbdma_allocate_channel(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @dbdma_set_wait_selector(i32, i32, i32) #1

declare dso_local i32 @dbdma_insert_stop(i32, i32) #1

declare dso_local i32 @ata_dmainit(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
