; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/extr_xlp_pci.c_xlp_pcib_read_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/extr_xlp_pci.c_xlp_pcib_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XLP_PCI_DEVSCRATCH_REG0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32)* @xlp_pcib_read_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlp_pcib_read_config(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
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
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %17 = load i32, i32* %12, align 4
  %18 = sext i32 %17 to i64
  %19 = udiv i64 %18, 4
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %16, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @XLP_HDR_OFFSET(i32 0, i32 %21, i32 %22, i32 %23)
  %25 = call i32 @nlm_pcicfg_base(i32 %24)
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %33

28:                                               ; preds = %6
  %29 = load i32, i32* %12, align 4
  %30 = and i32 %29, 1
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 -1, i32* %7, align 4
  br label %79

33:                                               ; preds = %28, %6
  %34 = load i32, i32* %13, align 4
  %35 = icmp eq i32 %34, 4
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load i32, i32* %12, align 4
  %38 = and i32 %37, 3
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 -1, i32* %7, align 4
  br label %79

41:                                               ; preds = %36, %33
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %9, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %42
  %46 = load i32, i32* %16, align 4
  %47 = icmp eq i32 %46, 15
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load i32, i32* %10, align 4
  %50 = srem i32 %49, 8
  %51 = icmp sgt i32 %50, 1
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* @XLP_PCI_DEVSCRATCH_REG0, align 4
  store i32 %53, i32* %16, align 4
  br label %54

54:                                               ; preds = %52, %48, %45, %42
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* %16, align 4
  %57 = call i32 @nlm_read_pci_reg(i32 %55, i32 %56)
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %67

60:                                               ; preds = %54
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %12, align 4
  %63 = and i32 %62, 3
  %64 = shl i32 %63, 3
  %65 = ashr i32 %61, %64
  %66 = and i32 %65, 255
  store i32 %66, i32* %7, align 4
  br label %79

67:                                               ; preds = %54
  %68 = load i32, i32* %13, align 4
  %69 = icmp eq i32 %68, 2
  br i1 %69, label %70, label %77

70:                                               ; preds = %67
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* %12, align 4
  %73 = and i32 %72, 3
  %74 = shl i32 %73, 3
  %75 = ashr i32 %71, %74
  %76 = and i32 %75, 65535
  store i32 %76, i32* %7, align 4
  br label %79

77:                                               ; preds = %67
  %78 = load i32, i32* %14, align 4
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %77, %70, %60, %40, %32
  %80 = load i32, i32* %7, align 4
  ret i32 %80
}

declare dso_local i32 @nlm_pcicfg_base(i32) #1

declare dso_local i32 @XLP_HDR_OFFSET(i32, i32, i32, i32) #1

declare dso_local i32 @nlm_read_pci_reg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
