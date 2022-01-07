; ModuleID = '/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_pmap.c_pmap_bootstrap_l3.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_pmap.c_pmap_bootstrap_l3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@L2_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Invalid virtual address\00", align 1
@kernel_pmap = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@VM_MAX_KERNEL_ADDRESS = common dso_local global i32 0, align 4
@Ln_ENTRIES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"Invalid L2 index\00", align 1
@PTE_V = common dso_local global i32 0, align 4
@PTE_PPN0_S = common dso_local global i32 0, align 4
@L2_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @pmap_bootstrap_l3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmap_bootstrap_l3(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @L2_OFFSET, align 4
  %15 = and i32 %13, %14
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @KASSERT(i32 %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @kernel_pmap, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32* @pmap_l2(i32 %19, i32 %20)
  store i32* %21, i32** %9, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = ptrtoint i32* %22 to i64
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = sub nsw i32 %24, 1
  %26 = xor i32 %25, -1
  %27 = sext i32 %26 to i64
  %28 = and i64 %23, %27
  %29 = inttoptr i64 %28 to i32*
  store i32* %29, i32** %9, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i64 @pmap_l2_index(i32 %30)
  store i64 %31, i64* %11, align 8
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %63, %3
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @VM_MAX_KERNEL_ADDRESS, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %71

37:                                               ; preds = %33
  %38 = load i64, i64* %11, align 8
  %39 = load i64, i64* @Ln_ENTRIES, align 8
  %40 = icmp ult i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @KASSERT(i32 %41, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @pmap_early_vtophys(i32 %43, i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @PAGE_SIZE, align 4
  %48 = sdiv i32 %46, %47
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* @PTE_V, align 4
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* @PTE_PPN0_S, align 4
  %52 = shl i32 %50, %51
  %53 = load i32, i32* %8, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %8, align 4
  %55 = load i32*, i32** %9, align 8
  %56 = load i64, i64* %11, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @pmap_store(i32* %57, i32 %58)
  %60 = load i32, i32* @PAGE_SIZE, align 4
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %37
  %64 = load i64, i64* %11, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %11, align 8
  %66 = load i64, i64* @L2_SIZE, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %68, %66
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %5, align 4
  br label %33

71:                                               ; preds = %33
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = inttoptr i64 %73 to i8*
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %6, align 4
  %77 = sub nsw i32 %75, %76
  %78 = call i32 @memset(i8* %74, i32 0, i32 %77)
  %79 = load i32, i32* %7, align 4
  ret i32 %79
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32* @pmap_l2(i32, i32) #1

declare dso_local i64 @pmap_l2_index(i32) #1

declare dso_local i32 @pmap_early_vtophys(i32, i32) #1

declare dso_local i32 @pmap_store(i32*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
