; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_busdma_dmar.c_dmar_bus_dmamap_load_ma.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_busdma_dmar.c_dmar_bus_dmamap_load_ma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_page = type { i32 }
%struct.bus_dma_tag_dmar = type { i32 }
%struct.bus_dmamap_dmar = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, %struct.vm_page**, i32, i32, i32, i32*, i32*)* @dmar_bus_dmamap_load_ma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmar_bus_dmamap_load_ma(i64 %0, i64 %1, %struct.vm_page** %2, i32 %3, i32 %4, i32 %5, i32* %6, i32* %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.vm_page**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.bus_dma_tag_dmar*, align 8
  %18 = alloca %struct.bus_dmamap_dmar*, align 8
  store i64 %0, i64* %9, align 8
  store i64 %1, i64* %10, align 8
  store %struct.vm_page** %2, %struct.vm_page*** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  %19 = load i64, i64* %9, align 8
  %20 = inttoptr i64 %19 to %struct.bus_dma_tag_dmar*
  store %struct.bus_dma_tag_dmar* %20, %struct.bus_dma_tag_dmar** %17, align 8
  %21 = load i64, i64* %10, align 8
  %22 = inttoptr i64 %21 to %struct.bus_dmamap_dmar*
  store %struct.bus_dmamap_dmar* %22, %struct.bus_dmamap_dmar** %18, align 8
  %23 = load %struct.bus_dma_tag_dmar*, %struct.bus_dma_tag_dmar** %17, align 8
  %24 = load %struct.bus_dmamap_dmar*, %struct.bus_dmamap_dmar** %18, align 8
  %25 = load %struct.vm_page**, %struct.vm_page*** %11, align 8
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %14, align 4
  %29 = load i32*, i32** %15, align 8
  %30 = load i32*, i32** %16, align 8
  %31 = call i32 @dmar_bus_dmamap_load_something(%struct.bus_dma_tag_dmar* %23, %struct.bus_dmamap_dmar* %24, %struct.vm_page** %25, i32 %26, i32 %27, i32 %28, i32* %29, i32* %30)
  ret i32 %31
}

declare dso_local i32 @dmar_bus_dmamap_load_something(%struct.bus_dma_tag_dmar*, %struct.bus_dmamap_dmar*, %struct.vm_page**, i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
