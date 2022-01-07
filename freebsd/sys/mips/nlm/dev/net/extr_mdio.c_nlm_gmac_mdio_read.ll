; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_mdio.c_nlm_gmac_mdio_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_mdio.c_nlm_gmac_mdio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXT_G0_MDIO_CTRL = common dso_local global i64 0, align 8
@EXT_G_MDIO_CMD_LCD = common dso_local global i32 0, align 4
@EXT_G0_MDIO_RD_STAT = common dso_local global i64 0, align 8
@EXT_G_MDIO_STAT_MBSY = common dso_local global i32 0, align 4
@EXT_G_MDIO_CMD_SP = common dso_local global i32 0, align 4
@EXT_G_MDIO_PHYADDR_POS = common dso_local global i32 0, align 4
@EXT_G_MDIO_REGADDR_POS = common dso_local global i32 0, align 4
@EXT_G_MDIO_DIV = common dso_local global i32 0, align 4
@EXT_G_MDIO_DIV_WITH_HW_DIV64 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nlm_gmac_mdio_read(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load i64, i64* @EXT_G0_MDIO_CTRL, align 8
  %19 = load i32, i32* %8, align 4
  %20 = mul nsw i32 %19, 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %18, %21
  %23 = call i32 @NAE_REG(i32 %16, i32 %17, i64 %22)
  %24 = call i32 @nlm_read_nae_reg(i32 %15, i32 %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* @EXT_G_MDIO_CMD_LCD, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %60

29:                                               ; preds = %6
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i64, i64* @EXT_G0_MDIO_CTRL, align 8
  %34 = load i32, i32* %8, align 4
  %35 = mul nsw i32 %34, 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %33, %36
  %38 = call i32 @NAE_REG(i32 %31, i32 %32, i64 %37)
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* @EXT_G_MDIO_CMD_LCD, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  %43 = call i32 @nlm_write_nae_reg(i32 %30, i32 %38, i32 %42)
  br label %44

44:                                               ; preds = %58, %29
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i64, i64* @EXT_G0_MDIO_RD_STAT, align 8
  %49 = load i32, i32* %8, align 4
  %50 = mul nsw i32 %49, 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %48, %51
  %53 = call i32 @NAE_REG(i32 %46, i32 %47, i64 %52)
  %54 = call i32 @nlm_read_nae_reg(i32 %45, i32 %53)
  %55 = load i32, i32* @EXT_G_MDIO_STAT_MBSY, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %44
  br label %44

59:                                               ; preds = %44
  br label %60

60:                                               ; preds = %59, %6
  %61 = load i32, i32* @EXT_G_MDIO_CMD_SP, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @EXT_G_MDIO_PHYADDR_POS, align 4
  %64 = shl i32 %62, %63
  %65 = or i32 %61, %64
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @EXT_G_MDIO_REGADDR_POS, align 4
  %68 = shl i32 %66, %67
  %69 = or i32 %65, %68
  store i32 %69, i32* %14, align 4
  %70 = call i64 (...) @nlm_is_xlp8xx_ax()
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %60
  %73 = call i64 (...) @nlm_is_xlp8xx_b0()
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = call i64 (...) @nlm_is_xlp3xx_ax()
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %75, %72, %60
  %79 = load i32, i32* @EXT_G_MDIO_DIV, align 4
  %80 = load i32, i32* %14, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %14, align 4
  br label %86

82:                                               ; preds = %75
  %83 = load i32, i32* @EXT_G_MDIO_DIV_WITH_HW_DIV64, align 4
  %84 = load i32, i32* %14, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %14, align 4
  br label %86

86:                                               ; preds = %82, %78
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %10, align 4
  %90 = load i64, i64* @EXT_G0_MDIO_CTRL, align 8
  %91 = load i32, i32* %8, align 4
  %92 = mul nsw i32 %91, 4
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %90, %93
  %95 = call i32 @NAE_REG(i32 %88, i32 %89, i64 %94)
  %96 = load i32, i32* %14, align 4
  %97 = call i32 @nlm_write_nae_reg(i32 %87, i32 %95, i32 %96)
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %10, align 4
  %101 = load i64, i64* @EXT_G0_MDIO_CTRL, align 8
  %102 = load i32, i32* %8, align 4
  %103 = mul nsw i32 %102, 4
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %101, %104
  %106 = call i32 @NAE_REG(i32 %99, i32 %100, i64 %105)
  %107 = load i32, i32* %14, align 4
  %108 = or i32 %107, 262144
  %109 = call i32 @nlm_write_nae_reg(i32 %98, i32 %106, i32 %108)
  %110 = call i32 @DELAY(i32 1000)
  br label %111

111:                                              ; preds = %125, %86
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* %10, align 4
  %115 = load i64, i64* @EXT_G0_MDIO_RD_STAT, align 8
  %116 = load i32, i32* %8, align 4
  %117 = mul nsw i32 %116, 4
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %115, %118
  %120 = call i32 @NAE_REG(i32 %113, i32 %114, i64 %119)
  %121 = call i32 @nlm_read_nae_reg(i32 %112, i32 %120)
  %122 = load i32, i32* @EXT_G_MDIO_STAT_MBSY, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %111
  br label %111

126:                                              ; preds = %111
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* %10, align 4
  %130 = load i64, i64* @EXT_G0_MDIO_CTRL, align 8
  %131 = load i32, i32* %8, align 4
  %132 = mul nsw i32 %131, 4
  %133 = sext i32 %132 to i64
  %134 = add nsw i64 %130, %133
  %135 = call i32 @NAE_REG(i32 %128, i32 %129, i64 %134)
  %136 = load i32, i32* %14, align 4
  %137 = call i32 @nlm_write_nae_reg(i32 %127, i32 %135, i32 %136)
  %138 = load i32, i32* %7, align 4
  %139 = load i32, i32* %9, align 4
  %140 = load i32, i32* %10, align 4
  %141 = load i64, i64* @EXT_G0_MDIO_RD_STAT, align 8
  %142 = load i32, i32* %8, align 4
  %143 = mul nsw i32 %142, 4
  %144 = sext i32 %143 to i64
  %145 = add nsw i64 %141, %144
  %146 = call i32 @NAE_REG(i32 %139, i32 %140, i64 %145)
  %147 = call i32 @nlm_read_nae_reg(i32 %138, i32 %146)
  ret i32 %147
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
