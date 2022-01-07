; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_mdio.c_nlm_int_gmac_mdio_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_mdio.c_nlm_int_gmac_mdio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT_MDIO_CTRL_SMP = common dso_local global i32 0, align 4
@INT_MDIO_CTRL_PHYADDR_POS = common dso_local global i32 0, align 4
@INT_MDIO_CTRL_DEVTYPE_POS = common dso_local global i32 0, align 4
@INT_MDIO_CTRL_OP_POS = common dso_local global i32 0, align 4
@INT_MDIO_CTRL_ST_POS = common dso_local global i32 0, align 4
@INT_MDIO_CTRL_XDIV_POS = common dso_local global i32 0, align 4
@INT_MDIO_CTRL_TA_POS = common dso_local global i32 0, align 4
@INT_MDIO_CTRL_MIIM_POS = common dso_local global i32 0, align 4
@INT_MDIO_CTRL_MCDIV_POS = common dso_local global i32 0, align 4
@INT_MDIO_CTRL = common dso_local global i64 0, align 8
@INT_MDIO_CTRL_CMD_LOAD = common dso_local global i32 0, align 4
@INT_MDIO_CTRL_DATA = common dso_local global i64 0, align 8
@INT_MDIO_CTRL_LOAD_POS = common dso_local global i32 0, align 4
@INT_MDIO_RD_STAT = common dso_local global i64 0, align 8
@INT_MDIO_STAT_MBSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nlm_int_gmac_mdio_write(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = load i32, i32* @INT_MDIO_CTRL_SMP, align 4
  %18 = load i32, i32* %12, align 4
  %19 = load i32, i32* @INT_MDIO_CTRL_PHYADDR_POS, align 4
  %20 = shl i32 %18, %19
  %21 = or i32 %17, %20
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* @INT_MDIO_CTRL_DEVTYPE_POS, align 4
  %24 = shl i32 %22, %23
  %25 = or i32 %21, %24
  %26 = load i32, i32* @INT_MDIO_CTRL_OP_POS, align 4
  %27 = shl i32 1, %26
  %28 = or i32 %25, %27
  %29 = load i32, i32* @INT_MDIO_CTRL_ST_POS, align 4
  %30 = shl i32 1, %29
  %31 = or i32 %28, %30
  %32 = load i32, i32* @INT_MDIO_CTRL_XDIV_POS, align 4
  %33 = shl i32 7, %32
  %34 = or i32 %31, %33
  %35 = load i32, i32* @INT_MDIO_CTRL_TA_POS, align 4
  %36 = shl i32 2, %35
  %37 = or i32 %34, %36
  %38 = load i32, i32* @INT_MDIO_CTRL_MIIM_POS, align 4
  %39 = shl i32 1, %38
  %40 = or i32 %37, %39
  %41 = load i32, i32* @INT_MDIO_CTRL_MCDIV_POS, align 4
  %42 = shl i32 1, %41
  %43 = or i32 %40, %42
  store i32 %43, i32* %16, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i64, i64* @INT_MDIO_CTRL, align 8
  %48 = load i32, i32* %9, align 4
  %49 = mul nsw i32 %48, 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %47, %50
  %52 = call i32 @NAE_REG(i32 %45, i32 %46, i64 %51)
  %53 = call i32 @nlm_read_nae_reg(i32 %44, i32 %52)
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* @INT_MDIO_CTRL_CMD_LOAD, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %7
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i64, i64* @INT_MDIO_CTRL, align 8
  %63 = load i32, i32* %9, align 4
  %64 = mul nsw i32 %63, 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %62, %65
  %67 = call i32 @NAE_REG(i32 %60, i32 %61, i64 %66)
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* @INT_MDIO_CTRL_CMD_LOAD, align 4
  %70 = xor i32 %69, -1
  %71 = and i32 %68, %70
  %72 = call i32 @nlm_write_nae_reg(i32 %59, i32 %67, i32 %71)
  br label %73

73:                                               ; preds = %58, %7
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i64, i64* @INT_MDIO_CTRL_DATA, align 8
  %78 = load i32, i32* %9, align 4
  %79 = mul nsw i32 %78, 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %77, %80
  %82 = call i32 @NAE_REG(i32 %75, i32 %76, i64 %81)
  %83 = load i32, i32* %14, align 4
  %84 = call i32 @nlm_write_nae_reg(i32 %74, i32 %82, i32 %83)
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %11, align 4
  %88 = load i64, i64* @INT_MDIO_CTRL, align 8
  %89 = load i32, i32* %9, align 4
  %90 = mul nsw i32 %89, 4
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %88, %91
  %93 = call i32 @NAE_REG(i32 %86, i32 %87, i64 %92)
  %94 = load i32, i32* %16, align 4
  %95 = call i32 @nlm_write_nae_reg(i32 %85, i32 %93, i32 %94)
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %11, align 4
  %99 = load i64, i64* @INT_MDIO_CTRL, align 8
  %100 = load i32, i32* %9, align 4
  %101 = mul nsw i32 %100, 4
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %99, %102
  %104 = call i32 @NAE_REG(i32 %97, i32 %98, i64 %103)
  %105 = load i32, i32* %16, align 4
  %106 = load i32, i32* @INT_MDIO_CTRL_LOAD_POS, align 4
  %107 = shl i32 1, %106
  %108 = or i32 %105, %107
  %109 = call i32 @nlm_write_nae_reg(i32 %96, i32 %104, i32 %108)
  br label %110

110:                                              ; preds = %124, %73
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* %11, align 4
  %114 = load i64, i64* @INT_MDIO_RD_STAT, align 8
  %115 = load i32, i32* %9, align 4
  %116 = mul nsw i32 %115, 4
  %117 = sext i32 %116 to i64
  %118 = add nsw i64 %114, %117
  %119 = call i32 @NAE_REG(i32 %112, i32 %113, i64 %118)
  %120 = call i32 @nlm_read_nae_reg(i32 %111, i32 %119)
  %121 = load i32, i32* @INT_MDIO_STAT_MBSY, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %110
  br label %110

125:                                              ; preds = %110
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* %11, align 4
  %129 = load i64, i64* @INT_MDIO_CTRL, align 8
  %130 = load i32, i32* %9, align 4
  %131 = mul nsw i32 %130, 4
  %132 = sext i32 %131 to i64
  %133 = add nsw i64 %129, %132
  %134 = call i32 @NAE_REG(i32 %127, i32 %128, i64 %133)
  %135 = load i32, i32* %16, align 4
  %136 = call i32 @nlm_write_nae_reg(i32 %126, i32 %134, i32 %135)
  ret i32 0
}

declare dso_local i32 @nlm_read_nae_reg(i32, i32) #1

declare dso_local i32 @NAE_REG(i32, i32, i64) #1

declare dso_local i32 @nlm_write_nae_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
