; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-dma.c_ata_dmaunload.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-dma.c_ata_dmaunload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_request = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"dmaunload\00", align 1
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@ATA_R_READ = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_dmaunload(%struct.ata_request* %0) #0 {
  %2 = alloca %struct.ata_request*, align 8
  store %struct.ata_request* %0, %struct.ata_request** %2, align 8
  %3 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %4 = call i32 @ATA_DEBUG_RQ(%struct.ata_request* %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %6 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = icmp ne %struct.TYPE_2__* %7, null
  br i1 %8, label %9, label %58

9:                                                ; preds = %1
  %10 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %11 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %16 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %21 = call i32 @bus_dmamap_sync(i32 %14, i32 %19, i32 %20)
  %22 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %23 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %28 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %33 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @ATA_R_READ, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %9
  %39 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  br label %42

40:                                               ; preds = %9
  %41 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  %44 = call i32 @bus_dmamap_sync(i32 %26, i32 %31, i32 %43)
  %45 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %46 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %51 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @bus_dmamap_unload(i32 %49, i32 %54)
  %56 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %57 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %56, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %57, align 8
  br label %58

58:                                               ; preds = %42, %1
  ret i32 0
}

declare dso_local i32 @ATA_DEBUG_RQ(%struct.ata_request*, i8*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
