; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci.c_isci_allocate_dma_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci.c_isci_allocate_dma_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ISCI_CONTROLLER = type { i32 }
%struct.ISCI_MEMORY = type { i32, i64, i32, i32 }

@ISCI_DMA_BOUNDARY = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@busdma_lock_mutex = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"ISCI\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"bus_dma_tag_create failed\0A\00", align 1
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"bus_dmamem_alloc failed\0A\00", align 1
@isci_allocate_dma_buffer_callback = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"bus_dmamap_load failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isci_allocate_dma_buffer(i32 %0, %struct.ISCI_CONTROLLER* %1, %struct.ISCI_MEMORY* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ISCI_CONTROLLER*, align 8
  %7 = alloca %struct.ISCI_MEMORY*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store %struct.ISCI_CONTROLLER* %1, %struct.ISCI_CONTROLLER** %6, align 8
  store %struct.ISCI_MEMORY* %2, %struct.ISCI_MEMORY** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @bus_get_dma_tag(i32 %9)
  %11 = load i32, i32* @ISCI_DMA_BOUNDARY, align 4
  %12 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %13 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %14 = load %struct.ISCI_MEMORY*, %struct.ISCI_MEMORY** %7, align 8
  %15 = getelementptr inbounds %struct.ISCI_MEMORY, %struct.ISCI_MEMORY* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.ISCI_MEMORY*, %struct.ISCI_MEMORY** %7, align 8
  %18 = getelementptr inbounds %struct.ISCI_MEMORY, %struct.ISCI_MEMORY* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @busdma_lock_mutex, align 4
  %21 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %6, align 8
  %22 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %21, i32 0, i32 0
  %23 = load %struct.ISCI_MEMORY*, %struct.ISCI_MEMORY** %7, align 8
  %24 = getelementptr inbounds %struct.ISCI_MEMORY, %struct.ISCI_MEMORY* %23, i32 0, i32 3
  %25 = call i64 @bus_dma_tag_create(i32 %10, i32 64, i32 %11, i32 %12, i32 %13, i32* null, i32* null, i32 %16, i32 1, i32 %19, i32 0, i32 %20, i32* %22, i32* %24)
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* @ENOMEM, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %3
  %30 = call i32 @isci_log_message(i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i64, i64* %8, align 8
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %4, align 4
  br label %76

33:                                               ; preds = %3
  %34 = load %struct.ISCI_MEMORY*, %struct.ISCI_MEMORY** %7, align 8
  %35 = getelementptr inbounds %struct.ISCI_MEMORY, %struct.ISCI_MEMORY* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ISCI_MEMORY*, %struct.ISCI_MEMORY** %7, align 8
  %38 = getelementptr inbounds %struct.ISCI_MEMORY, %struct.ISCI_MEMORY* %37, i32 0, i32 1
  %39 = bitcast i64* %38 to i8**
  %40 = load i32, i32* @BUS_DMA_ZERO, align 4
  %41 = load %struct.ISCI_MEMORY*, %struct.ISCI_MEMORY** %7, align 8
  %42 = getelementptr inbounds %struct.ISCI_MEMORY, %struct.ISCI_MEMORY* %41, i32 0, i32 2
  %43 = call i64 @bus_dmamem_alloc(i32 %36, i8** %39, i32 %40, i32* %42)
  store i64 %43, i64* %8, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* @ENOMEM, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %33
  %48 = call i32 @isci_log_message(i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i64, i64* %8, align 8
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %4, align 4
  br label %76

51:                                               ; preds = %33
  %52 = load %struct.ISCI_MEMORY*, %struct.ISCI_MEMORY** %7, align 8
  %53 = getelementptr inbounds %struct.ISCI_MEMORY, %struct.ISCI_MEMORY* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ISCI_MEMORY*, %struct.ISCI_MEMORY** %7, align 8
  %56 = getelementptr inbounds %struct.ISCI_MEMORY, %struct.ISCI_MEMORY* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.ISCI_MEMORY*, %struct.ISCI_MEMORY** %7, align 8
  %59 = getelementptr inbounds %struct.ISCI_MEMORY, %struct.ISCI_MEMORY* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to i8*
  %62 = load %struct.ISCI_MEMORY*, %struct.ISCI_MEMORY** %7, align 8
  %63 = getelementptr inbounds %struct.ISCI_MEMORY, %struct.ISCI_MEMORY* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @isci_allocate_dma_buffer_callback, align 4
  %66 = load %struct.ISCI_MEMORY*, %struct.ISCI_MEMORY** %7, align 8
  %67 = call i64 @bus_dmamap_load(i32 %54, i32 %57, i8* %61, i32 %64, i32 %65, %struct.ISCI_MEMORY* %66, i32 0)
  store i64 %67, i64* %8, align 8
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* @EINVAL, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %51
  %72 = call i32 @isci_log_message(i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %73 = load i64, i64* %8, align 8
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %4, align 4
  br label %76

75:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %75, %71, %47, %29
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @isci_log_message(i32, i8*, i8*) #1

declare dso_local i64 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i64 @bus_dmamap_load(i32, i32, i8*, i32, i32, %struct.ISCI_MEMORY*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
