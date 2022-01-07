; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_hostb_pci.c_pci_hostb_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_hostb_pci.c_pci_hostb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENXIO = common dso_local global i32 0, align 4
@PCIC_BRIDGE = common dso_local global i64 0, align 8
@PCIS_BRIDGE_HOST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"Host to PCI bridge\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pci_hostb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_hostb_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @pci_get_devid(i32 %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %10 [
    i32 810553606, label %8
  ]

8:                                                ; preds = %1
  %9 = load i32, i32* @ENXIO, align 4
  store i32 %9, i32* %2, align 4
  br label %28

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %10
  %12 = load i32, i32* %3, align 4
  %13 = call i64 @pci_get_class(i32 %12)
  %14 = load i64, i64* @PCIC_BRIDGE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %11
  %17 = load i32, i32* %3, align 4
  %18 = call i64 @pci_get_subclass(i32 %17)
  %19 = load i64, i64* @PCIS_BRIDGE_HOST, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @device_set_desc(i32 %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @device_quiet(i32 %24)
  store i32 -10000, i32* %2, align 4
  br label %28

26:                                               ; preds = %16, %11
  %27 = load i32, i32* @ENXIO, align 4
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %26, %21, %8
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @pci_get_devid(i32) #1

declare dso_local i64 @pci_get_class(i32) #1

declare dso_local i64 @pci_get_subclass(i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

declare dso_local i32 @device_quiet(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
