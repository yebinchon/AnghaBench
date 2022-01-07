; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_sgmii.c_nlm_nae_setup_mac_addr_sgmii.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_sgmii.c_nlm_nae_setup_mac_addr_sgmii.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SGMIIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nlm_nae_setup_mac_addr_sgmii(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @SGMII_MAC_ADDR0_LO(i32 %12, i32 %13)
  %15 = load i32*, i32** %10, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 5
  %17 = load i32, i32* %16, align 4
  %18 = shl i32 %17, 24
  %19 = load i32*, i32** %10, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 4
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %21, 16
  %23 = or i32 %18, %22
  %24 = load i32*, i32** %10, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 3
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 %26, 8
  %28 = or i32 %23, %27
  %29 = load i32*, i32** %10, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 2
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %28, %31
  %33 = call i32 @nlm_write_nae_reg(i32 %11, i32 %14, i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @SGMII_MAC_ADDR0_HI(i32 %35, i32 %36)
  %38 = load i32*, i32** %10, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 24
  %42 = load i32*, i32** %10, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = shl i32 %44, 16
  %46 = or i32 %41, %45
  %47 = call i32 @nlm_write_nae_reg(i32 %34, i32 %37, i32 %46)
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @SGMII_MAC_ADDR_MASK0_LO(i32 %49, i32 %50)
  %52 = call i32 @nlm_write_nae_reg(i32 %48, i32 %51, i32 -1)
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @SGMII_MAC_ADDR_MASK0_HI(i32 %54, i32 %55)
  %57 = call i32 @nlm_write_nae_reg(i32 %53, i32 %56, i32 -1)
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @SGMIIC, align 4
  %62 = call i32 @nlm_nae_setup_rx_mode_sgmii(i32 %58, i32 %59, i32 %60, i32 %61, i32 1, i32 1, i32 0, i32 0)
  ret void
}

declare dso_local i32 @nlm_write_nae_reg(i32, i32, i32) #1

declare dso_local i32 @SGMII_MAC_ADDR0_LO(i32, i32) #1

declare dso_local i32 @SGMII_MAC_ADDR0_HI(i32, i32) #1

declare dso_local i32 @SGMII_MAC_ADDR_MASK0_LO(i32, i32) #1

declare dso_local i32 @SGMII_MAC_ADDR_MASK0_HI(i32, i32) #1

declare dso_local i32 @nlm_nae_setup_rx_mode_sgmii(i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
