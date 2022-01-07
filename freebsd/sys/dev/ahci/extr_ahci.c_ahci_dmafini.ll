; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_dmafini.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_dmafini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_channel = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32*, i64, i32, i32*, i64, i32, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ahci_dmafini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahci_dmafini(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahci_channel*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.ahci_channel* @device_get_softc(i32 %4)
  store %struct.ahci_channel* %5, %struct.ahci_channel** %3, align 8
  %6 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %7 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 8
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %13 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 8
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @bus_dma_tag_destroy(i32* %15)
  %17 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %18 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 8
  store i32* null, i32** %19, align 8
  br label %20

20:                                               ; preds = %11, %1
  %21 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %22 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 5
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %55

26:                                               ; preds = %20
  %27 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %28 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 7
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %32 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @bus_dmamap_unload(i32* %30, i32 %34)
  %36 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %37 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 7
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %41 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 4
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %45 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @bus_dmamem_free(i32* %39, i32* %43, i32 %47)
  %49 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %50 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 5
  store i64 0, i64* %51, align 8
  %52 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %53 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 4
  store i32* null, i32** %54, align 8
  br label %55

55:                                               ; preds = %26, %20
  %56 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %57 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %90

61:                                               ; preds = %55
  %62 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %63 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %67 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @bus_dmamap_unload(i32* %65, i32 %69)
  %71 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %72 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %76 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %80 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @bus_dmamem_free(i32* %74, i32* %78, i32 %82)
  %84 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %85 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 2
  store i64 0, i64* %86, align 8
  %87 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %88 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  store i32* null, i32** %89, align 8
  br label %90

90:                                               ; preds = %61, %55
  %91 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %92 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %105

96:                                               ; preds = %90
  %97 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %98 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @bus_dma_tag_destroy(i32* %100)
  %102 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %103 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  store i32* null, i32** %104, align 8
  br label %105

105:                                              ; preds = %96, %90
  ret void
}

declare dso_local %struct.ahci_channel* @device_get_softc(i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32*) #1

declare dso_local i32 @bus_dmamap_unload(i32*, i32) #1

declare dso_local i32 @bus_dmamem_free(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
