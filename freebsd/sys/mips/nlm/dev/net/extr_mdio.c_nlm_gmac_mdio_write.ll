; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_mdio.c_nlm_gmac_mdio_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_mdio.c_nlm_gmac_mdio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXT_G0_MDIO_CTRL = common dso_local global i64 0, align 8
@EXT_G_MDIO_CMD_LCD = common dso_local global i32 0, align 4
@EXT_G0_MDIO_RD_STAT = common dso_local global i64 0, align 8
@EXT_G_MDIO_STAT_MBSY = common dso_local global i32 0, align 4
@EXT_G0_MDIO_CTRL_DATA = common dso_local global i64 0, align 8
@EXT_G_MDIO_CMD_SP = common dso_local global i32 0, align 4
@EXT_G_MDIO_PHYADDR_POS = common dso_local global i32 0, align 4
@EXT_G_MDIO_REGADDR_POS = common dso_local global i32 0, align 4
@EXT_G_MDIO_DIV = common dso_local global i32 0, align 4
@EXT_G_MDIO_DIV_WITH_HW_DIV64 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nlm_gmac_mdio_write(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
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
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load i64, i64* @EXT_G0_MDIO_CTRL, align 8
  %21 = load i32, i32* %9, align 4
  %22 = mul nsw i32 %21, 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %20, %23
  %25 = call i32 @NAE_REG(i32 %18, i32 %19, i64 %24)
  %26 = call i32 @nlm_read_nae_reg(i32 %17, i32 %25)
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %15, align 4
  %28 = load i32, i32* @EXT_G_MDIO_CMD_LCD, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %62

31:                                               ; preds = %7
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i64, i64* @EXT_G0_MDIO_CTRL, align 8
  %36 = load i32, i32* %9, align 4
  %37 = mul nsw i32 %36, 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %35, %38
  %40 = call i32 @NAE_REG(i32 %33, i32 %34, i64 %39)
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* @EXT_G_MDIO_CMD_LCD, align 4
  %43 = xor i32 %42, -1
  %44 = and i32 %41, %43
  %45 = call i32 @nlm_write_nae_reg(i32 %32, i32 %40, i32 %44)
  br label %46

46:                                               ; preds = %60, %31
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i64, i64* @EXT_G0_MDIO_RD_STAT, align 8
  %51 = load i32, i32* %9, align 4
  %52 = mul nsw i32 %51, 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %50, %53
  %55 = call i32 @NAE_REG(i32 %48, i32 %49, i64 %54)
  %56 = call i32 @nlm_read_nae_reg(i32 %47, i32 %55)
  %57 = load i32, i32* @EXT_G_MDIO_STAT_MBSY, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %46
  br label %46

61:                                               ; preds = %46
  br label %62

62:                                               ; preds = %61, %7
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load i64, i64* @EXT_G0_MDIO_CTRL_DATA, align 8
  %67 = load i32, i32* %9, align 4
  %68 = mul nsw i32 %67, 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %66, %69
  %71 = call i32 @NAE_REG(i32 %64, i32 %65, i64 %70)
  %72 = load i32, i32* %14, align 4
  %73 = call i32 @nlm_write_nae_reg(i32 %63, i32 %71, i32 %72)
  %74 = load i32, i32* @EXT_G_MDIO_CMD_SP, align 4
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* @EXT_G_MDIO_PHYADDR_POS, align 4
  %77 = shl i32 %75, %76
  %78 = or i32 %74, %77
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* @EXT_G_MDIO_REGADDR_POS, align 4
  %81 = shl i32 %79, %80
  %82 = or i32 %78, %81
  store i32 %82, i32* %16, align 4
  %83 = call i64 (...) @nlm_is_xlp8xx_ax()
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %62
  %86 = call i64 (...) @nlm_is_xlp8xx_b0()
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  %89 = call i64 (...) @nlm_is_xlp3xx_ax()
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %88, %85, %62
  %92 = load i32, i32* @EXT_G_MDIO_DIV, align 4
  %93 = load i32, i32* %16, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %16, align 4
  br label %99

95:                                               ; preds = %88
  %96 = load i32, i32* @EXT_G_MDIO_DIV_WITH_HW_DIV64, align 4
  %97 = load i32, i32* %16, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %16, align 4
  br label %99

99:                                               ; preds = %95, %91
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %11, align 4
  %103 = load i64, i64* @EXT_G0_MDIO_CTRL, align 8
  %104 = load i32, i32* %9, align 4
  %105 = mul nsw i32 %104, 4
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %103, %106
  %108 = call i32 @NAE_REG(i32 %101, i32 %102, i64 %107)
  %109 = load i32, i32* %16, align 4
  %110 = call i32 @nlm_write_nae_reg(i32 %100, i32 %108, i32 %109)
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* %11, align 4
  %114 = load i64, i64* @EXT_G0_MDIO_CTRL, align 8
  %115 = load i32, i32* %9, align 4
  %116 = mul nsw i32 %115, 4
  %117 = sext i32 %116 to i64
  %118 = add nsw i64 %114, %117
  %119 = call i32 @NAE_REG(i32 %112, i32 %113, i64 %118)
  %120 = load i32, i32* %16, align 4
  %121 = load i32, i32* @EXT_G_MDIO_CMD_LCD, align 4
  %122 = or i32 %120, %121
  %123 = call i32 @nlm_write_nae_reg(i32 %111, i32 %119, i32 %122)
  %124 = call i32 @DELAY(i32 1000)
  br label %125

125:                                              ; preds = %139, %99
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* %11, align 4
  %129 = load i64, i64* @EXT_G0_MDIO_RD_STAT, align 8
  %130 = load i32, i32* %9, align 4
  %131 = mul nsw i32 %130, 4
  %132 = sext i32 %131 to i64
  %133 = add nsw i64 %129, %132
  %134 = call i32 @NAE_REG(i32 %127, i32 %128, i64 %133)
  %135 = call i32 @nlm_read_nae_reg(i32 %126, i32 %134)
  %136 = load i32, i32* @EXT_G_MDIO_STAT_MBSY, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %125
  br label %125

140:                                              ; preds = %125
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* %11, align 4
  %144 = load i64, i64* @EXT_G0_MDIO_CTRL, align 8
  %145 = load i32, i32* %9, align 4
  %146 = mul nsw i32 %145, 4
  %147 = sext i32 %146 to i64
  %148 = add nsw i64 %144, %147
  %149 = call i32 @NAE_REG(i32 %142, i32 %143, i64 %148)
  %150 = load i32, i32* %16, align 4
  %151 = call i32 @nlm_write_nae_reg(i32 %141, i32 %149, i32 %150)
  ret i32 0
}

declare dso_local i32 @nlm_read_nae_reg(i32, i32) #1

declare dso_local i32 @NAE_REG(i32, i32, i64) #1

declare dso_local i32 @nlm_write_nae_reg(i32, i32, i32) #1

declare dso_local i64 @nlm_is_xlp8xx_ax(...) #1

declare dso_local i64 @nlm_is_xlp8xx_b0(...) #1

declare dso_local i64 @nlm_is_xlp3xx_ax(...) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
