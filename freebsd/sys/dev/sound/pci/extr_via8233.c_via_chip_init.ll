; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_via8233.c_via_chip_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_via8233.c_via_chip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VIA_PCI_ACLINK_STAT = common dso_local global i32 0, align 4
@VIA_PCI_ACLINK_C00_READY = common dso_local global i32 0, align 4
@VIA_PCI_ACLINK_CTRL = common dso_local global i32 0, align 4
@VIA_PCI_ACLINK_EN = common dso_local global i32 0, align 4
@VIA_PCI_ACLINK_NRST = common dso_local global i32 0, align 4
@VIA_PCI_ACLINK_SYNC = common dso_local global i32 0, align 4
@VIA_PCI_ACLINK_DESIRED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"primary codec not ready (cnt = 0x%02x)\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @via_chip_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @via_chip_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @VIA_PCI_ACLINK_STAT, align 4
  %8 = call i32 @pci_read_config(i32 %6, i32 %7, i32 1)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @VIA_PCI_ACLINK_C00_READY, align 4
  %11 = and i32 %9, %10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @VIA_PCI_ACLINK_CTRL, align 4
  %16 = load i32, i32* @VIA_PCI_ACLINK_EN, align 4
  %17 = call i32 @pci_write_config(i32 %14, i32 %15, i32 %16, i32 1)
  %18 = call i32 @DELAY(i32 100)
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @VIA_PCI_ACLINK_CTRL, align 4
  %21 = load i32, i32* @VIA_PCI_ACLINK_EN, align 4
  %22 = load i32, i32* @VIA_PCI_ACLINK_NRST, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @pci_write_config(i32 %19, i32 %20, i32 %23, i32 1)
  %25 = call i32 @DELAY(i32 5)
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @VIA_PCI_ACLINK_CTRL, align 4
  %28 = load i32, i32* @VIA_PCI_ACLINK_EN, align 4
  %29 = call i32 @pci_write_config(i32 %26, i32 %27, i32 %28, i32 1)
  br label %48

30:                                               ; preds = %1
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @VIA_PCI_ACLINK_CTRL, align 4
  %33 = load i32, i32* @VIA_PCI_ACLINK_EN, align 4
  %34 = call i32 @pci_write_config(i32 %31, i32 %32, i32 %33, i32 1)
  %35 = call i32 @DELAY(i32 100)
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @VIA_PCI_ACLINK_CTRL, align 4
  %38 = load i32, i32* @VIA_PCI_ACLINK_EN, align 4
  %39 = load i32, i32* @VIA_PCI_ACLINK_SYNC, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @pci_write_config(i32 %36, i32 %37, i32 %40, i32 1)
  %42 = call i32 @DELAY(i32 5)
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @VIA_PCI_ACLINK_CTRL, align 4
  %45 = load i32, i32* @VIA_PCI_ACLINK_EN, align 4
  %46 = call i32 @pci_write_config(i32 %43, i32 %44, i32 %45, i32 1)
  %47 = call i32 @DELAY(i32 5)
  br label %48

48:                                               ; preds = %30, %13
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @VIA_PCI_ACLINK_CTRL, align 4
  %51 = load i32, i32* @VIA_PCI_ACLINK_DESIRED, align 4
  %52 = call i32 @pci_write_config(i32 %49, i32 %50, i32 %51, i32 1)
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %67, %48
  %54 = load i32, i32* %5, align 4
  %55 = icmp slt i32 %54, 2000
  br i1 %55, label %56, label %70

56:                                               ; preds = %53
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @VIA_PCI_ACLINK_STAT, align 4
  %59 = call i32 @pci_read_config(i32 %57, i32 %58, i32 1)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @VIA_PCI_ACLINK_C00_READY, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  store i32 0, i32* %2, align 4
  br label %75

65:                                               ; preds = %56
  %66 = call i32 @DELAY(i32 5000)
  br label %67

67:                                               ; preds = %65
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %53

70:                                               ; preds = %53
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @device_printf(i32 %71, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @ENXIO, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %70, %64
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
