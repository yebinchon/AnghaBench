; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_cache_mipsNN.c_mipsNN_icache_sync_range_index_32.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_cache_mipsNN.c_mipsNN_icache_sync_range_index_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@picache_way_mask = common dso_local global i32 0, align 4
@picache_stride = common dso_local global i32 0, align 4
@picache_loopcount = common dso_local global i32 0, align 4
@CACHE_R4K_I = common dso_local global i32 0, align 4
@CACHEOP_R4K_INDEX_INV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mipsNN_icache_sync_range_index_32(i32 %0, i32 %1) #0 {
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
  %11 = load i32, i32* @picache_way_mask, align 4
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
  %20 = load i32, i32* @picache_stride, align 4
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* @picache_loopcount, align 4
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %3, align 4
  %25 = sub nsw i32 %23, %24
  %26 = call i32 @mips_intern_dcache_wbinv_range_index(i32 %22, i32 %25)
  br label %27

27:                                               ; preds = %50, %2
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %3, align 4
  %30 = sub nsw i32 %28, %29
  %31 = icmp sge i32 %30, 256
  br i1 %31, label %32, label %53

32:                                               ; preds = %27
  %33 = load i32, i32* %3, align 4
  store i32 %33, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %44, %32
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %34
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @CACHE_R4K_I, align 4
  %41 = load i32, i32* @CACHEOP_R4K_INDEX_INV, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @cache_r4k_op_8lines_32(i32 %39, i32 %42)
  br label %44

44:                                               ; preds = %38
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* %6, align 4
  br label %34

50:                                               ; preds = %34
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, 256
  store i32 %52, i32* %3, align 4
  br label %27

53:                                               ; preds = %27
  br label %54

54:                                               ; preds = %76, %53
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %79

58:                                               ; preds = %54
  %59 = load i32, i32* %3, align 4
  store i32 %59, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %60

60:                                               ; preds = %70, %58
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %60
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @CACHE_R4K_I, align 4
  %67 = load i32, i32* @CACHEOP_R4K_INDEX_INV, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @cache_op_r4k_line(i32 %65, i32 %68)
  br label %70

70:                                               ; preds = %64
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %6, align 4
  br label %60

76:                                               ; preds = %60
  %77 = load i32, i32* %3, align 4
  %78 = add nsw i32 %77, 32
  store i32 %78, i32* %3, align 4
  br label %54

79:                                               ; preds = %54
  ret void
}

declare dso_local i32 @MIPS_PHYS_TO_KSEG0(i32) #1

declare dso_local i32 @round_line32(i32) #1

declare dso_local i32 @trunc_line32(i32) #1

declare dso_local i32 @mips_intern_dcache_wbinv_range_index(i32, i32) #1

declare dso_local i32 @cache_r4k_op_8lines_32(i32, i32) #1

declare dso_local i32 @cache_op_r4k_line(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
