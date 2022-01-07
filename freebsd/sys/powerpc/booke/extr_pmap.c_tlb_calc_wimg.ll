; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_pmap.c_tlb_calc_wimg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_pmap.c_tlb_calc_wimg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@VM_MEMATTR_DEFAULT = common dso_local global i32 0, align 4
@MAS2_I = common dso_local global i32 0, align 4
@MAS2_G = common dso_local global i32 0, align 4
@MAS2_W = common dso_local global i32 0, align 4
@MAS2_M = common dso_local global i32 0, align 4
@_TLB_ENTRY_IO = common dso_local global i32 0, align 4
@physmem_regions_sz = common dso_local global i32 0, align 4
@physmem_regions = common dso_local global %struct.TYPE_2__* null, align 8
@_TLB_ENTRY_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32)* @tlb_calc_wimg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tlb_calc_wimg(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @VM_MEMATTR_DEFAULT, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %26

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %25 [
    i32 131, label %13
    i32 129, label %17
    i32 130, label %17
    i32 132, label %17
    i32 128, label %19
    i32 133, label %23
  ]

13:                                               ; preds = %11
  %14 = load i32, i32* @MAS2_I, align 4
  %15 = load i32, i32* @MAS2_G, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %3, align 4
  br label %65

17:                                               ; preds = %11, %11, %11
  %18 = load i32, i32* @MAS2_I, align 4
  store i32 %18, i32* %3, align 4
  br label %65

19:                                               ; preds = %11
  %20 = load i32, i32* @MAS2_W, align 4
  %21 = load i32, i32* @MAS2_M, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %3, align 4
  br label %65

23:                                               ; preds = %11
  %24 = load i32, i32* @MAS2_M, align 4
  store i32 %24, i32* %3, align 4
  br label %65

25:                                               ; preds = %11
  br label %26

26:                                               ; preds = %25, %2
  %27 = load i32, i32* @_TLB_ENTRY_IO, align 4
  store i32 %27, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %60, %26
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @physmem_regions_sz, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %63

32:                                               ; preds = %28
  %33 = load i64, i64* %4, align 8
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @physmem_regions, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sge i64 %33, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %32
  %42 = load i64, i64* %4, align 8
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @physmem_regions, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @physmem_regions, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %48, %54
  %56 = icmp slt i64 %42, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %41
  %58 = load i32, i32* @_TLB_ENTRY_MEM, align 4
  store i32 %58, i32* %6, align 4
  br label %63

59:                                               ; preds = %41, %32
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %28

63:                                               ; preds = %57, %28
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %23, %19, %17, %13
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
