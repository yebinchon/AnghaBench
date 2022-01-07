; ModuleID = '/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_pmap.c_pmap_extract.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_pmap.c_pmap_extract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PTE_RX = common dso_local global i32 0, align 4
@L3_OFFSET = common dso_local global i32 0, align 4
@PTE_PPN1_S = common dso_local global i32 0, align 4
@L2_SHIFT = common dso_local global i32 0, align 4
@L2_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmap_extract(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @PMAP_LOCK(i32 %10)
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32* @pmap_l2(i32 %12, i32 %13)
  store i32* %14, i32** %5, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %53

17:                                               ; preds = %2
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @pmap_load(i32* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @PTE_RX, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %17
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32* @pmap_l2_to_l3(i32* %25, i32 %26)
  store i32* %27, i32** %7, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %24
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @pmap_load(i32* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @PTE_TO_PHYS(i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @L3_OFFSET, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* %9, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %30, %24
  br label %52

41:                                               ; preds = %17
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @PTE_PPN1_S, align 4
  %44 = ashr i32 %42, %43
  %45 = load i32, i32* @L2_SHIFT, align 4
  %46 = shl i32 %44, %45
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @L2_OFFSET, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* %9, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %41, %40
  br label %53

53:                                               ; preds = %52, %2
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @PMAP_UNLOCK(i32 %54)
  %56 = load i32, i32* %9, align 4
  ret i32 %56
}

declare dso_local i32 @PMAP_LOCK(i32) #1

declare dso_local i32* @pmap_l2(i32, i32) #1

declare dso_local i32 @pmap_load(i32*) #1

declare dso_local i32* @pmap_l2_to_l3(i32*, i32) #1

declare dso_local i32 @PTE_TO_PHYS(i32) #1

declare dso_local i32 @PMAP_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
