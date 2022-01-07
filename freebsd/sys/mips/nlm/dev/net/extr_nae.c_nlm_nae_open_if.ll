; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_nae.c_nlm_nae_open_if.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_nae.c_nlm_nae_open_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NETIOR_XGMAC_STATS_CLR_POS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nlm_nae_open_if(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %19 = load i32, i32* %8, align 4
  switch i32 %19, label %155 [
    i32 128, label %20
    i32 130, label %40
    i32 129, label %47
  ]

20:                                               ; preds = %5
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @XAUI_NETIOR_XGMAC_CTRL1(i32 %22)
  %24 = call i32 @nlm_read_nae_reg(i32 %21, i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* @NETIOR_XGMAC_STATS_CLR_POS, align 4
  %26 = shl i32 1, %25
  %27 = load i32, i32* %11, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @XAUI_NETIOR_XGMAC_CTRL1(i32 %30)
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @nlm_write_nae_reg(i32 %29, i32 %31, i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %9, align 4
  %36 = shl i32 15, %35
  %37 = load i32, i32* %9, align 4
  %38 = shl i32 15, %37
  %39 = call i32 @nlm_nae_set_ior_credit(i32 %34, i32 %36, i32 %38)
  br label %155

40:                                               ; preds = %5
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %9, align 4
  %43 = shl i32 255, %42
  %44 = load i32, i32* %9, align 4
  %45 = shl i32 255, %44
  %46 = call i32 @nlm_nae_set_ior_credit(i32 %41, i32 %43, i32 %45)
  br label %155

47:                                               ; preds = %5
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %9, align 4
  %50 = shl i32 1, %49
  %51 = call i32 @nlm_nae_set_ior_credit(i32 %48, i32 %50, i32 0)
  %52 = load i32, i32* %9, align 4
  %53 = and i32 %52, 3
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %14, align 4
  %56 = call i32 @SGMII_NET_IFACE_CTRL(i32 %54, i32 %55)
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %14, align 4
  %59 = call i32 @SGMII_MAC_CONF1(i32 %57, i32 %58)
  store i32 %59, i32* %17, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %14, align 4
  %62 = call i32 @SGMII_MAC_CONF2(i32 %60, i32 %61)
  store i32 %62, i32* %18, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %15, align 4
  %65 = call i32 @nlm_read_nae_reg(i32 %63, i32 %64)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = and i32 %66, 134217727
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %9, align 4
  %69 = shl i32 %68, 27
  %70 = load i32, i32* %11, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @nlm_write_nae_reg(i32 %72, i32 %73, i32 %74)
  %76 = load i32, i32* %11, align 4
  %77 = and i32 %76, -2049
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @nlm_write_nae_reg(i32 %78, i32 %79, i32 %80)
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %17, align 4
  %84 = call i32 @nlm_read_nae_reg(i32 %82, i32 %83)
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* %17, align 4
  %87 = load i32, i32* %12, align 4
  %88 = or i32 %87, -2147483648
  %89 = or i32 %88, 4
  %90 = or i32 %89, 1
  %91 = call i32 @nlm_write_nae_reg(i32 %85, i32 %86, i32 %90)
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %18, align 4
  %94 = call i32 @nlm_write_nae_reg(i32 %92, i32 %93, i32 29189)
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* %17, align 4
  %97 = call i32 @nlm_read_nae_reg(i32 %95, i32 %96)
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* %17, align 4
  %100 = load i32, i32* %12, align 4
  %101 = and i32 %100, 2147483647
  %102 = call i32 @nlm_write_nae_reg(i32 %98, i32 %99, i32 %101)
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %14, align 4
  %105 = call i32 @SGMII_NET_IFACE_CTRL3(i32 %103, i32 %104)
  store i32 %105, i32* %16, align 4
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* %16, align 4
  %108 = call i32 @nlm_read_nae_reg(i32 %106, i32 %107)
  store i32 %108, i32* %13, align 4
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* %16, align 4
  %111 = load i32, i32* %13, align 4
  %112 = and i32 %111, -65
  %113 = call i32 @nlm_write_nae_reg(i32 %109, i32 %110, i32 %112)
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* %17, align 4
  %116 = call i32 @nlm_read_nae_reg(i32 %114, i32 %115)
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* %17, align 4
  %119 = load i32, i32* %12, align 4
  %120 = and i32 %119, -6
  %121 = call i32 @nlm_write_nae_reg(i32 %117, i32 %118, i32 %120)
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* %15, align 4
  %124 = call i32 @nlm_read_nae_reg(i32 %122, i32 %123)
  store i32 %124, i32* %11, align 4
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* %15, align 4
  %127 = load i32, i32* %11, align 4
  %128 = and i32 %127, -5
  %129 = call i32 @nlm_write_nae_reg(i32 %125, i32 %126, i32 %128)
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* %15, align 4
  %132 = call i32 @nlm_read_nae_reg(i32 %130, i32 %131)
  store i32 %132, i32* %11, align 4
  %133 = load i32, i32* %6, align 4
  %134 = load i32, i32* %15, align 4
  %135 = load i32, i32* %11, align 4
  %136 = or i32 %135, 32768
  %137 = call i32 @nlm_write_nae_reg(i32 %133, i32 %134, i32 %136)
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* %15, align 4
  %140 = call i32 @nlm_read_nae_reg(i32 %138, i32 %139)
  store i32 %140, i32* %11, align 4
  %141 = load i32, i32* %6, align 4
  %142 = load i32, i32* %15, align 4
  %143 = load i32, i32* %11, align 4
  %144 = and i32 %143, -32769
  %145 = or i32 %144, 65536
  %146 = call i32 @nlm_write_nae_reg(i32 %141, i32 %142, i32 %145)
  %147 = load i32, i32* %6, align 4
  %148 = load i32, i32* %17, align 4
  %149 = call i32 @nlm_read_nae_reg(i32 %147, i32 %148)
  store i32 %149, i32* %12, align 4
  %150 = load i32, i32* %6, align 4
  %151 = load i32, i32* %17, align 4
  %152 = load i32, i32* %12, align 4
  %153 = or i32 %152, 48
  %154 = call i32 @nlm_write_nae_reg(i32 %150, i32 %151, i32 %153)
  br label %155

155:                                              ; preds = %5, %47, %40, %20
  %156 = load i32, i32* %6, align 4
  %157 = load i32, i32* %10, align 4
  %158 = call i32 @nlm_nae_init_ingress(i32 %156, i32 %157)
  %159 = load i32, i32* %6, align 4
  %160 = call i32 @nlm_nae_init_egress(i32 %159)
  ret i32 0
}

declare dso_local i32 @nlm_read_nae_reg(i32, i32) #1

declare dso_local i32 @XAUI_NETIOR_XGMAC_CTRL1(i32) #1

declare dso_local i32 @nlm_write_nae_reg(i32, i32, i32) #1

declare dso_local i32 @nlm_nae_set_ior_credit(i32, i32, i32) #1

declare dso_local i32 @SGMII_NET_IFACE_CTRL(i32, i32) #1

declare dso_local i32 @SGMII_MAC_CONF1(i32, i32) #1

declare dso_local i32 @SGMII_MAC_CONF2(i32, i32) #1

declare dso_local i32 @SGMII_NET_IFACE_CTRL3(i32, i32) #1

declare dso_local i32 @nlm_nae_init_ingress(i32, i32) #1

declare dso_local i32 @nlm_nae_init_egress(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
