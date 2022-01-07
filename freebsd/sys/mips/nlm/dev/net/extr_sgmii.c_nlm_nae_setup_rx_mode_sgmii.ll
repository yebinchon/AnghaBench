; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_sgmii.c_nlm_nae_setup_rx_mode_sgmii.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_sgmii.c_nlm_nae_setup_rx_mode_sgmii.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nlm_nae_setup_rx_mode_sgmii(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %18 = load i32, i32* %16, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %34

20:                                               ; preds = %8
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @SGMII_NETIOR_VLANTYPE_FILTER(i32 %22, i32 %23)
  %25 = call i32 @nlm_read_nae_reg(i32 %21, i32 %24)
  store i32 %25, i32* %17, align 4
  %26 = load i32, i32* %17, align 4
  %27 = and i32 %26, -196609
  store i32 %27, i32* %17, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @SGMII_NETIOR_VLANTYPE_FILTER(i32 %29, i32 %30)
  %32 = load i32, i32* %17, align 4
  %33 = call i32 @nlm_write_nae_reg(i32 %28, i32 %31, i32 %32)
  br label %48

34:                                               ; preds = %8
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @SGMII_NETIOR_VLANTYPE_FILTER(i32 %36, i32 %37)
  %39 = call i32 @nlm_read_nae_reg(i32 %35, i32 %38)
  store i32 %39, i32* %17, align 4
  %40 = load i32, i32* %17, align 4
  %41 = or i32 %40, 131072
  store i32 %41, i32* %17, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @SGMII_NETIOR_VLANTYPE_FILTER(i32 %43, i32 %44)
  %46 = load i32, i32* %17, align 4
  %47 = call i32 @nlm_write_nae_reg(i32 %42, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %34, %20
  %49 = load i32, i32* %13, align 4
  %50 = and i32 %49, 1
  %51 = shl i32 %50, 10
  %52 = load i32, i32* %15, align 4
  %53 = and i32 %52, 1
  %54 = shl i32 %53, 9
  %55 = or i32 %51, %54
  %56 = load i32, i32* %14, align 4
  %57 = and i32 %56, 1
  %58 = shl i32 %57, 8
  %59 = or i32 %55, %58
  %60 = load i32, i32* %16, align 4
  %61 = and i32 %60, 1
  %62 = shl i32 %61, 7
  %63 = or i32 %59, %62
  %64 = or i32 %63, 1
  store i32 %64, i32* %17, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @SGMII_MAC_FILTER_CONFIG(i32 %66, i32 %67)
  %69 = load i32, i32* %17, align 4
  %70 = call i32 @nlm_write_nae_reg(i32 %65, i32 %68, i32 %69)
  ret void
}

declare dso_local i32 @nlm_read_nae_reg(i32, i32) #1

declare dso_local i32 @SGMII_NETIOR_VLANTYPE_FILTER(i32, i32) #1

declare dso_local i32 @nlm_write_nae_reg(i32, i32, i32) #1

declare dso_local i32 @SGMII_MAC_FILTER_CONFIG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
