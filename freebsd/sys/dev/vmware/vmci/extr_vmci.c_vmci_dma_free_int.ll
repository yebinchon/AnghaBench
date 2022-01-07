; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci.c_vmci_dma_free_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci.c_vmci_dma_free_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_softc = type { i32 }
%struct.vmci_dma_alloc = type { i64, i32*, i32, i32* }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmci_softc*, %struct.vmci_dma_alloc*)* @vmci_dma_free_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmci_dma_free_int(%struct.vmci_softc* %0, %struct.vmci_dma_alloc* %1) #0 {
  %3 = alloca %struct.vmci_softc*, align 8
  %4 = alloca %struct.vmci_dma_alloc*, align 8
  store %struct.vmci_softc* %0, %struct.vmci_softc** %3, align 8
  store %struct.vmci_dma_alloc* %1, %struct.vmci_dma_alloc** %4, align 8
  %5 = load %struct.vmci_dma_alloc*, %struct.vmci_dma_alloc** %4, align 8
  %6 = getelementptr inbounds %struct.vmci_dma_alloc, %struct.vmci_dma_alloc* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %53

9:                                                ; preds = %2
  %10 = load %struct.vmci_dma_alloc*, %struct.vmci_dma_alloc** %4, align 8
  %11 = getelementptr inbounds %struct.vmci_dma_alloc, %struct.vmci_dma_alloc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %9
  %15 = load %struct.vmci_dma_alloc*, %struct.vmci_dma_alloc** %4, align 8
  %16 = getelementptr inbounds %struct.vmci_dma_alloc, %struct.vmci_dma_alloc* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.vmci_dma_alloc*, %struct.vmci_dma_alloc** %4, align 8
  %19 = getelementptr inbounds %struct.vmci_dma_alloc, %struct.vmci_dma_alloc* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %22 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @bus_dmamap_sync(i32* %17, i32 %20, i32 %23)
  %25 = load %struct.vmci_dma_alloc*, %struct.vmci_dma_alloc** %4, align 8
  %26 = getelementptr inbounds %struct.vmci_dma_alloc, %struct.vmci_dma_alloc* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.vmci_dma_alloc*, %struct.vmci_dma_alloc** %4, align 8
  %29 = getelementptr inbounds %struct.vmci_dma_alloc, %struct.vmci_dma_alloc* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @bus_dmamap_unload(i32* %27, i32 %30)
  br label %32

32:                                               ; preds = %14, %9
  %33 = load %struct.vmci_dma_alloc*, %struct.vmci_dma_alloc** %4, align 8
  %34 = getelementptr inbounds %struct.vmci_dma_alloc, %struct.vmci_dma_alloc* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %48

37:                                               ; preds = %32
  %38 = load %struct.vmci_dma_alloc*, %struct.vmci_dma_alloc** %4, align 8
  %39 = getelementptr inbounds %struct.vmci_dma_alloc, %struct.vmci_dma_alloc* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.vmci_dma_alloc*, %struct.vmci_dma_alloc** %4, align 8
  %42 = getelementptr inbounds %struct.vmci_dma_alloc, %struct.vmci_dma_alloc* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.vmci_dma_alloc*, %struct.vmci_dma_alloc** %4, align 8
  %45 = getelementptr inbounds %struct.vmci_dma_alloc, %struct.vmci_dma_alloc* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @bus_dmamem_free(i32* %40, i32* %43, i32 %46)
  br label %48

48:                                               ; preds = %37, %32
  %49 = load %struct.vmci_dma_alloc*, %struct.vmci_dma_alloc** %4, align 8
  %50 = getelementptr inbounds %struct.vmci_dma_alloc, %struct.vmci_dma_alloc* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @bus_dma_tag_destroy(i32* %51)
  br label %53

53:                                               ; preds = %48, %2
  %54 = load %struct.vmci_dma_alloc*, %struct.vmci_dma_alloc** %4, align 8
  %55 = call i32 @bzero(%struct.vmci_dma_alloc* %54, i32 32)
  ret void
}

declare dso_local i32 @bus_dmamap_sync(i32*, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32*, i32) #1

declare dso_local i32 @bus_dmamem_free(i32*, i32*, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32*) #1

declare dso_local i32 @bzero(%struct.vmci_dma_alloc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
