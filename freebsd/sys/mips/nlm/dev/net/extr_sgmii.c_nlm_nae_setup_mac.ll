; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_sgmii.c_nlm_nae_setup_mac.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_sgmii.c_nlm_nae_setup_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nlm_nae_setup_mac(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
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
  %19 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %11, align 4
  %23 = call i32 @SGMII_MAC_CONF1(i32 %21, i32 %22)
  %24 = call i32 @nlm_read_nae_reg(i32 %20, i32 %23)
  store i32 %24, i32* %17, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @SGMII_MAC_CONF2(i32 %26, i32 %27)
  %29 = call i32 @nlm_read_nae_reg(i32 %25, i32 %28)
  store i32 %29, i32* %18, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @SGMII_NET_IFACE_CTRL(i32 %31, i32 %32)
  %34 = call i32 @nlm_read_nae_reg(i32 %30, i32 %33)
  store i32 %34, i32* %19, align 4
  %35 = load i32, i32* %17, align 4
  %36 = and i32 %35, 2147483647
  store i32 %36, i32* %17, align 4
  %37 = load i32, i32* %17, align 4
  %38 = and i32 %37, -5
  store i32 %38, i32* %17, align 4
  %39 = load i32, i32* %17, align 4
  %40 = and i32 %39, -2
  store i32 %40, i32* %17, align 4
  %41 = load i32, i32* %18, align 4
  %42 = and i32 %41, -769
  store i32 %42, i32* %18, align 4
  %43 = load i32, i32* %18, align 4
  %44 = and i32 %43, -2
  store i32 %44, i32* %18, align 4
  %45 = load i32, i32* %19, align 4
  %46 = and i32 %45, -5
  store i32 %46, i32* %19, align 4
  %47 = load i32, i32* %19, align 4
  %48 = and i32 %47, -4
  store i32 %48, i32* %19, align 4
  %49 = load i32, i32* %15, align 4
  switch i32 %49, label %59 [
    i32 129, label %50
    i32 128, label %54
  ]

50:                                               ; preds = %8
  %51 = load i32, i32* %19, align 4
  store i32 %51, i32* %19, align 4
  %52 = load i32, i32* %18, align 4
  %53 = or i32 %52, 256
  store i32 %53, i32* %18, align 4
  br label %64

54:                                               ; preds = %8
  %55 = load i32, i32* %19, align 4
  %56 = or i32 %55, 1
  store i32 %56, i32* %19, align 4
  %57 = load i32, i32* %18, align 4
  %58 = or i32 %57, 256
  store i32 %58, i32* %18, align 4
  br label %64

59:                                               ; preds = %8
  %60 = load i32, i32* %19, align 4
  %61 = or i32 %60, 2
  store i32 %61, i32* %19, align 4
  %62 = load i32, i32* %18, align 4
  %63 = or i32 %62, 512
  store i32 %63, i32* %18, align 4
  br label %64

64:                                               ; preds = %59, %54, %50
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32, i32* %17, align 4
  %69 = or i32 %68, -2147483648
  store i32 %69, i32* %17, align 4
  br label %70

70:                                               ; preds = %67, %64
  %71 = load i32, i32* %13, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32, i32* %17, align 4
  %75 = or i32 %74, 4
  store i32 %75, i32* %17, align 4
  br label %76

76:                                               ; preds = %73, %70
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @SGMII_NET_IFACE_CTRL(i32 %78, i32 %79)
  %81 = load i32, i32* %19, align 4
  %82 = call i32 @nlm_write_nae_reg(i32 %77, i32 %80, i32 %81)
  %83 = load i32, i32* %14, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %76
  %86 = load i32, i32* %17, align 4
  %87 = or i32 %86, 1
  store i32 %87, i32* %17, align 4
  %88 = load i32, i32* %19, align 4
  %89 = or i32 %88, 4
  store i32 %89, i32* %19, align 4
  br label %90

90:                                               ; preds = %85, %76
  %91 = load i32, i32* %16, align 4
  switch i32 %91, label %93 [
    i32 130, label %92
  ]

92:                                               ; preds = %90
  br label %96

93:                                               ; preds = %90
  %94 = load i32, i32* %18, align 4
  %95 = or i32 %94, 1
  store i32 %95, i32* %18, align 4
  br label %96

96:                                               ; preds = %93, %92
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %11, align 4
  %100 = call i32 @SGMII_MAC_CONF1(i32 %98, i32 %99)
  %101 = load i32, i32* %17, align 4
  %102 = call i32 @nlm_write_nae_reg(i32 %97, i32 %100, i32 %101)
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* %11, align 4
  %106 = call i32 @SGMII_MAC_CONF2(i32 %104, i32 %105)
  %107 = load i32, i32* %18, align 4
  %108 = call i32 @nlm_write_nae_reg(i32 %103, i32 %106, i32 %107)
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %11, align 4
  %112 = call i32 @SGMII_NET_IFACE_CTRL(i32 %110, i32 %111)
  %113 = load i32, i32* %19, align 4
  %114 = call i32 @nlm_write_nae_reg(i32 %109, i32 %112, i32 %113)
  ret void
}

declare dso_local i32 @nlm_read_nae_reg(i32, i32) #1

declare dso_local i32 @SGMII_MAC_CONF1(i32, i32) #1

declare dso_local i32 @SGMII_MAC_CONF2(i32, i32) #1

declare dso_local i32 @SGMII_NET_IFACE_CTRL(i32, i32) #1

declare dso_local i32 @nlm_write_nae_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
