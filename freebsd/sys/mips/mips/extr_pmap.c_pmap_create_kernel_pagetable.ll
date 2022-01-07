; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_pmap.c_pmap_create_kernel_pagetable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_pmap.c_pmap_create_kernel_pagetable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32, i32, i64* }
%struct.TYPE_4__ = type { i64, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@kernel_segmap = common dso_local global i64* null, align 8
@NKPT = common dso_local global i32 0, align 4
@nkpt = common dso_local global i32 0, align 4
@NPTEPG = common dso_local global i32 0, align 4
@PTE_G = common dso_local global i32 0, align 4
@VM_MIN_KERNEL_ADDRESS = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global %struct.TYPE_5__* null, align 8
@PMAP_ASID_RESERVED = common dso_local global i32 0, align 4
@kernel_vm_end = common dso_local global i32 0, align 4
@NPDEPG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pmap_create_kernel_pagetable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmap_create_kernel_pagetable() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = load i32, i32* @PAGE_SIZE, align 4
  %6 = call i64 @pmap_steal_memory(i32 %5)
  %7 = inttoptr i64 %6 to i64*
  store i64* %7, i64** @kernel_segmap, align 8
  %8 = load i32, i32* @NKPT, align 4
  store i32 %8, i32* @nkpt, align 4
  %9 = load i32, i32* @PAGE_SIZE, align 4
  %10 = load i32, i32* @nkpt, align 4
  %11 = mul nsw i32 %9, %10
  %12 = call i64 @pmap_steal_memory(i32 %11)
  store i64 %12, i64* %3, align 8
  store i32 0, i32* %1, align 4
  %13 = load i64, i64* %3, align 8
  %14 = inttoptr i64 %13 to i32*
  store i32* %14, i32** %4, align 8
  br label %15

15:                                               ; preds = %24, %0
  %16 = load i32, i32* %1, align 4
  %17 = load i32, i32* @nkpt, align 4
  %18 = load i32, i32* @NPTEPG, align 4
  %19 = mul nsw i32 %17, %18
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %15
  %22 = load i32, i32* @PTE_G, align 4
  %23 = load i32*, i32** %4, align 8
  store i32 %22, i32* %23, align 4
  br label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %1, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %1, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %28, i32** %4, align 8
  br label %15

29:                                               ; preds = %15
  store i32 0, i32* %1, align 4
  %30 = load i32, i32* @VM_MIN_KERNEL_ADDRESS, align 4
  %31 = call i32 @pmap_seg_index(i32 %30)
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %47, %29
  %33 = load i32, i32* %1, align 4
  %34 = load i32, i32* @nkpt, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %52

36:                                               ; preds = %32
  %37 = load i64, i64* %3, align 8
  %38 = load i32, i32* %1, align 4
  %39 = load i32, i32* @PAGE_SIZE, align 4
  %40 = mul nsw i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %37, %41
  %43 = load i64*, i64** @kernel_segmap, align 8
  %44 = load i32, i32* %2, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  store i64 %42, i64* %46, align 8
  br label %47

47:                                               ; preds = %36
  %48 = load i32, i32* %1, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %1, align 4
  %50 = load i32, i32* %2, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %2, align 4
  br label %32

52:                                               ; preds = %32
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** @kernel_pmap, align 8
  %54 = call i32 @PMAP_LOCK_INIT(%struct.TYPE_5__* %53)
  %55 = load i64*, i64** @kernel_segmap, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** @kernel_pmap, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 3
  store i64* %55, i64** %57, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** @kernel_pmap, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  %60 = call i32 @CPU_FILL(i32* %59)
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** @kernel_pmap, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = call i32 @TAILQ_INIT(i32* %62)
  %64 = load i32, i32* @PMAP_ASID_RESERVED, align 4
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** @kernel_pmap, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i64 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  store i32 %64, i32* %69, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** @kernel_pmap, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store i64 0, i64* %74, align 8
  %75 = load i32, i32* @nkpt, align 4
  %76 = load i32, i32* @NPTEPG, align 4
  %77 = mul nsw i32 %75, %76
  %78 = load i32, i32* @PAGE_SIZE, align 4
  %79 = mul nsw i32 %77, %78
  %80 = load i32, i32* @kernel_vm_end, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* @kernel_vm_end, align 4
  ret void
}

declare dso_local i64 @pmap_steal_memory(i32) #1

declare dso_local i32 @pmap_seg_index(i32) #1

declare dso_local i32 @PMAP_LOCK_INIT(%struct.TYPE_5__*) #1

declare dso_local i32 @CPU_FILL(i32*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
