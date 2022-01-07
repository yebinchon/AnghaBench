; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwdma.c_fwdma_malloc_multiseg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwdma.c_fwdma_malloc_multiseg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwdma_alloc_multi = type { i32, i32, i32, i32, %struct.fwdma_seg* }
%struct.fwdma_seg = type { i32*, i32, i32 }
%struct.firewire_comm = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@M_FW = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@BUS_DMA_ALLOCNOW = common dso_local global i32 0, align 4
@busdma_lock_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"fwdma_malloc_multiseg: tag_create failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"fwdma_malloc_multi: malloc_size failed %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fwdma_alloc_multi* @fwdma_malloc_multiseg(%struct.firewire_comm* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.fwdma_alloc_multi*, align 8
  %7 = alloca %struct.firewire_comm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.fwdma_alloc_multi*, align 8
  %13 = alloca %struct.fwdma_seg*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.firewire_comm* %0, %struct.firewire_comm** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @PAGE_SIZE, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %5
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @PAGE_SIZE, align 4
  %22 = call i32 @roundup2(i32 %20, i32 %21)
  store i32 %22, i32* %14, align 4
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %15, align 4
  br label %33

24:                                               ; preds = %5
  %25 = load i32, i32* @PAGE_SIZE, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @rounddown(i32 %25, i32 %26)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* %9, align 4
  %31 = sdiv i32 %29, %30
  %32 = call i32 @howmany(i32 %28, i32 %31)
  store i32 %32, i32* %15, align 4
  br label %33

33:                                               ; preds = %24, %19
  %34 = load i32, i32* %15, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 16, %35
  %37 = add i64 24, %36
  %38 = trunc i64 %37 to i32
  %39 = load i32, i32* @M_FW, align 4
  %40 = load i32, i32* @M_WAITOK, align 4
  %41 = call i64 @malloc(i32 %38, i32 %39, i32 %40)
  %42 = inttoptr i64 %41 to %struct.fwdma_alloc_multi*
  store %struct.fwdma_alloc_multi* %42, %struct.fwdma_alloc_multi** %12, align 8
  %43 = load i32, i32* %14, align 4
  %44 = load %struct.fwdma_alloc_multi*, %struct.fwdma_alloc_multi** %12, align 8
  %45 = getelementptr inbounds %struct.fwdma_alloc_multi, %struct.fwdma_alloc_multi* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.fwdma_alloc_multi*, %struct.fwdma_alloc_multi** %12, align 8
  %48 = getelementptr inbounds %struct.fwdma_alloc_multi, %struct.fwdma_alloc_multi* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.fwdma_alloc_multi*, %struct.fwdma_alloc_multi** %12, align 8
  %50 = getelementptr inbounds %struct.fwdma_alloc_multi, %struct.fwdma_alloc_multi* %49, i32 0, i32 2
  store i32 0, i32* %50, align 8
  %51 = load %struct.firewire_comm*, %struct.firewire_comm** %7, align 8
  %52 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %56 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %59 = load i32, i32* @BUS_DMA_ALLOCNOW, align 4
  %60 = load i32, i32* @busdma_lock_mutex, align 4
  %61 = load %struct.firewire_comm*, %struct.firewire_comm** %7, align 8
  %62 = call i32 @FW_GMTX(%struct.firewire_comm* %61)
  %63 = load %struct.fwdma_alloc_multi*, %struct.fwdma_alloc_multi** %12, align 8
  %64 = getelementptr inbounds %struct.fwdma_alloc_multi, %struct.fwdma_alloc_multi* %63, i32 0, i32 3
  %65 = call i64 @bus_dma_tag_create(i32 %53, i32 %54, i32 0, i32 %55, i32 %56, i32* null, i32* null, i32 %57, i32 1, i32 %58, i32 %59, i32 %60, i32 %62, i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %33
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %69 = load %struct.fwdma_alloc_multi*, %struct.fwdma_alloc_multi** %12, align 8
  %70 = load i32, i32* @M_FW, align 4
  %71 = call i32 @free(%struct.fwdma_alloc_multi* %69, i32 %70)
  store %struct.fwdma_alloc_multi* null, %struct.fwdma_alloc_multi** %6, align 8
  br label %115

72:                                               ; preds = %33
  %73 = load %struct.fwdma_alloc_multi*, %struct.fwdma_alloc_multi** %12, align 8
  %74 = getelementptr inbounds %struct.fwdma_alloc_multi, %struct.fwdma_alloc_multi* %73, i32 0, i32 4
  %75 = load %struct.fwdma_seg*, %struct.fwdma_seg** %74, align 8
  %76 = getelementptr inbounds %struct.fwdma_seg, %struct.fwdma_seg* %75, i64 0
  store %struct.fwdma_seg* %76, %struct.fwdma_seg** %13, align 8
  br label %77

77:                                               ; preds = %110, %72
  %78 = load i32, i32* %15, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %15, align 4
  %80 = icmp ne i32 %78, 0
  br i1 %80, label %81, label %113

81:                                               ; preds = %77
  %82 = load %struct.fwdma_alloc_multi*, %struct.fwdma_alloc_multi** %12, align 8
  %83 = getelementptr inbounds %struct.fwdma_alloc_multi, %struct.fwdma_alloc_multi* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.fwdma_seg*, %struct.fwdma_seg** %13, align 8
  %86 = getelementptr inbounds %struct.fwdma_seg, %struct.fwdma_seg* %85, i32 0, i32 2
  %87 = load i32, i32* %14, align 4
  %88 = load %struct.fwdma_seg*, %struct.fwdma_seg** %13, align 8
  %89 = getelementptr inbounds %struct.fwdma_seg, %struct.fwdma_seg* %88, i32 0, i32 1
  %90 = load i32, i32* %11, align 4
  %91 = call i32* @fwdma_malloc_size(i32 %84, i32* %86, i32 %87, i32* %89, i32 %90)
  %92 = load %struct.fwdma_seg*, %struct.fwdma_seg** %13, align 8
  %93 = getelementptr inbounds %struct.fwdma_seg, %struct.fwdma_seg* %92, i32 0, i32 0
  store i32* %91, i32** %93, align 8
  %94 = load %struct.fwdma_seg*, %struct.fwdma_seg** %13, align 8
  %95 = getelementptr inbounds %struct.fwdma_seg, %struct.fwdma_seg* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = icmp eq i32* %96, null
  br i1 %97, label %98, label %105

98:                                               ; preds = %81
  %99 = load %struct.fwdma_alloc_multi*, %struct.fwdma_alloc_multi** %12, align 8
  %100 = getelementptr inbounds %struct.fwdma_alloc_multi, %struct.fwdma_alloc_multi* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %101)
  %103 = load %struct.fwdma_alloc_multi*, %struct.fwdma_alloc_multi** %12, align 8
  %104 = call i32 @fwdma_free_multiseg(%struct.fwdma_alloc_multi* %103)
  store %struct.fwdma_alloc_multi* null, %struct.fwdma_alloc_multi** %6, align 8
  br label %115

105:                                              ; preds = %81
  %106 = load %struct.fwdma_alloc_multi*, %struct.fwdma_alloc_multi** %12, align 8
  %107 = getelementptr inbounds %struct.fwdma_alloc_multi, %struct.fwdma_alloc_multi* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 8
  br label %110

110:                                              ; preds = %105
  %111 = load %struct.fwdma_seg*, %struct.fwdma_seg** %13, align 8
  %112 = getelementptr inbounds %struct.fwdma_seg, %struct.fwdma_seg* %111, i32 1
  store %struct.fwdma_seg* %112, %struct.fwdma_seg** %13, align 8
  br label %77

113:                                              ; preds = %77
  %114 = load %struct.fwdma_alloc_multi*, %struct.fwdma_alloc_multi** %12, align 8
  store %struct.fwdma_alloc_multi* %114, %struct.fwdma_alloc_multi** %6, align 8
  br label %115

115:                                              ; preds = %113, %98, %67
  %116 = load %struct.fwdma_alloc_multi*, %struct.fwdma_alloc_multi** %6, align 8
  ret %struct.fwdma_alloc_multi* %116
}

declare dso_local i32 @roundup2(i32, i32) #1

declare dso_local i32 @rounddown(i32, i32) #1

declare dso_local i32 @howmany(i32, i32) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @FW_GMTX(%struct.firewire_comm*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @free(%struct.fwdma_alloc_multi*, i32) #1

declare dso_local i32* @fwdma_malloc_size(i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @fwdma_free_multiseg(%struct.fwdma_alloc_multi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
