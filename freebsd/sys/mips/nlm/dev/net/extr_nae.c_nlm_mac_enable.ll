; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_nae.c_nlm_mac_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_nae.c_nlm_mac_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XAUI_CONFIG_TFEN = common dso_local global i32 0, align 4
@XAUI_CONFIG_RFEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nlm_mac_enable(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = and i32 %13, 3
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %57 [
    i32 129, label %16
    i32 128, label %42
    i32 130, label %56
  ]

16:                                               ; preds = %4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %12, align 4
  %20 = call i32 @SGMII_NET_IFACE_CTRL(i32 %18, i32 %19)
  %21 = call i32 @nlm_read_nae_reg(i32 %17, i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %12, align 4
  %25 = call i32 @SGMII_NET_IFACE_CTRL(i32 %23, i32 %24)
  %26 = load i32, i32* %11, align 4
  %27 = or i32 %26, 4
  %28 = call i32 @nlm_write_nae_reg(i32 %22, i32 %25, i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @SGMII_MAC_CONF1(i32 %30, i32 %31)
  %33 = call i32 @nlm_read_nae_reg(i32 %29, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @SGMII_MAC_CONF1(i32 %35, i32 %36)
  %38 = load i32, i32* %9, align 4
  %39 = or i32 %38, 4
  %40 = or i32 %39, 1
  %41 = call i32 @nlm_write_nae_reg(i32 %34, i32 %37, i32 %40)
  br label %57

42:                                               ; preds = %4
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @XAUI_CONFIG1(i32 %44)
  %46 = call i32 @nlm_read_nae_reg(i32 %43, i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @XAUI_CONFIG1(i32 %48)
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @XAUI_CONFIG_TFEN, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @XAUI_CONFIG_RFEN, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @nlm_write_nae_reg(i32 %47, i32 %49, i32 %54)
  br label %57

56:                                               ; preds = %4
  br label %57

57:                                               ; preds = %4, %56, %42, %16
  ret void
}

declare dso_local i32 @nlm_read_nae_reg(i32, i32) #1

declare dso_local i32 @SGMII_NET_IFACE_CTRL(i32, i32) #1

declare dso_local i32 @nlm_write_nae_reg(i32, i32, i32) #1

declare dso_local i32 @SGMII_MAC_CONF1(i32, i32) #1

declare dso_local i32 @XAUI_CONFIG1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
