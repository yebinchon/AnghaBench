; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_cache_mipsNN.c_mipsNN_sdcache_wb_range_32.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_cache_mipsNN.c_mipsNN_sdcache_wb_range_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CACHE_R4K_SD = common dso_local global i32 0, align 4
@CACHEOP_R4K_HIT_WB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mipsNN_sdcache_wb_range_32(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %4, align 4
  %8 = add nsw i32 %6, %7
  %9 = call i32 @round_line32(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @trunc_line32(i32 %10)
  store i32 %11, i32* %3, align 4
  br label %12

12:                                               ; preds = %17, %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %3, align 4
  %15 = sub nsw i32 %13, %14
  %16 = icmp sge i32 %15, 1024
  br i1 %16, label %17, label %25

17:                                               ; preds = %12
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @CACHE_R4K_SD, align 4
  %20 = load i32, i32* @CACHEOP_R4K_HIT_WB, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @cache_r4k_op_32lines_32(i32 %18, i32 %21)
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1024
  store i32 %24, i32* %3, align 4
  br label %12

25:                                               ; preds = %12
  br label %26

26:                                               ; preds = %30, %25
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %26
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @CACHE_R4K_SD, align 4
  %33 = load i32, i32* @CACHEOP_R4K_HIT_WB, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @cache_op_r4k_line(i32 %31, i32 %34)
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 32
  store i32 %37, i32* %3, align 4
  br label %26

38:                                               ; preds = %26
  ret void
}

declare dso_local i32 @round_line32(i32) #1

declare dso_local i32 @trunc_line32(i32) #1

declare dso_local i32 @cache_r4k_op_32lines_32(i32, i32) #1

declare dso_local i32 @cache_op_r4k_line(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
