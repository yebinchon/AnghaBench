; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/extr_xlp_pci.c_xlp_pcib_write_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/extr_xlp_pci.c_xlp_pcib_write_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XLP_PCI_DEVSCRATCH_REG0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32, i32)* @xlp_pcib_write_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlp_pcib_write_config(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
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
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %18 = load i32, i32* %12, align 4
  %19 = sext i32 %18 to i64
  %20 = udiv i64 %19, 4
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %17, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @XLP_HDR_OFFSET(i32 0, i32 %22, i32 %23, i32 %24)
  %26 = call i32 @nlm_pcicfg_base(i32 %25)
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %14, align 4
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %29, label %34

29:                                               ; preds = %7
  %30 = load i32, i32* %12, align 4
  %31 = and i32 %30, 1
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %103

34:                                               ; preds = %29, %7
  %35 = load i32, i32* %14, align 4
  %36 = icmp eq i32 %35, 4
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i32, i32* %12, align 4
  %39 = and i32 %38, 3
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %103

42:                                               ; preds = %37, %34
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %14, align 4
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %63

46:                                               ; preds = %43
  %47 = load i32, i32* %15, align 4
  %48 = load i32, i32* %17, align 4
  %49 = call i32 @nlm_read_pci_reg(i32 %47, i32 %48)
  store i32 %49, i32* %16, align 4
  %50 = load i32, i32* %16, align 4
  %51 = load i32, i32* %12, align 4
  %52 = and i32 %51, 3
  %53 = shl i32 %52, 3
  %54 = shl i32 255, %53
  %55 = xor i32 %54, -1
  %56 = and i32 %50, %55
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %12, align 4
  %59 = and i32 %58, 3
  %60 = shl i32 %59, 3
  %61 = shl i32 %57, %60
  %62 = or i32 %56, %61
  store i32 %62, i32* %16, align 4
  br label %86

63:                                               ; preds = %43
  %64 = load i32, i32* %14, align 4
  %65 = icmp eq i32 %64, 2
  br i1 %65, label %66, label %83

66:                                               ; preds = %63
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* %17, align 4
  %69 = call i32 @nlm_read_pci_reg(i32 %67, i32 %68)
  store i32 %69, i32* %16, align 4
  %70 = load i32, i32* %16, align 4
  %71 = load i32, i32* %12, align 4
  %72 = and i32 %71, 3
  %73 = shl i32 %72, 3
  %74 = shl i32 65535, %73
  %75 = xor i32 %74, -1
  %76 = and i32 %70, %75
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %12, align 4
  %79 = and i32 %78, 3
  %80 = shl i32 %79, 3
  %81 = shl i32 %77, %80
  %82 = or i32 %76, %81
  store i32 %82, i32* %16, align 4
  br label %85

83:                                               ; preds = %63
  %84 = load i32, i32* %13, align 4
  store i32 %84, i32* %16, align 4
  br label %85

85:                                               ; preds = %83, %66
  br label %86

86:                                               ; preds = %85, %46
  %87 = load i32, i32* %9, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %86
  %90 = load i32, i32* %17, align 4
  %91 = icmp eq i32 %90, 15
  br i1 %91, label %92, label %98

92:                                               ; preds = %89
  %93 = load i32, i32* %10, align 4
  %94 = srem i32 %93, 8
  %95 = icmp sgt i32 %94, 1
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = load i32, i32* @XLP_PCI_DEVSCRATCH_REG0, align 4
  store i32 %97, i32* %17, align 4
  br label %98

98:                                               ; preds = %96, %92, %89, %86
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* %17, align 4
  %101 = load i32, i32* %16, align 4
  %102 = call i32 @nlm_write_pci_reg(i32 %99, i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %98, %41, %33
  ret void
}

declare dso_local i32 @nlm_pcicfg_base(i32) #1

declare dso_local i32 @XLP_HDR_OFFSET(i32, i32, i32, i32) #1

declare dso_local i32 @nlm_read_pci_reg(i32, i32) #1

declare dso_local i32 @nlm_write_pci_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
