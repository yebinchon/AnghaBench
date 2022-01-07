; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_chipid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_chipid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BGE_PCI_MISC_CTL = common dso_local global i32 0, align 4
@BGE_PCIMISCCTL_ASICREV_SHIFT = common dso_local global i32 0, align 4
@BGE_ASICREV_USE_PRODID_REG = common dso_local global i64 0, align 8
@BGE_CHIPID_BCM5720_A0 = common dso_local global i32 0, align 4
@BGE_PCI_GEN2_PRODID_ASICREV = common dso_local global i32 0, align 4
@BGE_PCI_GEN15_PRODID_ASICREV = common dso_local global i32 0, align 4
@BGE_PCI_PRODID_ASICREV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bge_chipid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bge_chipid(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @BGE_PCI_MISC_CTL, align 4
  %6 = call i32 @pci_read_config(i32 %4, i32 %5, i32 4)
  %7 = load i32, i32* @BGE_PCIMISCCTL_ASICREV_SHIFT, align 4
  %8 = ashr i32 %6, %7
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @BGE_ASICREV(i32 %9)
  %11 = load i64, i64* @BGE_ASICREV_USE_PRODID_REG, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %31

13:                                               ; preds = %1
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @pci_get_device(i32 %14)
  switch i32 %15, label %26 [
    i32 147, label %16
    i32 148, label %18
    i32 146, label %18
    i32 145, label %18
    i32 144, label %18
    i32 143, label %18
    i32 142, label %18
    i32 141, label %18
    i32 138, label %18
    i32 135, label %18
    i32 130, label %18
    i32 140, label %22
    i32 139, label %22
    i32 137, label %22
    i32 136, label %22
    i32 134, label %22
    i32 133, label %22
    i32 132, label %22
    i32 131, label %22
    i32 129, label %22
    i32 128, label %22
  ]

16:                                               ; preds = %13
  %17 = load i32, i32* @BGE_CHIPID_BCM5720_A0, align 4
  store i32 %17, i32* %3, align 4
  br label %30

18:                                               ; preds = %13, %13, %13, %13, %13, %13, %13, %13, %13, %13
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @BGE_PCI_GEN2_PRODID_ASICREV, align 4
  %21 = call i32 @pci_read_config(i32 %19, i32 %20, i32 4)
  store i32 %21, i32* %3, align 4
  br label %30

22:                                               ; preds = %13, %13, %13, %13, %13, %13, %13, %13, %13, %13
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* @BGE_PCI_GEN15_PRODID_ASICREV, align 4
  %25 = call i32 @pci_read_config(i32 %23, i32 %24, i32 4)
  store i32 %25, i32* %3, align 4
  br label %30

26:                                               ; preds = %13
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @BGE_PCI_PRODID_ASICREV, align 4
  %29 = call i32 @pci_read_config(i32 %27, i32 %28, i32 4)
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %26, %22, %18, %16
  br label %31

31:                                               ; preds = %30, %1
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i64 @BGE_ASICREV(i32) #1

declare dso_local i32 @pci_get_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
