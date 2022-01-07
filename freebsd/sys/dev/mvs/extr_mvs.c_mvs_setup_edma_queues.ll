; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs.c_mvs_setup_edma_queues.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs.c_mvs_setup_edma_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvs_channel = type { i64, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }

@EDMA_REQQBAH = common dso_local global i32 0, align 4
@EDMA_REQQIP = common dso_local global i32 0, align 4
@EDMA_REQQOP = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@MVS_WORKRP_SIZE = common dso_local global i32 0, align 4
@EDMA_RESQBAH = common dso_local global i32 0, align 4
@EDMA_RESQIP = common dso_local global i32 0, align 4
@EDMA_RESQOP = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @mvs_setup_edma_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvs_setup_edma_queues(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mvs_channel*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.mvs_channel* @device_get_softc(i32 %5)
  store %struct.mvs_channel* %6, %struct.mvs_channel** %3, align 8
  %7 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %8 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  %11 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %12 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @EDMA_REQQBAH, align 4
  %15 = load i32, i32* %4, align 4
  %16 = ashr i32 %15, 32
  %17 = call i32 @ATA_OUTL(i32 %13, i32 %14, i32 %16)
  %18 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %19 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @EDMA_REQQIP, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @ATA_OUTL(i32 %20, i32 %21, i32 %22)
  %24 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %25 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @EDMA_REQQOP, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @ATA_OUTL(i32 %26, i32 %27, i32 %28)
  %30 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %31 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %35 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %39 = call i32 @bus_dmamap_sync(i32 %33, i32 %37, i32 %38)
  %40 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %41 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @MVS_WORKRP_SIZE, align 4
  %45 = call i32 @memset(i32 %43, i32 255, i32 %44)
  %46 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %47 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %4, align 4
  %50 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %51 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @EDMA_RESQBAH, align 4
  %54 = load i32, i32* %4, align 4
  %55 = ashr i32 %54, 32
  %56 = call i32 @ATA_OUTL(i32 %52, i32 %53, i32 %55)
  %57 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %58 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @EDMA_RESQIP, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @ATA_OUTL(i32 %59, i32 %60, i32 %61)
  %63 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %64 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @EDMA_RESQOP, align 4
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @ATA_OUTL(i32 %65, i32 %66, i32 %67)
  %69 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %70 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %74 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %78 = call i32 @bus_dmamap_sync(i32 %72, i32 %76, i32 %77)
  %79 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %80 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %79, i32 0, i32 1
  store i64 0, i64* %80, align 8
  %81 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %82 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %81, i32 0, i32 0
  store i64 0, i64* %82, align 8
  ret void
}

declare dso_local %struct.mvs_channel* @device_get_softc(i32) #1

declare dso_local i32 @ATA_OUTL(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
