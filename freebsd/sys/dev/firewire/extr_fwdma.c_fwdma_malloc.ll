; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwdma.c_fwdma_malloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwdma.c_fwdma_malloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firewire_comm = type { i32 }
%struct.fwdma_alloc = type { i8*, i32, i32, i32 }

@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@BUS_DMA_ALLOCNOW = common dso_local global i32 0, align 4
@busdma_lock_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"fwdma_malloc: failed(1)\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"fwdma_malloc: failed(2)\0A\00", align 1
@fwdma_map_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @fwdma_malloc(%struct.firewire_comm* %0, i32 %1, i32 %2, %struct.fwdma_alloc* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.firewire_comm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fwdma_alloc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.firewire_comm* %0, %struct.firewire_comm** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.fwdma_alloc* %3, %struct.fwdma_alloc** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.fwdma_alloc*, %struct.fwdma_alloc** %10, align 8
  %14 = getelementptr inbounds %struct.fwdma_alloc, %struct.fwdma_alloc* %13, i32 0, i32 0
  store i8* null, i8** %14, align 8
  %15 = load %struct.firewire_comm*, %struct.firewire_comm** %7, align 8
  %16 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %20 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %23 = load i32, i32* @BUS_DMA_ALLOCNOW, align 4
  %24 = load i32, i32* @busdma_lock_mutex, align 4
  %25 = load %struct.firewire_comm*, %struct.firewire_comm** %7, align 8
  %26 = call i32 @FW_GMTX(%struct.firewire_comm* %25)
  %27 = load %struct.fwdma_alloc*, %struct.fwdma_alloc** %10, align 8
  %28 = getelementptr inbounds %struct.fwdma_alloc, %struct.fwdma_alloc* %27, i32 0, i32 3
  %29 = call i32 @bus_dma_tag_create(i32 %17, i32 %18, i32 0, i32 %19, i32 %20, i32* null, i32* null, i32 %21, i32 1, i32 %22, i32 %23, i32 %24, i32 %26, i32* %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %5
  %33 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %6, align 8
  br label %66

34:                                               ; preds = %5
  %35 = load %struct.fwdma_alloc*, %struct.fwdma_alloc** %10, align 8
  %36 = getelementptr inbounds %struct.fwdma_alloc, %struct.fwdma_alloc* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.fwdma_alloc*, %struct.fwdma_alloc** %10, align 8
  %39 = getelementptr inbounds %struct.fwdma_alloc, %struct.fwdma_alloc* %38, i32 0, i32 0
  %40 = load i32, i32* %11, align 4
  %41 = load %struct.fwdma_alloc*, %struct.fwdma_alloc** %10, align 8
  %42 = getelementptr inbounds %struct.fwdma_alloc, %struct.fwdma_alloc* %41, i32 0, i32 2
  %43 = call i32 @bus_dmamem_alloc(i32 %37, i8** %39, i32 %40, i32* %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %34
  %47 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i8* null, i8** %6, align 8
  br label %66

48:                                               ; preds = %34
  %49 = load %struct.fwdma_alloc*, %struct.fwdma_alloc** %10, align 8
  %50 = getelementptr inbounds %struct.fwdma_alloc, %struct.fwdma_alloc* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.fwdma_alloc*, %struct.fwdma_alloc** %10, align 8
  %53 = getelementptr inbounds %struct.fwdma_alloc, %struct.fwdma_alloc* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.fwdma_alloc*, %struct.fwdma_alloc** %10, align 8
  %56 = getelementptr inbounds %struct.fwdma_alloc, %struct.fwdma_alloc* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @fwdma_map_cb, align 4
  %60 = load %struct.fwdma_alloc*, %struct.fwdma_alloc** %10, align 8
  %61 = getelementptr inbounds %struct.fwdma_alloc, %struct.fwdma_alloc* %60, i32 0, i32 1
  %62 = call i32 @bus_dmamap_load(i32 %51, i32 %54, i8* %57, i32 %58, i32 %59, i32* %61, i32 0)
  %63 = load %struct.fwdma_alloc*, %struct.fwdma_alloc** %10, align 8
  %64 = getelementptr inbounds %struct.fwdma_alloc, %struct.fwdma_alloc* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  store i8* %65, i8** %6, align 8
  br label %66

66:                                               ; preds = %48, %46, %32
  %67 = load i8*, i8** %6, align 8
  ret i8* %67
}

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @FW_GMTX(%struct.firewire_comm*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i8*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
