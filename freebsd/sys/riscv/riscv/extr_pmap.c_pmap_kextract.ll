; ModuleID = '/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_pmap.c_pmap_kextract.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_pmap.c_pmap_kextract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DMAP_MIN_ADDRESS = common dso_local global i32 0, align 4
@DMAP_MAX_ADDRESS = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"pmap_kextract: No l2\00", align 1
@PTE_RX = common dso_local global i32 0, align 4
@PTE_PPN1_S = common dso_local global i32 0, align 4
@L2_SHIFT = common dso_local global i32 0, align 4
@L2_OFFSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"pmap_kextract: No l3...\00", align 1
@PAGE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmap_kextract(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @DMAP_MIN_ADDRESS, align 4
  %9 = icmp sge i32 %7, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @DMAP_MAX_ADDRESS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @DMAP_TO_PHYS(i32 %15)
  store i32 %16, i32* %6, align 4
  br label %61

17:                                               ; preds = %10, %1
  %18 = load i32, i32* @kernel_pmap, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32* @pmap_l2(i32 %18, i32 %19)
  store i32* %20, i32** %4, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = call i32 @panic(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %17
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @pmap_load(i32* %26)
  %28 = load i32, i32* @PTE_RX, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %25
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @pmap_load(i32* %32)
  %34 = load i32, i32* @PTE_PPN1_S, align 4
  %35 = ashr i32 %33, %34
  %36 = load i32, i32* @L2_SHIFT, align 4
  %37 = shl i32 %35, %36
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @L2_OFFSET, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* %6, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %2, align 4
  br label %63

44:                                               ; preds = %25
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* %3, align 4
  %47 = call i32* @pmap_l2_to_l3(i32* %45, i32 %46)
  store i32* %47, i32** %5, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = call i32 @panic(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %44
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @pmap_load(i32* %53)
  %55 = call i32 @PTE_TO_PHYS(i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @PAGE_MASK, align 4
  %58 = and i32 %56, %57
  %59 = load i32, i32* %6, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %52, %14
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %61, %31
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @DMAP_TO_PHYS(i32) #1

declare dso_local i32* @pmap_l2(i32, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @pmap_load(i32*) #1

declare dso_local i32* @pmap_l2_to_l3(i32*, i32) #1

declare dso_local i32 @PTE_TO_PHYS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
