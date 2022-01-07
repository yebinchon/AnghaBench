; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_nae.c_xlp_nae_lane_reset_txpll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_nae.c_xlp_nae_lane_reset_txpll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PHY = common dso_local global i32 0, align 4
@PHYMODE_SGMII = common dso_local global i32 0, align 4
@PHY_LANE_CTRL_BPC_XAUI = common dso_local global i32 0, align 4
@PHY_LANE_CTRL_PHYMODE_POS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xlp_nae_lane_reset_txpll(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 4
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  store i32 8388608, i32* %10, align 4
  br label %14

14:                                               ; preds = %13, %4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @PHY, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @NAE_REG(i32 %16, i32 %17, i32 %18)
  %20 = call i32 @nlm_read_nae_reg(i32 %15, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @PHYMODE_SGMII, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %14
  %25 = load i32, i32* @PHY_LANE_CTRL_BPC_XAUI, align 4
  %26 = load i32, i32* %9, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %24, %14
  %29 = load i32, i32* %9, align 4
  %30 = or i32 %29, 1048576
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @PHY_LANE_CTRL_PHYMODE_POS, align 4
  %33 = shl i32 %31, %32
  %34 = load i32, i32* %9, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = and i32 %36, -131073
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @PHY, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @NAE_REG(i32 %39, i32 %40, i32 %41)
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @nlm_write_nae_reg(i32 %38, i32 %42, i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @PHY, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @NAE_REG(i32 %46, i32 %47, i32 %48)
  %50 = call i32 @nlm_read_nae_reg(i32 %45, i32 %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = or i32 %51, 1073741824
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @PHY, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @NAE_REG(i32 %54, i32 %55, i32 %56)
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @nlm_write_nae_reg(i32 %53, i32 %57, i32 %58)
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @PHY, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @NAE_REG(i32 %61, i32 %62, i32 %63)
  %65 = call i32 @nlm_read_nae_reg(i32 %60, i32 %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = and i32 %66, -537395200
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @PHY, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @NAE_REG(i32 %69, i32 %70, i32 %71)
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %9, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @nlm_write_nae_reg(i32 %68, i32 %72, i32 %75)
  ret void
}

declare dso_local i32 @nlm_read_nae_reg(i32, i32) #1

declare dso_local i32 @NAE_REG(i32, i32, i32) #1

declare dso_local i32 @nlm_write_nae_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
