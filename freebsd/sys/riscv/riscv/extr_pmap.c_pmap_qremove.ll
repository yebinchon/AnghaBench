; ModuleID = '/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_pmap.c_pmap_qremove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_pmap.c_pmap_qremove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VM_MIN_KERNEL_ADDRESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"usermode va %lx\00", align 1
@kernel_pmap = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"pmap_kremove: Invalid address\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_qremove(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @VM_MIN_KERNEL_ADDRESS, align 8
  %9 = icmp sge i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = load i64, i64* %3, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = call i32 @KASSERT(i32 %10, i8* %12)
  %14 = load i64, i64* %3, align 8
  store i64 %14, i64* %6, align 8
  br label %15

15:                                               ; preds = %29, %2
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %4, align 4
  %18 = icmp sgt i32 %16, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %15
  %20 = load i32, i32* @kernel_pmap, align 4
  %21 = load i64, i64* %6, align 8
  %22 = call i32* @pmap_l3(i32 %20, i64 %21)
  store i32* %22, i32** %5, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = icmp ne i32* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @KASSERT(i32 %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @pmap_clear(i32* %27)
  br label %29

29:                                               ; preds = %19
  %30 = load i64, i64* @PAGE_SIZE, align 8
  %31 = load i64, i64* %6, align 8
  %32 = add nsw i64 %31, %30
  store i64 %32, i64* %6, align 8
  br label %15

33:                                               ; preds = %15
  %34 = load i32, i32* @kernel_pmap, align 4
  %35 = load i64, i64* %3, align 8
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @pmap_invalidate_range(i32 %34, i64 %35, i64 %36)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32* @pmap_l3(i32, i64) #1

declare dso_local i32 @pmap_clear(i32*) #1

declare dso_local i32 @pmap_invalidate_range(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
