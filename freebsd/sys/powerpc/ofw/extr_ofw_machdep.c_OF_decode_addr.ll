; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/ofw/extr_ofw_machdep.c_OF_decode_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/ofw/extr_ofw_machdep.c_OF_decode_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OFW_PADDR_NOT_PCI = common dso_local global i32 0, align 4
@bs_be_tag = common dso_local global i32 0, align 4
@bs_le_tag = common dso_local global i32 0, align 4
@OFW_PCI_PHYS_HI_PREFETCHABLE = common dso_local global i32 0, align 4
@BUS_SPACE_MAP_PREFETCHABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OF_decode_addr(i32 %0, i32 %1, i32** %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32** %2, i32*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @ofw_reg_to_paddr(i32 %17, i32 %18, i32* %12, i32* %13, i32* %14)
  store i32 %19, i32* %16, align 4
  %20 = load i32, i32* %16, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* %16, align 4
  store i32 %23, i32* %6, align 4
  br label %55

24:                                               ; preds = %5
  %25 = load i32, i32* %14, align 4
  %26 = load i32, i32* @OFW_PADDR_NOT_PCI, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32**, i32*** %9, align 8
  store i32* @bs_be_tag, i32** %29, align 8
  store i32 0, i32* %15, align 4
  br label %41

30:                                               ; preds = %24
  %31 = load i32**, i32*** %9, align 8
  store i32* @bs_le_tag, i32** %31, align 8
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* @OFW_PCI_PHYS_HI_PREFETCHABLE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @BUS_SPACE_MAP_PREFETCHABLE, align 4
  br label %39

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %36
  %40 = phi i32 [ %37, %36 ], [ 0, %38 ]
  store i32 %40, i32* %15, align 4
  br label %41

41:                                               ; preds = %39, %28
  %42 = load i32*, i32** %11, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* %13, align 4
  %46 = load i32*, i32** %11, align 8
  store i32 %45, i32* %46, align 4
  br label %47

47:                                               ; preds = %44, %41
  %48 = load i32**, i32*** %9, align 8
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %15, align 4
  %53 = load i32*, i32** %10, align 8
  %54 = call i32 @bus_space_map(i32* %49, i32 %50, i32 %51, i32 %52, i32* %53)
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %47, %22
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i32 @ofw_reg_to_paddr(i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_space_map(i32*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
