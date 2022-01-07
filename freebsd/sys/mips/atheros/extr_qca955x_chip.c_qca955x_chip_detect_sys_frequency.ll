; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_qca955x_chip.c_qca955x_chip_detect_sys_frequency.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_qca955x_chip.c_qca955x_chip_detect_sys_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@QCA955X_RESET_REG_BOOTSTRAP = common dso_local global i32 0, align 4
@QCA955X_BOOTSTRAP_REF_CLK_40 = common dso_local global i32 0, align 4
@QCA955X_PLL_CPU_CONFIG_REG = common dso_local global i32 0, align 4
@QCA955X_PLL_CPU_CONFIG_OUTDIV_SHIFT = common dso_local global i32 0, align 4
@QCA955X_PLL_CPU_CONFIG_OUTDIV_MASK = common dso_local global i32 0, align 4
@QCA955X_PLL_CPU_CONFIG_REFDIV_SHIFT = common dso_local global i32 0, align 4
@QCA955X_PLL_CPU_CONFIG_REFDIV_MASK = common dso_local global i32 0, align 4
@QCA955X_PLL_CPU_CONFIG_NINT_SHIFT = common dso_local global i32 0, align 4
@QCA955X_PLL_CPU_CONFIG_NINT_MASK = common dso_local global i32 0, align 4
@QCA955X_PLL_CPU_CONFIG_NFRAC_SHIFT = common dso_local global i32 0, align 4
@QCA955X_PLL_CPU_CONFIG_NFRAC_MASK = common dso_local global i32 0, align 4
@QCA955X_PLL_DDR_CONFIG_REG = common dso_local global i32 0, align 4
@QCA955X_PLL_DDR_CONFIG_OUTDIV_SHIFT = common dso_local global i32 0, align 4
@QCA955X_PLL_DDR_CONFIG_OUTDIV_MASK = common dso_local global i32 0, align 4
@QCA955X_PLL_DDR_CONFIG_REFDIV_SHIFT = common dso_local global i32 0, align 4
@QCA955X_PLL_DDR_CONFIG_REFDIV_MASK = common dso_local global i32 0, align 4
@QCA955X_PLL_DDR_CONFIG_NINT_SHIFT = common dso_local global i32 0, align 4
@QCA955X_PLL_DDR_CONFIG_NINT_MASK = common dso_local global i32 0, align 4
@QCA955X_PLL_DDR_CONFIG_NFRAC_SHIFT = common dso_local global i32 0, align 4
@QCA955X_PLL_DDR_CONFIG_NFRAC_MASK = common dso_local global i32 0, align 4
@QCA955X_PLL_CLK_CTRL_REG = common dso_local global i32 0, align 4
@QCA955X_PLL_CLK_CTRL_CPU_POST_DIV_SHIFT = common dso_local global i32 0, align 4
@QCA955X_PLL_CLK_CTRL_CPU_POST_DIV_MASK = common dso_local global i32 0, align 4
@QCA955X_PLL_CLK_CTRL_CPU_PLL_BYPASS = common dso_local global i32 0, align 4
@QCA955X_PLL_CLK_CTRL_CPUCLK_FROM_CPUPLL = common dso_local global i32 0, align 4
@QCA955X_PLL_CLK_CTRL_DDR_POST_DIV_SHIFT = common dso_local global i32 0, align 4
@QCA955X_PLL_CLK_CTRL_DDR_POST_DIV_MASK = common dso_local global i32 0, align 4
@QCA955X_PLL_CLK_CTRL_DDR_PLL_BYPASS = common dso_local global i32 0, align 4
@QCA955X_PLL_CLK_CTRL_DDRCLK_FROM_DDRPLL = common dso_local global i32 0, align 4
@QCA955X_PLL_CLK_CTRL_AHB_POST_DIV_SHIFT = common dso_local global i32 0, align 4
@QCA955X_PLL_CLK_CTRL_AHB_POST_DIV_MASK = common dso_local global i32 0, align 4
@QCA955X_PLL_CLK_CTRL_AHB_PLL_BYPASS = common dso_local global i32 0, align 4
@QCA955X_PLL_CLK_CTRL_AHBCLK_FROM_DDRPLL = common dso_local global i32 0, align 4
@u_ar71xx_ddr_freq = common dso_local global i64 0, align 8
@u_ar71xx_cpu_freq = common dso_local global i64 0, align 8
@u_ar71xx_ahb_freq = common dso_local global i64 0, align 8
@u_ar71xx_wdt_freq = common dso_local global i64 0, align 8
@u_ar71xx_uart_freq = common dso_local global i64 0, align 8
@u_ar71xx_mdio_freq = common dso_local global i64 0, align 8
@u_ar71xx_refclk = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @qca955x_chip_detect_sys_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qca955x_chip_detect_sys_frequency() #0 {
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
  %15 = load i32, i32* @QCA955X_RESET_REG_BOOTSTRAP, align 4
  %16 = call i32 @ATH_READ_REG(i32 %15)
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* %14, align 4
  %18 = load i32, i32* @QCA955X_BOOTSTRAP_REF_CLK_40, align 4
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
  %24 = load i32, i32* @QCA955X_PLL_CPU_CONFIG_REG, align 4
  %25 = call i32 @ATH_READ_REG(i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @QCA955X_PLL_CPU_CONFIG_OUTDIV_SHIFT, align 4
  %28 = ashr i32 %26, %27
  %29 = load i32, i32* @QCA955X_PLL_CPU_CONFIG_OUTDIV_MASK, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @QCA955X_PLL_CPU_CONFIG_REFDIV_SHIFT, align 4
  %33 = ashr i32 %31, %32
  %34 = load i32, i32* @QCA955X_PLL_CPU_CONFIG_REFDIV_MASK, align 4
  %35 = and i32 %33, %34
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @QCA955X_PLL_CPU_CONFIG_NINT_SHIFT, align 4
  %38 = ashr i32 %36, %37
  %39 = load i32, i32* @QCA955X_PLL_CPU_CONFIG_NINT_MASK, align 4
  %40 = and i32 %38, %39
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @QCA955X_PLL_CPU_CONFIG_NFRAC_SHIFT, align 4
  %43 = ashr i32 %41, %42
  %44 = load i32, i32* @QCA955X_PLL_CPU_CONFIG_NFRAC_MASK, align 4
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
  %57 = mul i64 %55, %56
  %58 = load i32, i32* %7, align 4
  %59 = mul nsw i32 %58, 64
  %60 = sext i32 %59 to i64
  %61 = udiv i64 %57, %60
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
  %70 = load i32, i32* @QCA955X_PLL_DDR_CONFIG_REG, align 4
  %71 = call i32 @ATH_READ_REG(i32 %70)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @QCA955X_PLL_DDR_CONFIG_OUTDIV_SHIFT, align 4
  %74 = ashr i32 %72, %73
  %75 = load i32, i32* @QCA955X_PLL_DDR_CONFIG_OUTDIV_MASK, align 4
  %76 = and i32 %74, %75
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @QCA955X_PLL_DDR_CONFIG_REFDIV_SHIFT, align 4
  %79 = ashr i32 %77, %78
  %80 = load i32, i32* @QCA955X_PLL_DDR_CONFIG_REFDIV_MASK, align 4
  %81 = and i32 %79, %80
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* @QCA955X_PLL_DDR_CONFIG_NINT_SHIFT, align 4
  %84 = ashr i32 %82, %83
  %85 = load i32, i32* @QCA955X_PLL_DDR_CONFIG_NINT_MASK, align 4
  %86 = and i32 %84, %85
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* @QCA955X_PLL_DDR_CONFIG_NFRAC_SHIFT, align 4
  %89 = ashr i32 %87, %88
  %90 = load i32, i32* @QCA955X_PLL_DDR_CONFIG_NFRAC_MASK, align 4
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
  %103 = mul i64 %101, %102
  %104 = load i32, i32* %7, align 4
  %105 = mul nsw i32 %104, 1024
  %106 = sext i32 %105 to i64
  %107 = udiv i64 %103, %106
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = add i64 %109, %107
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %13, align 4
  %112 = load i32, i32* %6, align 4
  %113 = shl i32 1, %112
  %114 = load i32, i32* %13, align 4
  %115 = sdiv i32 %114, %113
  store i32 %115, i32* %13, align 4
  %116 = load i32, i32* @QCA955X_PLL_CLK_CTRL_REG, align 4
  %117 = call i32 @ATH_READ_REG(i32 %116)
  store i32 %117, i32* %10, align 4
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* @QCA955X_PLL_CLK_CTRL_CPU_POST_DIV_SHIFT, align 4
  %120 = ashr i32 %118, %119
  %121 = load i32, i32* @QCA955X_PLL_CLK_CTRL_CPU_POST_DIV_MASK, align 4
  %122 = and i32 %120, %121
  store i32 %122, i32* %11, align 4
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* @QCA955X_PLL_CLK_CTRL_CPU_PLL_BYPASS, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %23
  %128 = load i64, i64* %1, align 8
  store i64 %128, i64* %2, align 8
  br label %147

129:                                              ; preds = %23
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* @QCA955X_PLL_CLK_CTRL_CPUCLK_FROM_CPUPLL, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %129
  %135 = load i32, i32* %13, align 4
  %136 = load i32, i32* %11, align 4
  %137 = add nsw i32 %136, 1
  %138 = sdiv i32 %135, %137
  %139 = sext i32 %138 to i64
  store i64 %139, i64* %2, align 8
  br label %146

140:                                              ; preds = %129
  %141 = load i32, i32* %12, align 4
  %142 = load i32, i32* %11, align 4
  %143 = add nsw i32 %142, 1
  %144 = sdiv i32 %141, %143
  %145 = sext i32 %144 to i64
  store i64 %145, i64* %2, align 8
  br label %146

146:                                              ; preds = %140, %134
  br label %147

147:                                              ; preds = %146, %127
  %148 = load i32, i32* %10, align 4
  %149 = load i32, i32* @QCA955X_PLL_CLK_CTRL_DDR_POST_DIV_SHIFT, align 4
  %150 = ashr i32 %148, %149
  %151 = load i32, i32* @QCA955X_PLL_CLK_CTRL_DDR_POST_DIV_MASK, align 4
  %152 = and i32 %150, %151
  store i32 %152, i32* %11, align 4
  %153 = load i32, i32* %10, align 4
  %154 = load i32, i32* @QCA955X_PLL_CLK_CTRL_DDR_PLL_BYPASS, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %147
  %158 = load i64, i64* %1, align 8
  store i64 %158, i64* %3, align 8
  br label %177

159:                                              ; preds = %147
  %160 = load i32, i32* %10, align 4
  %161 = load i32, i32* @QCA955X_PLL_CLK_CTRL_DDRCLK_FROM_DDRPLL, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %159
  %165 = load i32, i32* %12, align 4
  %166 = load i32, i32* %11, align 4
  %167 = add nsw i32 %166, 1
  %168 = sdiv i32 %165, %167
  %169 = sext i32 %168 to i64
  store i64 %169, i64* %3, align 8
  br label %176

170:                                              ; preds = %159
  %171 = load i32, i32* %13, align 4
  %172 = load i32, i32* %11, align 4
  %173 = add nsw i32 %172, 1
  %174 = sdiv i32 %171, %173
  %175 = sext i32 %174 to i64
  store i64 %175, i64* %3, align 8
  br label %176

176:                                              ; preds = %170, %164
  br label %177

177:                                              ; preds = %176, %157
  %178 = load i32, i32* %10, align 4
  %179 = load i32, i32* @QCA955X_PLL_CLK_CTRL_AHB_POST_DIV_SHIFT, align 4
  %180 = ashr i32 %178, %179
  %181 = load i32, i32* @QCA955X_PLL_CLK_CTRL_AHB_POST_DIV_MASK, align 4
  %182 = and i32 %180, %181
  store i32 %182, i32* %11, align 4
  %183 = load i32, i32* %10, align 4
  %184 = load i32, i32* @QCA955X_PLL_CLK_CTRL_AHB_PLL_BYPASS, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %177
  %188 = load i64, i64* %1, align 8
  store i64 %188, i64* %4, align 8
  br label %207

189:                                              ; preds = %177
  %190 = load i32, i32* %10, align 4
  %191 = load i32, i32* @QCA955X_PLL_CLK_CTRL_AHBCLK_FROM_DDRPLL, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %189
  %195 = load i32, i32* %13, align 4
  %196 = load i32, i32* %11, align 4
  %197 = add nsw i32 %196, 1
  %198 = sdiv i32 %195, %197
  %199 = sext i32 %198 to i64
  store i64 %199, i64* %4, align 8
  br label %206

200:                                              ; preds = %189
  %201 = load i32, i32* %12, align 4
  %202 = load i32, i32* %11, align 4
  %203 = add nsw i32 %202, 1
  %204 = sdiv i32 %201, %203
  %205 = sext i32 %204 to i64
  store i64 %205, i64* %4, align 8
  br label %206

206:                                              ; preds = %200, %194
  br label %207

207:                                              ; preds = %206, %187
  %208 = load i64, i64* %3, align 8
  store i64 %208, i64* @u_ar71xx_ddr_freq, align 8
  %209 = load i64, i64* %2, align 8
  store i64 %209, i64* @u_ar71xx_cpu_freq, align 8
  %210 = load i64, i64* %4, align 8
  store i64 %210, i64* @u_ar71xx_ahb_freq, align 8
  %211 = load i64, i64* %1, align 8
  store i64 %211, i64* @u_ar71xx_wdt_freq, align 8
  %212 = load i64, i64* %1, align 8
  store i64 %212, i64* @u_ar71xx_uart_freq, align 8
  %213 = load i64, i64* %1, align 8
  store i64 %213, i64* @u_ar71xx_mdio_freq, align 8
  %214 = load i64, i64* %1, align 8
  store i64 %214, i64* @u_ar71xx_refclk, align 8
  ret void
}

declare dso_local i32 @ATH_READ_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
