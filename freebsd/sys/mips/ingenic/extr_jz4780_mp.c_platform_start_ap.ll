; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_mp.c_platform_start_ap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_mp.c_platform_start_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JZ4780_MAXCPU = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@jz4780_mpentry = common dso_local global i32 0, align 4
@JZ_REIM_ENTRY_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Unaligned mpentry\00", align 1
@JZ_REIM_MIRQ0M = common dso_local global i32 0, align 4
@JZ_CORECTL_SWRST0 = common dso_local global i32 0, align 4
@JZ_CORECTL_RPC0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @platform_start_ap(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @JZ4780_MAXCPU, align 4
  %8 = icmp sge i32 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @EINVAL, align 4
  store i32 %10, i32* %2, align 4
  br label %58

11:                                               ; preds = %1
  %12 = load i32, i32* @jz4780_mpentry, align 4
  %13 = call i32 @MIPS_KSEG0_TO_PHYS(i32 %12)
  %14 = call i32 @MIPS_PHYS_TO_KSEG1(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @JZ_REIM_ENTRY_MASK, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  %19 = icmp eq i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @KASSERT(i32 %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %22 = call i32 (...) @mips_rd_xburst_reim()
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* @JZ_REIM_ENTRY_MASK, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @JZ_REIM_ENTRY_MASK, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* %4, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* @JZ_REIM_MIRQ0M, align 4
  %33 = load i32, i32* %4, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @mips_wr_xburst_reim(i32 %35)
  %37 = call i32 (...) @mips_rd_xburst_core_ctl()
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* @JZ_CORECTL_SWRST0, align 4
  %39 = load i32, i32* %3, align 4
  %40 = shl i32 %38, %39
  %41 = load i32, i32* @JZ_CORECTL_RPC0, align 4
  %42 = load i32, i32* %3, align 4
  %43 = shl i32 %41, %42
  %44 = or i32 %40, %43
  %45 = load i32, i32* %4, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @mips_wr_xburst_core_ctl(i32 %47)
  %49 = call i32 (...) @jz4780_core_powerup()
  %50 = load i32, i32* @JZ_CORECTL_SWRST0, align 4
  %51 = load i32, i32* %3, align 4
  %52 = shl i32 %50, %51
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %4, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @mips_wr_xburst_core_ctl(i32 %56)
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %11, %9
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @MIPS_PHYS_TO_KSEG1(i32) #1

declare dso_local i32 @MIPS_KSEG0_TO_PHYS(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mips_rd_xburst_reim(...) #1

declare dso_local i32 @mips_wr_xburst_reim(i32) #1

declare dso_local i32 @mips_rd_xburst_core_ctl(...) #1

declare dso_local i32 @mips_wr_xburst_core_ctl(i32) #1

declare dso_local i32 @jz4780_core_powerup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
