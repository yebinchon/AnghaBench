; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_mdio.c_nlm_gmac_mdio_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_mdio.c_nlm_gmac_mdio_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXT_G0_MDIO_CTRL = common dso_local global i64 0, align 8
@EXT_G_MDIO_DIV = common dso_local global i32 0, align 4
@EXT_G_MDIO_DIV_WITH_HW_DIV64 = common dso_local global i32 0, align 4
@EXT_G_MDIO_MMRST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nlm_gmac_mdio_reset(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i64, i64* @EXT_G0_MDIO_CTRL, align 8
  %14 = load i32, i32* %6, align 4
  %15 = mul nsw i32 %14, 4
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %13, %16
  %18 = call i32 @NAE_REG(i32 %11, i32 %12, i64 %17)
  %19 = call i32 @nlm_read_nae_reg(i32 %10, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = call i64 (...) @nlm_is_xlp8xx_ax()
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %4
  %23 = call i64 (...) @nlm_is_xlp8xx_b0()
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = call i64 (...) @nlm_is_xlp3xx_ax()
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25, %22, %4
  %29 = load i32, i32* @EXT_G_MDIO_DIV, align 4
  %30 = load i32, i32* %9, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %9, align 4
  br label %36

32:                                               ; preds = %25
  %33 = load i32, i32* @EXT_G_MDIO_DIV_WITH_HW_DIV64, align 4
  %34 = load i32, i32* %9, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %32, %28
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i64, i64* @EXT_G0_MDIO_CTRL, align 8
  %41 = load i32, i32* %6, align 4
  %42 = mul nsw i32 %41, 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %40, %43
  %45 = call i32 @NAE_REG(i32 %38, i32 %39, i64 %44)
  %46 = load i32, i32* @EXT_G_MDIO_MMRST, align 4
  %47 = load i32, i32* %9, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @nlm_write_nae_reg(i32 %37, i32 %45, i32 %48)
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i64, i64* @EXT_G0_MDIO_CTRL, align 8
  %54 = load i32, i32* %6, align 4
  %55 = mul nsw i32 %54, 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %53, %56
  %58 = call i32 @NAE_REG(i32 %51, i32 %52, i64 %57)
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @nlm_write_nae_reg(i32 %50, i32 %58, i32 %59)
  ret i32 0
}

declare dso_local i32 @nlm_read_nae_reg(i32, i32) #1

declare dso_local i32 @NAE_REG(i32, i32, i64) #1

declare dso_local i64 @nlm_is_xlp8xx_ax(...) #1

declare dso_local i64 @nlm_is_xlp8xx_b0(...) #1

declare dso_local i64 @nlm_is_xlp3xx_ax(...) #1

declare dso_local i32 @nlm_write_nae_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
