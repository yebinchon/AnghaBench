; ModuleID = '/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_pmap.c__pmap_unwire_ptp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_pmap.c__pmap_unwire_ptp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.spglist = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@NUL1E = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.TYPE_6__*, %struct.spglist*)* @_pmap_unwire_ptp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_pmap_unwire_ptp(i32 %0, i32 %1, %struct.TYPE_6__* %2, %struct.spglist* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.spglist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  store %struct.spglist* %3, %struct.spglist** %8, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @MA_OWNED, align 4
  %16 = call i32 @PMAP_LOCK_ASSERT(i32 %14, i32 %15)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @NUL1E, align 8
  %21 = icmp sge i64 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32* @pmap_l1(i32 %23, i32 %24)
  store i32* %25, i32** %10, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = call i32 @pmap_clear(i32* %26)
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @pmap_l1_index(i32 %29)
  %31 = call i32 @pmap_distribute_l1(i32 %28, i32 %30, i32 0)
  br label %38

32:                                               ; preds = %4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32* @pmap_l2(i32 %33, i32 %34)
  store i32* %35, i32** %11, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = call i32 @pmap_clear(i32* %36)
  br label %38

38:                                               ; preds = %32, %22
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @pmap_resident_count_dec(i32 %39, i32 1)
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @NUL1E, align 8
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %46, label %60

46:                                               ; preds = %38
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32* @pmap_l1(i32 %47, i32 %48)
  store i32* %49, i32** %12, align 8
  %50 = load i32*, i32** %12, align 8
  %51 = call i32 @pmap_load(i32* %50)
  %52 = call i32 @PTE_TO_PHYS(i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call %struct.TYPE_6__* @PHYS_TO_VM_PAGE(i32 %53)
  store %struct.TYPE_6__* %54, %struct.TYPE_6__** %13, align 8
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %58 = load %struct.spglist*, %struct.spglist** %8, align 8
  %59 = call i32 @pmap_unwire_ptp(i32 %55, i32 %56, %struct.TYPE_6__* %57, %struct.spglist* %58)
  br label %60

60:                                               ; preds = %46, %38
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @pmap_invalidate_page(i32 %61, i32 %62)
  %64 = call i32 @vm_wire_sub(i32 1)
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %66 = load %struct.spglist*, %struct.spglist** %8, align 8
  %67 = load i32, i32* @TRUE, align 4
  %68 = call i32 @pmap_add_delayed_free_list(%struct.TYPE_6__* %65, %struct.spglist* %66, i32 %67)
  ret void
}

declare dso_local i32 @PMAP_LOCK_ASSERT(i32, i32) #1

declare dso_local i32* @pmap_l1(i32, i32) #1

declare dso_local i32 @pmap_clear(i32*) #1

declare dso_local i32 @pmap_distribute_l1(i32, i32, i32) #1

declare dso_local i32 @pmap_l1_index(i32) #1

declare dso_local i32* @pmap_l2(i32, i32) #1

declare dso_local i32 @pmap_resident_count_dec(i32, i32) #1

declare dso_local i32 @PTE_TO_PHYS(i32) #1

declare dso_local i32 @pmap_load(i32*) #1

declare dso_local %struct.TYPE_6__* @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @pmap_unwire_ptp(i32, i32, %struct.TYPE_6__*, %struct.spglist*) #1

declare dso_local i32 @pmap_invalidate_page(i32, i32) #1

declare dso_local i32 @vm_wire_sub(i32) #1

declare dso_local i32 @pmap_add_delayed_free_list(%struct.TYPE_6__*, %struct.spglist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
