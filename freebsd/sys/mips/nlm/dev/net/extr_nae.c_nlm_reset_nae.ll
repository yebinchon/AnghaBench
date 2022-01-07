; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_nae.c_nlm_reset_nae.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_nae.c_nlm_reset_nae.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XLP_PCI_CFGREG4 = common dso_local global i32 0, align 4
@SYS_RESET = common dso_local global i32 0, align 4
@NAE_RX_CONFIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nlm_reset_nae(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @nlm_get_sys_regbase(i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @nlm_get_nae_regbase(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @nlm_get_nae_pcibase(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @XLP_PCI_CFGREG4, align 4
  %18 = call i32 @nlm_read_pci_reg(i32 %16, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = call i64 (...) @nlm_is_xlp8xx_ax()
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %1
  %22 = load i32, i32* %7, align 4
  %23 = ashr i32 %22, 24
  %24 = and i32 %23, 255
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = shl i32 %25, 24
  %27 = load i32, i32* %9, align 4
  %28 = shl i32 %27, 16
  %29 = or i32 %26, %28
  %30 = load i32, i32* %9, align 4
  %31 = shl i32 %30, 8
  %32 = or i32 %29, %31
  %33 = load i32, i32* %9, align 4
  %34 = or i32 %32, %33
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %21, %1
  %36 = call i64 (...) @nlm_is_xlp3xx()
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 6, i32* %8, align 4
  br label %40

39:                                               ; preds = %35
  store i32 9, i32* %8, align 4
  br label %40

40:                                               ; preds = %39, %38
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @SYS_RESET, align 4
  %43 = load i32, i32* %8, align 4
  %44 = shl i32 1, %43
  %45 = call i32 @nlm_write_sys_reg(i32 %41, i32 %42, i32 %44)
  %46 = call i32 @DELAY(i32 1000000)
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @SYS_RESET, align 4
  %49 = load i32, i32* %8, align 4
  %50 = shl i32 0, %49
  %51 = call i32 @nlm_write_sys_reg(i32 %47, i32 %48, i32 %50)
  %52 = call i32 @DELAY(i32 1000000)
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @NAE_RX_CONFIG, align 4
  %55 = call i32 @nlm_read_nae_reg(i32 %53, i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @XLP_PCI_CFGREG4, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @nlm_write_pci_reg(i32 %56, i32 %57, i32 %58)
  ret void
}

declare dso_local i32 @nlm_get_sys_regbase(i32) #1

declare dso_local i32 @nlm_get_nae_regbase(i32) #1

declare dso_local i32 @nlm_get_nae_pcibase(i32) #1

declare dso_local i32 @nlm_read_pci_reg(i32, i32) #1

declare dso_local i64 @nlm_is_xlp8xx_ax(...) #1

declare dso_local i64 @nlm_is_xlp3xx(...) #1

declare dso_local i32 @nlm_write_sys_reg(i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @nlm_read_nae_reg(i32, i32) #1

declare dso_local i32 @nlm_write_pci_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
