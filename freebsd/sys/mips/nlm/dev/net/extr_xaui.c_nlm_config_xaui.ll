; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_xaui.c_nlm_config_xaui.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_xaui.c_nlm_config_xaui.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XAUI_CONFIG_LENCHK = common dso_local global i32 0, align 4
@XAUI_CONFIG_GENFCS = common dso_local global i32 0, align 4
@XAUI_CONFIG_PAD_64 = common dso_local global i32 0, align 4
@NETIOR_XGMAC_VLAN_DC_POS = common dso_local global i32 0, align 4
@NETIOR_XGMAC_STATS_EN_POS = common dso_local global i32 0, align 4
@NETIOR_XGMAC_TX_PFC_EN_POS = common dso_local global i32 0, align 4
@NETIOR_XGMAC_RX_PFC_EN_POS = common dso_local global i32 0, align 4
@NETIOR_XGMAC_TX_PAUSE_POS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nlm_config_xaui(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @XAUI_NETIOR_XGMAC_CTRL1(i32 %13)
  %15 = call i32 @nlm_read_nae_reg(i32 %12, i32 %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = and i32 %16, -2049
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @XAUI_NETIOR_XGMAC_CTRL1(i32 %19)
  %21 = load i32, i32* %11, align 4
  %22 = call i32 @nlm_write_nae_reg(i32 %18, i32 %20, i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @XAUI_NETIOR_XGMAC_CTRL1(i32 %24)
  %26 = call i32 @nlm_read_nae_reg(i32 %23, i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = and i32 %27, -6145
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @XAUI_NETIOR_XGMAC_CTRL1(i32 %30)
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @nlm_write_nae_reg(i32 %29, i32 %31, i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @XAUI_CONFIG0(i32 %35)
  %37 = call i32 @nlm_write_nae_reg(i32 %34, i32 %36, i32 -1)
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @XAUI_CONFIG0(i32 %39)
  %41 = call i32 @nlm_write_nae_reg(i32 %38, i32 %40, i32 0)
  store i32 4264, i32* %11, align 4
  %42 = load i32, i32* @XAUI_CONFIG_LENCHK, align 4
  %43 = load i32, i32* %11, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* @XAUI_CONFIG_GENFCS, align 4
  %46 = load i32, i32* %11, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* @XAUI_CONFIG_PAD_64, align 4
  %49 = load i32, i32* %11, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @XAUI_CONFIG1(i32 %52)
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @nlm_write_nae_reg(i32 %51, i32 %53, i32 %54)
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @nlm_config_xaui_mtu(i32 %56, i32 %57, i32 %58, i32 %59)
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @XAUI_NETIOR_XGMAC_CTRL1(i32 %62)
  %64 = call i32 @nlm_read_nae_reg(i32 %61, i32 %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* @NETIOR_XGMAC_VLAN_DC_POS, align 4
  %66 = shl i32 1, %65
  %67 = load i32, i32* %11, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* @NETIOR_XGMAC_STATS_EN_POS, align 4
  %70 = shl i32 1, %69
  %71 = load i32, i32* %11, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %5
  %76 = load i32, i32* @NETIOR_XGMAC_TX_PFC_EN_POS, align 4
  %77 = shl i32 1, %76
  %78 = load i32, i32* %11, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* @NETIOR_XGMAC_RX_PFC_EN_POS, align 4
  %81 = shl i32 1, %80
  %82 = load i32, i32* %11, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* @NETIOR_XGMAC_TX_PAUSE_POS, align 4
  %85 = shl i32 1, %84
  %86 = load i32, i32* %11, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %11, align 4
  br label %98

88:                                               ; preds = %5
  %89 = load i32, i32* @NETIOR_XGMAC_TX_PFC_EN_POS, align 4
  %90 = shl i32 1, %89
  %91 = xor i32 %90, -1
  %92 = load i32, i32* %11, align 4
  %93 = and i32 %92, %91
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* @NETIOR_XGMAC_TX_PAUSE_POS, align 4
  %95 = shl i32 1, %94
  %96 = load i32, i32* %11, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %11, align 4
  br label %98

98:                                               ; preds = %88, %75
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @XAUI_NETIOR_XGMAC_CTRL1(i32 %100)
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @nlm_write_nae_reg(i32 %99, i32 %101, i32 %102)
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %98
  store i32 -249364480, i32* %11, align 4
  br label %108

107:                                              ; preds = %98
  store i32 61731, i32* %11, align 4
  br label %108

108:                                              ; preds = %107, %106
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @XAUI_NETIOR_XGMAC_CTRL2(i32 %110)
  %112 = load i32, i32* %11, align 4
  %113 = call i32 @nlm_write_nae_reg(i32 %109, i32 %111, i32 %112)
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @XAUI_NETIOR_XGMAC_CTRL3(i32 %115)
  %117 = call i32 @nlm_read_nae_reg(i32 %114, i32 %116)
  store i32 %117, i32* %11, align 4
  %118 = load i32, i32* %11, align 4
  %119 = and i32 %118, -31745
  store i32 %119, i32* %11, align 4
  %120 = load i32, i32* %11, align 4
  %121 = or i32 %120, -15361
  store i32 %121, i32* %11, align 4
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* %7, align 4
  %124 = call i32 @XAUI_NETIOR_XGMAC_CTRL3(i32 %123)
  %125 = load i32, i32* %11, align 4
  %126 = call i32 @nlm_write_nae_reg(i32 %122, i32 %124, i32 %125)
  ret void
}

declare dso_local i32 @nlm_read_nae_reg(i32, i32) #1

declare dso_local i32 @XAUI_NETIOR_XGMAC_CTRL1(i32) #1

declare dso_local i32 @nlm_write_nae_reg(i32, i32, i32) #1

declare dso_local i32 @XAUI_CONFIG0(i32) #1

declare dso_local i32 @XAUI_CONFIG1(i32) #1

declare dso_local i32 @nlm_config_xaui_mtu(i32, i32, i32, i32) #1

declare dso_local i32 @XAUI_NETIOR_XGMAC_CTRL2(i32) #1

declare dso_local i32 @XAUI_NETIOR_XGMAC_CTRL3(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
