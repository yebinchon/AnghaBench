; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/le/extr_if_le_pci.c_le_pci_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/le/extr_if_le_pci.c_le_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AMD_VENDOR = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"AMD PCnet-PCI\00", align 1
@BUS_PROBE_LOW_PRIORITY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"AMD PCnet-Home\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @le_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @le_pci_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i64 @pci_get_vendor(i32 %4)
  %6 = load i64, i64* @AMD_VENDOR, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @ENXIO, align 4
  store i32 %9, i32* %2, align 4
  br label %23

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @pci_get_device(i32 %11)
  switch i32 %12, label %21 [
    i32 128, label %13
    i32 129, label %17
  ]

13:                                               ; preds = %10
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @device_set_desc(i32 %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @BUS_PROBE_LOW_PRIORITY, align 4
  store i32 %16, i32* %2, align 4
  br label %23

17:                                               ; preds = %10
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @device_set_desc(i32 %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* @BUS_PROBE_LOW_PRIORITY, align 4
  store i32 %20, i32* %2, align 4
  br label %23

21:                                               ; preds = %10
  %22 = load i32, i32* @ENXIO, align 4
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %21, %17, %13, %8
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i64 @pci_get_vendor(i32) #1

declare dso_local i32 @pci_get_device(i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
