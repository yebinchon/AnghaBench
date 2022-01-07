; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_mp.c_platform_init_ap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_mp.c_platform_init_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JZ_CORESTS_MIRQ0P = common dso_local global i32 0, align 4
@JZ_REIM_MIRQ0M = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @platform_init_ap(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @JZ_CORESTS_MIRQ0P, align 4
  %5 = load i32, i32* %2, align 4
  %6 = shl i32 %4, %5
  %7 = xor i32 %6, -1
  %8 = call i32 @mips_wr_xburst_core_sts(i32 %7)
  %9 = call i32 (...) @mips_rd_xburst_reim()
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @JZ_REIM_MIRQ0M, align 4
  %11 = load i32, i32* %2, align 4
  %12 = shl i32 %10, %11
  %13 = load i32, i32* %3, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @mips_wr_xburst_reim(i32 %15)
  %17 = call i32 (...) @platform_ipi_hardintr_num()
  %18 = call i32 @hard_int_mask(i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @set_intr_mask(i32 %19)
  ret void
}

declare dso_local i32 @mips_wr_xburst_core_sts(i32) #1

declare dso_local i32 @mips_rd_xburst_reim(...) #1

declare dso_local i32 @mips_wr_xburst_reim(i32) #1

declare dso_local i32 @hard_int_mask(i32) #1

declare dso_local i32 @platform_ipi_hardintr_num(...) #1

declare dso_local i32 @set_intr_mask(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
