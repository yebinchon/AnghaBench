; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/hal/extr_fmn.c_nlm_cms_alloc_spill_q.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/hal/extr_fmn.c_nlm_cms_alloc_spill_q.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CMS_MAX_SPILL_SEGMENTS_PER_QUEUE = common dso_local global i32 0, align 4
@CMS_SPILL_ENA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nlm_cms_alloc_spill_q(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* @CMS_MAX_SPILL_SEGMENTS_PER_QUEUE, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %46

16:                                               ; preds = %4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @CMS_OUTPUTQ_CONFIG(i32 %18)
  %20 = call i32 @nlm_read_cms_reg(i32 %17, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %8, align 4
  %22 = ashr i32 %21, 12
  %23 = and i32 %22, 63
  store i32 %23, i32* %11, align 4
  %24 = load i64, i64* @CMS_SPILL_ENA, align 8
  %25 = trunc i64 %24 to i32
  %26 = shl i32 %25, 62
  %27 = load i32, i32* %8, align 4
  %28 = ashr i32 %27, 18
  %29 = and i32 %28, 4194303
  %30 = shl i32 %29, 27
  %31 = or i32 %26, %30
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %32, %33
  %35 = sub nsw i32 %34, 1
  %36 = shl i32 %35, 21
  %37 = or i32 %31, %36
  %38 = load i32, i32* %11, align 4
  %39 = shl i32 %38, 15
  %40 = or i32 %37, %39
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @CMS_OUTPUTQ_CONFIG(i32 %42)
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @nlm_write_cms_reg(i32 %41, i32 %43, i32 %44)
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %16, %15
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @nlm_read_cms_reg(i32, i32) #1

declare dso_local i32 @CMS_OUTPUTQ_CONFIG(i32) #1

declare dso_local i32 @nlm_write_cms_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
