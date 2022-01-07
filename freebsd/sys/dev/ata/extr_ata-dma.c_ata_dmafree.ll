; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-dma.c_ata_dmafree.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-dma.c_ata_dmafree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_channel = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ata_dmaslot* }
%struct.ata_dmaslot = type { i32*, i32*, i32*, i32*, i32, i64 }

@ATA_DMA_SLOTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ata_dmafree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_dmafree(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ata_dmaslot*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.ata_channel* @device_get_softc(i32 %6)
  store %struct.ata_channel* %7, %struct.ata_channel** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %92, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @ATA_DMA_SLOTS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %95

12:                                               ; preds = %8
  %13 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %14 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.ata_dmaslot*, %struct.ata_dmaslot** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.ata_dmaslot, %struct.ata_dmaslot* %16, i64 %18
  store %struct.ata_dmaslot* %19, %struct.ata_dmaslot** %5, align 8
  %20 = load %struct.ata_dmaslot*, %struct.ata_dmaslot** %5, align 8
  %21 = getelementptr inbounds %struct.ata_dmaslot, %struct.ata_dmaslot* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %12
  %25 = load %struct.ata_dmaslot*, %struct.ata_dmaslot** %5, align 8
  %26 = getelementptr inbounds %struct.ata_dmaslot, %struct.ata_dmaslot* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.ata_dmaslot*, %struct.ata_dmaslot** %5, align 8
  %29 = getelementptr inbounds %struct.ata_dmaslot, %struct.ata_dmaslot* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @bus_dmamap_unload(i32* %27, i32 %30)
  %32 = load %struct.ata_dmaslot*, %struct.ata_dmaslot** %5, align 8
  %33 = getelementptr inbounds %struct.ata_dmaslot, %struct.ata_dmaslot* %32, i32 0, i32 5
  store i64 0, i64* %33, align 8
  br label %34

34:                                               ; preds = %24, %12
  %35 = load %struct.ata_dmaslot*, %struct.ata_dmaslot** %5, align 8
  %36 = getelementptr inbounds %struct.ata_dmaslot, %struct.ata_dmaslot* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %52

39:                                               ; preds = %34
  %40 = load %struct.ata_dmaslot*, %struct.ata_dmaslot** %5, align 8
  %41 = getelementptr inbounds %struct.ata_dmaslot, %struct.ata_dmaslot* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.ata_dmaslot*, %struct.ata_dmaslot** %5, align 8
  %44 = getelementptr inbounds %struct.ata_dmaslot, %struct.ata_dmaslot* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.ata_dmaslot*, %struct.ata_dmaslot** %5, align 8
  %47 = getelementptr inbounds %struct.ata_dmaslot, %struct.ata_dmaslot* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @bus_dmamem_free(i32* %42, i32* %45, i32 %48)
  %50 = load %struct.ata_dmaslot*, %struct.ata_dmaslot** %5, align 8
  %51 = getelementptr inbounds %struct.ata_dmaslot, %struct.ata_dmaslot* %50, i32 0, i32 3
  store i32* null, i32** %51, align 8
  br label %52

52:                                               ; preds = %39, %34
  %53 = load %struct.ata_dmaslot*, %struct.ata_dmaslot** %5, align 8
  %54 = getelementptr inbounds %struct.ata_dmaslot, %struct.ata_dmaslot* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %67

57:                                               ; preds = %52
  %58 = load %struct.ata_dmaslot*, %struct.ata_dmaslot** %5, align 8
  %59 = getelementptr inbounds %struct.ata_dmaslot, %struct.ata_dmaslot* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.ata_dmaslot*, %struct.ata_dmaslot** %5, align 8
  %62 = getelementptr inbounds %struct.ata_dmaslot, %struct.ata_dmaslot* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @bus_dmamap_destroy(i32* %60, i32* %63)
  %65 = load %struct.ata_dmaslot*, %struct.ata_dmaslot** %5, align 8
  %66 = getelementptr inbounds %struct.ata_dmaslot, %struct.ata_dmaslot* %65, i32 0, i32 2
  store i32* null, i32** %66, align 8
  br label %67

67:                                               ; preds = %57, %52
  %68 = load %struct.ata_dmaslot*, %struct.ata_dmaslot** %5, align 8
  %69 = getelementptr inbounds %struct.ata_dmaslot, %struct.ata_dmaslot* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %79

72:                                               ; preds = %67
  %73 = load %struct.ata_dmaslot*, %struct.ata_dmaslot** %5, align 8
  %74 = getelementptr inbounds %struct.ata_dmaslot, %struct.ata_dmaslot* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @bus_dma_tag_destroy(i32* %75)
  %77 = load %struct.ata_dmaslot*, %struct.ata_dmaslot** %5, align 8
  %78 = getelementptr inbounds %struct.ata_dmaslot, %struct.ata_dmaslot* %77, i32 0, i32 1
  store i32* null, i32** %78, align 8
  br label %79

79:                                               ; preds = %72, %67
  %80 = load %struct.ata_dmaslot*, %struct.ata_dmaslot** %5, align 8
  %81 = getelementptr inbounds %struct.ata_dmaslot, %struct.ata_dmaslot* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %91

84:                                               ; preds = %79
  %85 = load %struct.ata_dmaslot*, %struct.ata_dmaslot** %5, align 8
  %86 = getelementptr inbounds %struct.ata_dmaslot, %struct.ata_dmaslot* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @bus_dma_tag_destroy(i32* %87)
  %89 = load %struct.ata_dmaslot*, %struct.ata_dmaslot** %5, align 8
  %90 = getelementptr inbounds %struct.ata_dmaslot, %struct.ata_dmaslot* %89, i32 0, i32 0
  store i32* null, i32** %90, align 8
  br label %91

91:                                               ; preds = %84, %79
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %4, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %4, align 4
  br label %8

95:                                               ; preds = %8
  ret void
}

declare dso_local %struct.ata_channel* @device_get_softc(i32) #1

declare dso_local i32 @bus_dmamap_unload(i32*, i32) #1

declare dso_local i32 @bus_dmamem_free(i32*, i32*, i32) #1

declare dso_local i32 @bus_dmamap_destroy(i32*, i32*) #1

declare dso_local i32 @bus_dma_tag_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
