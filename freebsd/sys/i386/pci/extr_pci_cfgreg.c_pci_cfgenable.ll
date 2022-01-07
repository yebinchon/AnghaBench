; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/pci/extr_pci_cfgreg.c_pci_cfgenable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/pci/extr_pci_cfgreg.c_pci_cfgenable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PCI_BUSMAX = common dso_local global i32 0, align 4
@devmax = common dso_local global i32 0, align 4
@PCI_FUNCMAX = common dso_local global i32 0, align 4
@PCI_REGMAX = common dso_local global i32 0, align 4
@cfgmech = common dso_local global i32 0, align 4
@CONF1_ADDR_PORT = common dso_local global i32 0, align 4
@CONF1_DATA_PORT = common dso_local global i32 0, align 4
@CONF2_ENABLE_PORT = common dso_local global i32 0, align 4
@CONF2_FORWARD_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32)* @pci_cfgenable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_cfgenable(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
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
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @PCI_BUSMAX, align 4
  %14 = icmp ule i32 %12, %13
  br i1 %14, label %15, label %75

15:                                               ; preds = %5
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @devmax, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %75

19:                                               ; preds = %15
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @PCI_FUNCMAX, align 4
  %22 = icmp ule i32 %20, %21
  br i1 %22, label %23, label %75

23:                                               ; preds = %19
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @PCI_REGMAX, align 4
  %26 = icmp ule i32 %24, %25
  br i1 %26, label %27, label %75

27:                                               ; preds = %23
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 3
  br i1 %29, label %30, label %75

30:                                               ; preds = %27
  %31 = load i32, i32* %10, align 4
  %32 = icmp ule i32 %31, 4
  br i1 %32, label %33, label %75

33:                                               ; preds = %30
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = sub nsw i32 %35, 1
  %37 = and i32 %34, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %75

39:                                               ; preds = %33
  %40 = load i32, i32* @cfgmech, align 4
  switch i32 %40, label %74 [
    i32 128, label %41
    i32 130, label %41
    i32 129, label %60
  ]

41:                                               ; preds = %39, %39
  %42 = load i32, i32* @CONF1_ADDR_PORT, align 4
  %43 = load i32, i32* %6, align 4
  %44 = shl i32 %43, 16
  %45 = or i32 -2147483648, %44
  %46 = load i32, i32* %7, align 4
  %47 = shl i32 %46, 11
  %48 = or i32 %45, %47
  %49 = load i32, i32* %8, align 4
  %50 = shl i32 %49, 8
  %51 = or i32 %48, %50
  %52 = load i32, i32* %9, align 4
  %53 = and i32 %52, -4
  %54 = or i32 %51, %53
  %55 = call i32 @outl(i32 %42, i32 %54)
  %56 = load i32, i32* @CONF1_DATA_PORT, align 4
  %57 = load i32, i32* %9, align 4
  %58 = and i32 %57, 3
  %59 = add nsw i32 %56, %58
  store i32 %59, i32* %11, align 4
  br label %74

60:                                               ; preds = %39
  %61 = load i32, i32* @CONF2_ENABLE_PORT, align 4
  %62 = load i32, i32* %8, align 4
  %63 = shl i32 %62, 1
  %64 = or i32 240, %63
  %65 = call i32 @outb(i32 %61, i32 %64)
  %66 = load i32, i32* @CONF2_FORWARD_PORT, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @outb(i32 %66, i32 %67)
  %69 = load i32, i32* %7, align 4
  %70 = shl i32 %69, 8
  %71 = or i32 49152, %70
  %72 = load i32, i32* %9, align 4
  %73 = or i32 %71, %72
  store i32 %73, i32* %11, align 4
  br label %74

74:                                               ; preds = %39, %60, %41
  br label %75

75:                                               ; preds = %74, %33, %30, %27, %23, %19, %15, %5
  %76 = load i32, i32* %11, align 4
  ret i32 %76
}

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @outb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
