; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_cache_mipsNN.c_mipsNN_pdcache_wbinv_all_64.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_cache_mipsNN.c_mipsNN_pdcache_wbinv_all_64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pdcache_size = common dso_local global i64 0, align 8
@CACHE_R4K_D = common dso_local global i32 0, align 4
@CACHEOP_R4K_INDEX_WB_INV = common dso_local global i32 0, align 4
@SYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mipsNN_pdcache_wbinv_all_64() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = call i64 @MIPS_PHYS_TO_KSEG0(i32 0)
  store i64 %3, i64* %1, align 8
  %4 = load i64, i64* %1, align 8
  %5 = load i64, i64* @pdcache_size, align 8
  %6 = add nsw i64 %4, %5
  store i64 %6, i64* %2, align 8
  br label %7

7:                                                ; preds = %11, %0
  %8 = load i64, i64* %1, align 8
  %9 = load i64, i64* %2, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = load i64, i64* %1, align 8
  %13 = load i32, i32* @CACHE_R4K_D, align 4
  %14 = load i32, i32* @CACHEOP_R4K_INDEX_WB_INV, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @cache_r4k_op_32lines_64(i64 %12, i32 %15)
  %17 = load i64, i64* %1, align 8
  %18 = add nsw i64 %17, 2048
  store i64 %18, i64* %1, align 8
  br label %7

19:                                               ; preds = %7
  %20 = load i32, i32* @SYNC, align 4
  ret void
}

declare dso_local i64 @MIPS_PHYS_TO_KSEG0(i32) #1

declare dso_local i32 @cache_r4k_op_32lines_64(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
