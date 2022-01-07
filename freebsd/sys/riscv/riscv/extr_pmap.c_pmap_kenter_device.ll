; ModuleID = '/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_pmap.c_pmap_kenter_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_pmap.c_pmap_kenter_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@L3_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"pmap_kenter_device: Invalid physical address\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"pmap_kenter_device: Invalid virtual address\00", align 1
@PAGE_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"pmap_kenter_device: Mapping is not page-sized\00", align 1
@kernel_pmap = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Invalid page table, va: 0x%lx\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@PTE_KERN = common dso_local global i32 0, align 4
@PTE_PPN0_S = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_kenter_device(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @L3_OFFSET, align 4
  %13 = and i32 %11, %12
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @KASSERT(i32 %15, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @L3_OFFSET, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @KASSERT(i32 %21, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @PAGE_MASK, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @KASSERT(i32 %27, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %33, %3
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %65

33:                                               ; preds = %30
  %34 = load i32, i32* @kernel_pmap, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32* @pmap_l3(i32 %34, i32 %35)
  store i32* %36, i32** %8, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = icmp ne i32* %37, null
  %39 = zext i1 %38 to i32
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to i8*
  %43 = call i32 @KASSERT(i32 %39, i8* %42)
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @PAGE_SIZE, align 4
  %46 = sdiv i32 %44, %45
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* @PTE_KERN, align 4
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @PTE_PPN0_S, align 4
  %50 = shl i32 %48, %49
  %51 = load i32, i32* %7, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %7, align 4
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @pmap_store(i32* %53, i32 %54)
  %56 = load i32, i32* @PAGE_SIZE, align 4
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* @PAGE_SIZE, align 4
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* @PAGE_SIZE, align 4
  %63 = load i32, i32* %5, align 4
  %64 = sub nsw i32 %63, %62
  store i32 %64, i32* %5, align 4
  br label %30

65:                                               ; preds = %30
  %66 = load i32, i32* @kernel_pmap, align 4
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @pmap_invalidate_range(i32 %66, i32 %67, i32 %68)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32* @pmap_l3(i32, i32) #1

declare dso_local i32 @pmap_store(i32*, i32) #1

declare dso_local i32 @pmap_invalidate_range(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
