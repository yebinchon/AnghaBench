; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_cache_mipsNN.c_mipsNN_pdcache_wbinv_range_index_32.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_cache_mipsNN.c_mipsNN_pdcache_wbinv_range_index_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pdcache_way_mask = common dso_local global i32 0, align 4
@pdcache_stride = common dso_local global i32 0, align 4
@pdcache_loopcount = common dso_local global i32 0, align 4
@CACHE_R4K_D = common dso_local global i32 0, align 4
@CACHEOP_R4K_INDEX_WB_INV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mipsNN_pdcache_wbinv_range_index_32(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @pdcache_way_mask, align 4
  %12 = and i32 %10, %11
  %13 = call i32 @MIPS_PHYS_TO_KSEG0(i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* %4, align 4
  %16 = add nsw i32 %14, %15
  %17 = call i32 @round_line32(i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @trunc_line32(i32 %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* @pdcache_stride, align 4
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* @pdcache_loopcount, align 4
  store i32 %21, i32* %9, align 4
  br label %22

22:                                               ; preds = %45, %2
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %3, align 4
  %25 = sub nsw i32 %23, %24
  %26 = icmp sge i32 %25, 256
  br i1 %26, label %27, label %48

27:                                               ; preds = %22
  %28 = load i32, i32* %3, align 4
  store i32 %28, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %39, %27
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %29
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @CACHE_R4K_D, align 4
  %36 = load i32, i32* @CACHEOP_R4K_INDEX_WB_INV, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @cache_r4k_op_8lines_32(i32 %34, i32 %37)
  br label %39

39:                                               ; preds = %33
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %6, align 4
  br label %29

45:                                               ; preds = %29
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 256
  store i32 %47, i32* %3, align 4
  br label %22

48:                                               ; preds = %22
  br label %49

49:                                               ; preds = %71, %48
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %74

53:                                               ; preds = %49
  %54 = load i32, i32* %3, align 4
  store i32 %54, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %65, %53
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %55
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @CACHE_R4K_D, align 4
  %62 = load i32, i32* @CACHEOP_R4K_INDEX_WB_INV, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @cache_op_r4k_line(i32 %60, i32 %63)
  br label %65

65:                                               ; preds = %59
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %6, align 4
  br label %55

71:                                               ; preds = %55
  %72 = load i32, i32* %3, align 4
  %73 = add nsw i32 %72, 32
  store i32 %73, i32* %3, align 4
  br label %49

74:                                               ; preds = %49
  ret void
}

declare dso_local i32 @MIPS_PHYS_TO_KSEG0(i32) #1

declare dso_local i32 @round_line32(i32) #1

declare dso_local i32 @trunc_line32(i32) #1

declare dso_local i32 @cache_r4k_op_8lines_32(i32, i32) #1

declare dso_local i32 @cache_op_r4k_line(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
