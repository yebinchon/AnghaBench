; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_pmap.c_pmap_growkernel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_pmap.c_pmap_growkernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@kernel_map = common dso_local global %struct.TYPE_3__* null, align 8
@MA_OWNED = common dso_local global i32 0, align 4
@VM_ALLOC_INTERRUPT = common dso_local global i32 0, align 4
@NBSEG = common dso_local global i32 0, align 4
@kernel_vm_end = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global i32 0, align 4
@NBPDR = common dso_local global i32 0, align 4
@PDRMASK = common dso_local global i32 0, align 4
@nkpt = common dso_local global i32 0, align 4
@MIPS_KSEG0_LARGEST_PHYS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"pmap_growkernel: no memory to grow kernel\00", align 1
@NPTEPG = common dso_local global i32 0, align 4
@PTE_G = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_growkernel(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kernel_map, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* @MA_OWNED, align 4
  %12 = call i32 @mtx_assert(i32* %10, i32 %11)
  %13 = load i32, i32* @VM_ALLOC_INTERRUPT, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @NBSEG, align 4
  %16 = call i32 @roundup2(i32 %14, i32 %15)
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* %2, align 4
  %18 = sub nsw i32 %17, 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kernel_map, align 8
  %20 = call i32 @vm_map_max(%struct.TYPE_3__* %19)
  %21 = icmp sge i32 %18, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kernel_map, align 8
  %24 = call i32 @vm_map_max(%struct.TYPE_3__* %23)
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %22, %1
  br label %26

26:                                               ; preds = %115, %55, %25
  %27 = load i32, i32* @kernel_vm_end, align 4
  %28 = load i32, i32* %2, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %116

30:                                               ; preds = %26
  %31 = load i32, i32* @kernel_pmap, align 4
  %32 = load i32, i32* @kernel_vm_end, align 4
  %33 = call i64* @pmap_segmap(i32 %31, i32 %32)
  store i64* %33, i64** %5, align 8
  %34 = load i64*, i64** %5, align 8
  %35 = load i32, i32* @kernel_vm_end, align 4
  %36 = call i64* @pmap_pdpe_to_pde(i64* %34, i32 %35)
  store i64* %36, i64** %4, align 8
  %37 = load i64*, i64** %4, align 8
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %30
  %41 = load i32, i32* @kernel_vm_end, align 4
  %42 = load i32, i32* @NBPDR, align 4
  %43 = add nsw i32 %41, %42
  %44 = load i32, i32* @PDRMASK, align 4
  %45 = xor i32 %44, -1
  %46 = and i32 %43, %45
  store i32 %46, i32* @kernel_vm_end, align 4
  %47 = load i32, i32* @kernel_vm_end, align 4
  %48 = sub nsw i32 %47, 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kernel_map, align 8
  %50 = call i32 @vm_map_max(%struct.TYPE_3__* %49)
  %51 = icmp sge i32 %48, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %40
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kernel_map, align 8
  %54 = call i32 @vm_map_max(%struct.TYPE_3__* %53)
  store i32 %54, i32* @kernel_vm_end, align 4
  br label %116

55:                                               ; preds = %40
  br label %26

56:                                               ; preds = %30
  %57 = load i32, i32* @nkpt, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32* @pmap_alloc_direct_page(i32 %57, i32 %58)
  store i32* %59, i32** %3, align 8
  %60 = load i32*, i32** %3, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %72

62:                                               ; preds = %56
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @MIPS_KSEG0_LARGEST_PHYS, align 4
  %65 = load i32, i32* @PAGE_SIZE, align 4
  %66 = call i64 @vm_page_reclaim_contig(i32 %63, i32 1, i32 0, i32 %64, i32 %65, i32 0)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = load i32, i32* @nkpt, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32* @pmap_alloc_direct_page(i32 %69, i32 %70)
  store i32* %71, i32** %3, align 8
  br label %72

72:                                               ; preds = %68, %62, %56
  %73 = load i32*, i32** %3, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = call i32 @panic(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %72
  %78 = load i32, i32* @nkpt, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* @nkpt, align 4
  %80 = load i32*, i32** %3, align 8
  %81 = call i32 @VM_PAGE_TO_PHYS(i32* %80)
  %82 = call i64 @MIPS_PHYS_TO_DIRECT(i32 %81)
  %83 = load i64*, i64** %4, align 8
  store i64 %82, i64* %83, align 8
  %84 = load i64*, i64** %4, align 8
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to i32*
  store i32* %86, i32** %6, align 8
  store i32 0, i32* %7, align 4
  br label %87

87:                                               ; preds = %97, %77
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @NPTEPG, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %100

91:                                               ; preds = %87
  %92 = load i32, i32* @PTE_G, align 4
  %93 = load i32*, i32** %6, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  store i32 %92, i32* %96, align 4
  br label %97

97:                                               ; preds = %91
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %7, align 4
  br label %87

100:                                              ; preds = %87
  %101 = load i32, i32* @kernel_vm_end, align 4
  %102 = load i32, i32* @NBPDR, align 4
  %103 = add nsw i32 %101, %102
  %104 = load i32, i32* @PDRMASK, align 4
  %105 = xor i32 %104, -1
  %106 = and i32 %103, %105
  store i32 %106, i32* @kernel_vm_end, align 4
  %107 = load i32, i32* @kernel_vm_end, align 4
  %108 = sub nsw i32 %107, 1
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kernel_map, align 8
  %110 = call i32 @vm_map_max(%struct.TYPE_3__* %109)
  %111 = icmp sge i32 %108, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %100
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kernel_map, align 8
  %114 = call i32 @vm_map_max(%struct.TYPE_3__* %113)
  store i32 %114, i32* @kernel_vm_end, align 4
  br label %116

115:                                              ; preds = %100
  br label %26

116:                                              ; preds = %112, %52, %26
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @roundup2(i32, i32) #1

declare dso_local i32 @vm_map_max(%struct.TYPE_3__*) #1

declare dso_local i64* @pmap_segmap(i32, i32) #1

declare dso_local i64* @pmap_pdpe_to_pde(i64*, i32) #1

declare dso_local i32* @pmap_alloc_direct_page(i32, i32) #1

declare dso_local i64 @vm_page_reclaim_contig(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @MIPS_PHYS_TO_DIRECT(i32) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
