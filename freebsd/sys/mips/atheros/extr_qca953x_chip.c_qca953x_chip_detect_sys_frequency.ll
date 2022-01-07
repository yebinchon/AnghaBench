; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_qca953x_chip.c_qca953x_chip_detect_sys_frequency.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_qca953x_chip.c_qca953x_chip_detect_sys_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@QCA953X_RESET_REG_BOOTSTRAP = common dso_local global i32 0, align 4
@QCA953X_BOOTSTRAP_REF_CLK_40 = common dso_local global i32 0, align 4
@QCA953X_PLL_CPU_CONFIG_REG = common dso_local global i32 0, align 4
@QCA953X_PLL_CPU_CONFIG_OUTDIV_SHIFT = common dso_local global i32 0, align 4
@QCA953X_PLL_CPU_CONFIG_OUTDIV_MASK = common dso_local global i32 0, align 4
@QCA953X_PLL_CPU_CONFIG_REFDIV_SHIFT = common dso_local global i32 0, align 4
@QCA953X_PLL_CPU_CONFIG_REFDIV_MASK = common dso_local global i32 0, align 4
@QCA953X_PLL_CPU_CONFIG_NINT_SHIFT = common dso_local global i32 0, align 4
@QCA953X_PLL_CPU_CONFIG_NINT_MASK = common dso_local global i32 0, align 4
@QCA953X_PLL_CPU_CONFIG_NFRAC_SHIFT = common dso_local global i32 0, align 4
@QCA953X_PLL_CPU_CONFIG_NFRAC_MASK = common dso_local global i32 0, align 4
@QCA953X_PLL_DDR_CONFIG_REG = common dso_local global i32 0, align 4
@QCA953X_PLL_DDR_CONFIG_OUTDIV_SHIFT = common dso_local global i32 0, align 4
@QCA953X_PLL_DDR_CONFIG_OUTDIV_MASK = common dso_local global i32 0, align 4
@QCA953X_PLL_DDR_CONFIG_REFDIV_SHIFT = common dso_local global i32 0, align 4
@QCA953X_PLL_DDR_CONFIG_REFDIV_MASK = common dso_local global i32 0, align 4
@QCA953X_PLL_DDR_CONFIG_NINT_SHIFT = common dso_local global i32 0, align 4
@QCA953X_PLL_DDR_CONFIG_NINT_MASK = common dso_local global i32 0, align 4
@QCA953X_PLL_DDR_CONFIG_NFRAC_SHIFT = common dso_local global i32 0, align 4
@QCA953X_PLL_DDR_CONFIG_NFRAC_MASK = common dso_local global i32 0, align 4
@QCA953X_PLL_CLK_CTRL_REG = common dso_local global i32 0, align 4
@QCA953X_PLL_CLK_CTRL_CPU_POST_DIV_SHIFT = common dso_local global i32 0, align 4
@QCA953X_PLL_CLK_CTRL_CPU_POST_DIV_MASK = common dso_local global i32 0, align 4
@QCA953X_PLL_CLK_CTRL_CPU_PLL_BYPASS = common dso_local global i32 0, align 4
@QCA953X_PLL_CLK_CTRL_CPUCLK_FROM_CPUPLL = common dso_local global i32 0, align 4
@QCA953X_PLL_CLK_CTRL_DDR_POST_DIV_SHIFT = common dso_local global i32 0, align 4
@QCA953X_PLL_CLK_CTRL_DDR_POST_DIV_MASK = common dso_local global i32 0, align 4
@QCA953X_PLL_CLK_CTRL_DDR_PLL_BYPASS = common dso_local global i32 0, align 4
@QCA953X_PLL_CLK_CTRL_DDRCLK_FROM_DDRPLL = common dso_local global i32 0, align 4
@QCA953X_PLL_CLK_CTRL_AHB_POST_DIV_SHIFT = common dso_local global i32 0, align 4
@QCA953X_PLL_CLK_CTRL_AHB_POST_DIV_MASK = common dso_local global i32 0, align 4
@QCA953X_PLL_CLK_CTRL_AHB_PLL_BYPASS = common dso_local global i32 0, align 4
@QCA953X_PLL_CLK_CTRL_AHBCLK_FROM_DDRPLL = common dso_local global i32 0, align 4
@u_ar71xx_ddr_freq = common dso_local global i64 0, align 8
@u_ar71xx_cpu_freq = common dso_local global i64 0, align 8
@u_ar71xx_ahb_freq = common dso_local global i64 0, align 8
@u_ar71xx_wdt_freq = common dso_local global i64 0, align 8
@u_ar71xx_uart_freq = common dso_local global i64 0, align 8
@u_ar71xx_mdio_freq = common dso_local global i64 0, align 8
@u_ar71xx_refclk = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @qca953x_chip_detect_sys_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qca953x_chip_detect_sys_frequency() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = load i32, i32* @QCA953X_RESET_REG_BOOTSTRAP, align 4
  %16 = call i32 @ATH_READ_REG(i32 %15)
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* %14, align 4
  %18 = load i32, i32* @QCA953X_BOOTSTRAP_REF_CLK_40, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %0
  store i64 40000000, i64* %1, align 8
  br label %23

22:                                               ; preds = %0
  store i64 25000000, i64* %1, align 8
  br label %23

23:                                               ; preds = %22, %21
  %24 = load i32, i32* @QCA953X_PLL_CPU_CONFIG_REG, align 4
  %25 = call i32 @ATH_READ_REG(i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @QCA953X_PLL_CPU_CONFIG_OUTDIV_SHIFT, align 4
  %28 = ashr i32 %26, %27
  %29 = load i32, i32* @QCA953X_PLL_CPU_CONFIG_OUTDIV_MASK, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @QCA953X_PLL_CPU_CONFIG_REFDIV_SHIFT, align 4
  %33 = ashr i32 %31, %32
  %34 = load i32, i32* @QCA953X_PLL_CPU_CONFIG_REFDIV_MASK, align 4
  %35 = and i32 %33, %34
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @QCA953X_PLL_CPU_CONFIG_NINT_SHIFT, align 4
  %38 = ashr i32 %36, %37
  %39 = load i32, i32* @QCA953X_PLL_CPU_CONFIG_NINT_MASK, align 4
  %40 = and i32 %38, %39
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @QCA953X_PLL_CPU_CONFIG_NFRAC_SHIFT, align 4
  %43 = ashr i32 %41, %42
  %44 = load i32, i32* @QCA953X_PLL_CPU_CONFIG_NFRAC_MASK, align 4
  %45 = and i32 %43, %44
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* %1, align 8
  %49 = mul i64 %47, %48
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = udiv i64 %49, %51
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = load i64, i64* %1, align 8
  %57 = lshr i64 %56, 6
  %58 = mul i64 %55, %57
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = udiv i64 %58, %60
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = add i64 %63, %61
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %6, align 4
  %67 = shl i32 1, %66
  %68 = load i32, i32* %12, align 4
  %69 = sdiv i32 %68, %67
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* @QCA953X_PLL_DDR_CONFIG_REG, align 4
  %71 = call i32 @ATH_READ_REG(i32 %70)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @QCA953X_PLL_DDR_CONFIG_OUTDIV_SHIFT, align 4
  %74 = ashr i32 %72, %73
  %75 = load i32, i32* @QCA953X_PLL_DDR_CONFIG_OUTDIV_MASK, align 4
  %76 = and i32 %74, %75
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @QCA953X_PLL_DDR_CONFIG_REFDIV_SHIFT, align 4
  %79 = ashr i32 %77, %78
  %80 = load i32, i32* @QCA953X_PLL_DDR_CONFIG_REFDIV_MASK, align 4
  %81 = and i32 %79, %80
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* @QCA953X_PLL_DDR_CONFIG_NINT_SHIFT, align 4
  %84 = ashr i32 %82, %83
  %85 = load i32, i32* @QCA953X_PLL_DDR_CONFIG_NINT_MASK, align 4
  %86 = and i32 %84, %85
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* @QCA953X_PLL_DDR_CONFIG_NFRAC_SHIFT, align 4
  %89 = ashr i32 %87, %88
  %90 = load i32, i32* @QCA953X_PLL_DDR_CONFIG_NFRAC_MASK, align 4
  %91 = and i32 %89, %90
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = load i64, i64* %1, align 8
  %95 = mul i64 %93, %94
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = udiv i64 %95, %97
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %13, align 4
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = load i64, i64* %1, align 8
  %103 = lshr i64 %102, 6
  %104 = mul i64 %101, %103
  %105 = load i32, i32* %7, align 4
  %106 = shl i32 %105, 4
  %107 = sext i32 %106 to i64
  %108 = udiv i64 %104, %107
  %109 = load i32, i32* %13, align 4
  %110 = sext i32 %109 to i64
  %111 = add i64 %110, %108
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %13, align 4
  %113 = load i32, i32* %6, align 4
  %114 = shl i32 1, %113
  %115 = load i32, i32* %13, align 4
  %116 = sdiv i32 %115, %114
  store i32 %116, i32* %13, align 4
  %117 = load i32, i32* @QCA953X_PLL_CLK_CTRL_REG, align 4
  %118 = call i32 @ATH_READ_REG(i32 %117)
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* @QCA953X_PLL_CLK_CTRL_CPU_POST_DIV_SHIFT, align 4
  %121 = ashr i32 %119, %120
  %122 = load i32, i32* @QCA953X_PLL_CLK_CTRL_CPU_POST_DIV_MASK, align 4
  %123 = and i32 %121, %122
  store i32 %123, i32* %11, align 4
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* @QCA953X_PLL_CLK_CTRL_CPU_PLL_BYPASS, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %23
  %129 = load i64, i64* %1, align 8
  store i64 %129, i64* %2, align 8
  br label %148

130:                                              ; preds = %23
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* @QCA953X_PLL_CLK_CTRL_CPUCLK_FROM_CPUPLL, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %130
  %136 = load i32, i32* %12, align 4
  %137 = load i32, i32* %11, align 4
  %138 = add nsw i32 %137, 1
  %139 = sdiv i32 %136, %138
  %140 = sext i32 %139 to i64
  store i64 %140, i64* %2, align 8
  br label %147

141:                                              ; preds = %130
  %142 = load i32, i32* %13, align 4
  %143 = load i32, i32* %11, align 4
  %144 = add nsw i32 %143, 1
  %145 = sdiv i32 %142, %144
  %146 = sext i32 %145 to i64
  store i64 %146, i64* %2, align 8
  br label %147

147:                                              ; preds = %141, %135
  br label %148

148:                                              ; preds = %147, %128
  %149 = load i32, i32* %10, align 4
  %150 = load i32, i32* @QCA953X_PLL_CLK_CTRL_DDR_POST_DIV_SHIFT, align 4
  %151 = ashr i32 %149, %150
  %152 = load i32, i32* @QCA953X_PLL_CLK_CTRL_DDR_POST_DIV_MASK, align 4
  %153 = and i32 %151, %152
  store i32 %153, i32* %11, align 4
  %154 = load i32, i32* %10, align 4
  %155 = load i32, i32* @QCA953X_PLL_CLK_CTRL_DDR_PLL_BYPASS, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %148
  %159 = load i64, i64* %1, align 8
  store i64 %159, i64* %3, align 8
  br label %178

160:                                              ; preds = %148
  %161 = load i32, i32* %10, align 4
  %162 = load i32, i32* @QCA953X_PLL_CLK_CTRL_DDRCLK_FROM_DDRPLL, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %160
  %166 = load i32, i32* %13, align 4
  %167 = load i32, i32* %11, align 4
  %168 = add nsw i32 %167, 1
  %169 = sdiv i32 %166, %168
  %170 = sext i32 %169 to i64
  store i64 %170, i64* %3, align 8
  br label %177

171:                                              ; preds = %160
  %172 = load i32, i32* %12, align 4
  %173 = load i32, i32* %11, align 4
  %174 = add nsw i32 %173, 1
  %175 = sdiv i32 %172, %174
  %176 = sext i32 %175 to i64
  store i64 %176, i64* %3, align 8
  br label %177

177:                                              ; preds = %171, %165
  br label %178

178:                                              ; preds = %177, %158
  %179 = load i32, i32* %10, align 4
  %180 = load i32, i32* @QCA953X_PLL_CLK_CTRL_AHB_POST_DIV_SHIFT, align 4
  %181 = ashr i32 %179, %180
  %182 = load i32, i32* @QCA953X_PLL_CLK_CTRL_AHB_POST_DIV_MASK, align 4
  %183 = and i32 %181, %182
  store i32 %183, i32* %11, align 4
  %184 = load i32, i32* %10, align 4
  %185 = load i32, i32* @QCA953X_PLL_CLK_CTRL_AHB_PLL_BYPASS, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %178
  %189 = load i64, i64* %1, align 8
  store i64 %189, i64* %4, align 8
  br label %208

190:                                              ; preds = %178
  %191 = load i32, i32* %10, align 4
  %192 = load i32, i32* @QCA953X_PLL_CLK_CTRL_AHBCLK_FROM_DDRPLL, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %190
  %196 = load i32, i32* %13, align 4
  %197 = load i32, i32* %11, align 4
  %198 = add nsw i32 %197, 1
  %199 = sdiv i32 %196, %198
  %200 = sext i32 %199 to i64
  store i64 %200, i64* %4, align 8
  br label %207

201:                                              ; preds = %190
  %202 = load i32, i32* %12, align 4
  %203 = load i32, i32* %11, align 4
  %204 = add nsw i32 %203, 1
  %205 = sdiv i32 %202, %204
  %206 = sext i32 %205 to i64
  store i64 %206, i64* %4, align 8
  br label %207

207:                                              ; preds = %201, %195
  br label %208

208:                                              ; preds = %207, %188
  %209 = load i64, i64* %3, align 8
  store i64 %209, i64* @u_ar71xx_ddr_freq, align 8
  %210 = load i64, i64* %2, align 8
  store i64 %210, i64* @u_ar71xx_cpu_freq, align 8
  %211 = load i64, i64* %4, align 8
  store i64 %211, i64* @u_ar71xx_ahb_freq, align 8
  %212 = load i64, i64* %1, align 8
  store i64 %212, i64* @u_ar71xx_wdt_freq, align 8
  %213 = load i64, i64* %1, align 8
  store i64 %213, i64* @u_ar71xx_uart_freq, align 8
  %214 = load i64, i64* %1, align 8
  store i64 %214, i64* @u_ar71xx_mdio_freq, align 8
  %215 = load i64, i64* %1, align 8
  store i64 %215, i64* @u_ar71xx_refclk, align 8
  ret void
}

declare dso_local i32 @ATH_READ_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
