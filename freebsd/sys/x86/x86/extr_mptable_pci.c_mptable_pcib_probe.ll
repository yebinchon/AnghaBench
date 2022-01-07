; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mptable_pci.c_mptable_pcib_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mptable_pci.c_mptable_pcib_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PCIC_BRIDGE = common dso_local global i64 0, align 8
@PCIS_BRIDGE_PCI = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@PCIR_SECBUS_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"MPTable PCI-PCI bridge\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mptable_pcib_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mptable_pcib_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i64 @pci_get_class(i32 %5)
  %7 = load i64, i64* @PCIC_BRIDGE, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = call i64 @pci_get_subclass(i32 %10)
  %12 = load i64, i64* @PCIS_BRIDGE_PCI, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %9, %1
  %15 = load i32, i32* @ENXIO, align 4
  store i32 %15, i32* %2, align 4
  br label %33

16:                                               ; preds = %9
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @PCIR_SECBUS_1, align 4
  %19 = call i32 @pci_read_config(i32 %17, i32 %18, i32 1)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* @ENXIO, align 4
  store i32 %23, i32* %2, align 4
  br label %33

24:                                               ; preds = %16
  %25 = load i32, i32* %4, align 4
  %26 = call i64 @mptable_pci_probe_table(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @ENXIO, align 4
  store i32 %29, i32* %2, align 4
  br label %33

30:                                               ; preds = %24
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @device_set_desc(i32 %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 -1000, i32* %2, align 4
  br label %33

33:                                               ; preds = %30, %28, %22, %14
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i64 @pci_get_class(i32) #1

declare dso_local i64 @pci_get_subclass(i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i64 @mptable_pci_probe_table(i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
