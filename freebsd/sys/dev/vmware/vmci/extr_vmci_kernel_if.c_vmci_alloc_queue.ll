; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci_kernel_if.c_vmci_alloc_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci_kernel_if.c_vmci_alloc_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_queue = type { %struct.vmci_queue_kernel_if*, i32*, i32* }
%struct.vmci_queue_kernel_if = type { i64, %struct.vmci_dma_alloc* }
%struct.vmci_dma_alloc = type { i64 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@VMCI_MAX_GUEST_QP_MEMORY = common dso_local global i64 0, align 8
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @vmci_alloc_queue(i64 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vmci_queue*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @PAGE_SIZE, align 8
  %13 = call i32 @CEILING(i64 %11, i64 %12)
  %14 = add nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %8, align 8
  %16 = load i64, i64* %8, align 8
  %17 = mul i64 %16, 8
  store i64 %17, i64* %9, align 8
  %18 = load i64, i64* %9, align 8
  %19 = add i64 40, %18
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @VMCI_MAX_GUEST_QP_MEMORY, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = call i32 @ASSERT(i32 0)
  store i8* null, i8** %3, align 8
  br label %106

25:                                               ; preds = %2
  %26 = load i64, i64* %10, align 8
  %27 = load i32, i32* @M_DEVBUF, align 4
  %28 = load i32, i32* @M_NOWAIT, align 4
  %29 = call %struct.vmci_queue* @malloc(i64 %26, i32 %27, i32 %28)
  store %struct.vmci_queue* %29, %struct.vmci_queue** %6, align 8
  %30 = load %struct.vmci_queue*, %struct.vmci_queue** %6, align 8
  %31 = icmp ne %struct.vmci_queue* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %25
  store i8* null, i8** %3, align 8
  br label %106

33:                                               ; preds = %25
  %34 = load %struct.vmci_queue*, %struct.vmci_queue** %6, align 8
  %35 = getelementptr inbounds %struct.vmci_queue, %struct.vmci_queue* %34, i32 0, i32 1
  store i32* null, i32** %35, align 8
  %36 = load %struct.vmci_queue*, %struct.vmci_queue** %6, align 8
  %37 = getelementptr inbounds %struct.vmci_queue, %struct.vmci_queue* %36, i32 0, i32 2
  store i32* null, i32** %37, align 8
  %38 = load %struct.vmci_queue*, %struct.vmci_queue** %6, align 8
  %39 = getelementptr inbounds %struct.vmci_queue, %struct.vmci_queue* %38, i64 1
  %40 = bitcast %struct.vmci_queue* %39 to %struct.vmci_queue_kernel_if*
  %41 = load %struct.vmci_queue*, %struct.vmci_queue** %6, align 8
  %42 = getelementptr inbounds %struct.vmci_queue, %struct.vmci_queue* %41, i32 0, i32 0
  store %struct.vmci_queue_kernel_if* %40, %struct.vmci_queue_kernel_if** %42, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load %struct.vmci_queue*, %struct.vmci_queue** %6, align 8
  %45 = getelementptr inbounds %struct.vmci_queue, %struct.vmci_queue* %44, i32 0, i32 0
  %46 = load %struct.vmci_queue_kernel_if*, %struct.vmci_queue_kernel_if** %45, align 8
  %47 = getelementptr inbounds %struct.vmci_queue_kernel_if, %struct.vmci_queue_kernel_if* %46, i32 0, i32 0
  store i64 %43, i64* %47, align 8
  %48 = load %struct.vmci_queue*, %struct.vmci_queue** %6, align 8
  %49 = getelementptr inbounds %struct.vmci_queue, %struct.vmci_queue* %48, i32 0, i32 0
  %50 = load %struct.vmci_queue_kernel_if*, %struct.vmci_queue_kernel_if** %49, align 8
  %51 = getelementptr inbounds %struct.vmci_queue_kernel_if, %struct.vmci_queue_kernel_if* %50, i64 1
  %52 = bitcast %struct.vmci_queue_kernel_if* %51 to %struct.vmci_dma_alloc*
  %53 = load %struct.vmci_queue*, %struct.vmci_queue** %6, align 8
  %54 = getelementptr inbounds %struct.vmci_queue, %struct.vmci_queue* %53, i32 0, i32 0
  %55 = load %struct.vmci_queue_kernel_if*, %struct.vmci_queue_kernel_if** %54, align 8
  %56 = getelementptr inbounds %struct.vmci_queue_kernel_if, %struct.vmci_queue_kernel_if* %55, i32 0, i32 1
  store %struct.vmci_dma_alloc* %52, %struct.vmci_dma_alloc** %56, align 8
  store i64 0, i64* %7, align 8
  br label %57

57:                                               ; preds = %88, %33
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* %8, align 8
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %61, label %91

61:                                               ; preds = %57
  %62 = load i64, i64* @PAGE_SIZE, align 8
  %63 = load %struct.vmci_queue*, %struct.vmci_queue** %6, align 8
  %64 = getelementptr inbounds %struct.vmci_queue, %struct.vmci_queue* %63, i32 0, i32 0
  %65 = load %struct.vmci_queue_kernel_if*, %struct.vmci_queue_kernel_if** %64, align 8
  %66 = getelementptr inbounds %struct.vmci_queue_kernel_if, %struct.vmci_queue_kernel_if* %65, i32 0, i32 1
  %67 = load %struct.vmci_dma_alloc*, %struct.vmci_dma_alloc** %66, align 8
  %68 = load i64, i64* %7, align 8
  %69 = getelementptr inbounds %struct.vmci_dma_alloc, %struct.vmci_dma_alloc* %67, i64 %68
  %70 = call i32 @vmci_dma_malloc(i64 %62, i32 1, %struct.vmci_dma_alloc* %69)
  %71 = load %struct.vmci_queue*, %struct.vmci_queue** %6, align 8
  %72 = getelementptr inbounds %struct.vmci_queue, %struct.vmci_queue* %71, i32 0, i32 0
  %73 = load %struct.vmci_queue_kernel_if*, %struct.vmci_queue_kernel_if** %72, align 8
  %74 = getelementptr inbounds %struct.vmci_queue_kernel_if, %struct.vmci_queue_kernel_if* %73, i32 0, i32 1
  %75 = load %struct.vmci_dma_alloc*, %struct.vmci_dma_alloc** %74, align 8
  %76 = load i64, i64* %7, align 8
  %77 = getelementptr inbounds %struct.vmci_dma_alloc, %struct.vmci_dma_alloc* %75, i64 %76
  %78 = getelementptr inbounds %struct.vmci_dma_alloc, %struct.vmci_dma_alloc* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %61
  %82 = load %struct.vmci_queue*, %struct.vmci_queue** %6, align 8
  %83 = load i64, i64* %7, align 8
  %84 = load i64, i64* @PAGE_SIZE, align 8
  %85 = mul i64 %83, %84
  %86 = call i32 @vmci_free_queue(%struct.vmci_queue* %82, i64 %85)
  store i8* null, i8** %3, align 8
  br label %106

87:                                               ; preds = %61
  br label %88

88:                                               ; preds = %87
  %89 = load i64, i64* %7, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %7, align 8
  br label %57

91:                                               ; preds = %57
  %92 = load %struct.vmci_queue*, %struct.vmci_queue** %6, align 8
  %93 = getelementptr inbounds %struct.vmci_queue, %struct.vmci_queue* %92, i32 0, i32 0
  %94 = load %struct.vmci_queue_kernel_if*, %struct.vmci_queue_kernel_if** %93, align 8
  %95 = getelementptr inbounds %struct.vmci_queue_kernel_if, %struct.vmci_queue_kernel_if* %94, i32 0, i32 1
  %96 = load %struct.vmci_dma_alloc*, %struct.vmci_dma_alloc** %95, align 8
  %97 = getelementptr inbounds %struct.vmci_dma_alloc, %struct.vmci_dma_alloc* %96, i64 0
  %98 = getelementptr inbounds %struct.vmci_dma_alloc, %struct.vmci_dma_alloc* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = inttoptr i64 %99 to i8*
  %101 = bitcast i8* %100 to i32*
  %102 = load %struct.vmci_queue*, %struct.vmci_queue** %6, align 8
  %103 = getelementptr inbounds %struct.vmci_queue, %struct.vmci_queue* %102, i32 0, i32 1
  store i32* %101, i32** %103, align 8
  %104 = load %struct.vmci_queue*, %struct.vmci_queue** %6, align 8
  %105 = bitcast %struct.vmci_queue* %104 to i8*
  store i8* %105, i8** %3, align 8
  br label %106

106:                                              ; preds = %91, %81, %32, %23
  %107 = load i8*, i8** %3, align 8
  ret i8* %107
}

declare dso_local i32 @CEILING(i64, i64) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.vmci_queue* @malloc(i64, i32, i32) #1

declare dso_local i32 @vmci_dma_malloc(i64, i32, %struct.vmci_dma_alloc*) #1

declare dso_local i32 @vmci_free_queue(%struct.vmci_queue*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
