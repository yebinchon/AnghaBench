; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-dma.c_ata_dmafini.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-dma.c_ata_dmafini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_channel = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32*, i32*, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ata_dmafini(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_channel*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.ata_channel* @device_get_softc(i32 %4)
  store %struct.ata_channel* %5, %struct.ata_channel** %3, align 8
  %6 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %7 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %40

11:                                               ; preds = %1
  %12 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %13 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %17 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @bus_dmamap_unload(i32* %15, i32 %19)
  %21 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %22 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %26 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %30 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @bus_dmamem_free(i32* %24, i32* %28, i32 %32)
  %34 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %35 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 3
  store i64 0, i64* %36, align 8
  %37 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %38 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  store i32* null, i32** %39, align 8
  br label %40

40:                                               ; preds = %11, %1
  %41 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %42 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %55

46:                                               ; preds = %40
  %47 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %48 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @bus_dma_tag_destroy(i32* %50)
  %52 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %53 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  store i32* null, i32** %54, align 8
  br label %55

55:                                               ; preds = %46, %40
  %56 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %57 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %70

61:                                               ; preds = %55
  %62 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %63 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @bus_dma_tag_destroy(i32* %65)
  %67 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %68 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i32* null, i32** %69, align 8
  br label %70

70:                                               ; preds = %61, %55
  ret void
}

declare dso_local %struct.ata_channel* @device_get_softc(i32) #1

declare dso_local i32 @bus_dmamap_unload(i32*, i32) #1

declare dso_local i32 @bus_dmamem_free(i32*, i32*, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
