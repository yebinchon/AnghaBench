; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_nae.c_nlm_setup_l4ctable_even.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_nae.c_nlm_setup_l4ctable_even.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NAE_L4CTABLE0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nlm_setup_l4ctable_even(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %18 = load i32, i32* %11, align 4
  %19 = and i32 %18, 1
  %20 = shl i32 %19, 19
  %21 = load i32, i32* %12, align 4
  %22 = and i32 %21, 1
  %23 = shl i32 %22, 18
  %24 = or i32 %20, %23
  %25 = load i32, i32* %13, align 4
  %26 = and i32 %25, 1
  %27 = shl i32 %26, 17
  %28 = or i32 %24, %27
  %29 = load i32, i32* %14, align 4
  %30 = and i32 %29, 31
  %31 = shl i32 %30, 12
  %32 = or i32 %28, %31
  %33 = load i32, i32* %15, align 4
  %34 = and i32 %33, 15
  %35 = shl i32 %34, 8
  %36 = or i32 %32, %35
  %37 = load i32, i32* %16, align 4
  %38 = and i32 %37, 255
  %39 = or i32 %36, %38
  store i32 %39, i32* %17, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i64, i64* @NAE_L4CTABLE0, align 8
  %42 = load i32, i32* %10, align 4
  %43 = mul nsw i32 %42, 2
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %41, %44
  %46 = load i32, i32* %17, align 4
  %47 = call i32 @nlm_write_nae_reg(i32 %40, i64 %45, i32 %46)
  ret void
}

declare dso_local i32 @nlm_write_nae_reg(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
