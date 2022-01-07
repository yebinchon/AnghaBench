; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/ebus/extr_ebus.c_ebus_pci_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/ebus/extr_ebus.c_ebus_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PCIC_BRIDGE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"ebus\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"PCI-EBus2 bridge\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"PCI-EBus3 bridge\00", align 1
@BUS_PROBE_GENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ebus_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebus_pci_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i64 @pci_get_class(i32 %4)
  %6 = load i64, i64* @PCIC_BRIDGE, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %17, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @pci_get_vendor(i32 %9)
  %11 = icmp ne i32 %10, 4238
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @ofw_bus_get_name(i32 %13)
  %15 = call i64 @strcmp(i32 %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12, %8, %1
  %18 = load i32, i32* @ENXIO, align 4
  store i32 %18, i32* %2, align 4
  br label %38

19:                                               ; preds = %12
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @pci_get_device(i32 %20)
  %22 = icmp eq i32 %21, 4096
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @device_set_desc(i32 %24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %36

26:                                               ; preds = %19
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @pci_get_device(i32 %27)
  %29 = icmp eq i32 %28, 4352
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @device_set_desc(i32 %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %35

33:                                               ; preds = %26
  %34 = load i32, i32* @ENXIO, align 4
  store i32 %34, i32* %2, align 4
  br label %38

35:                                               ; preds = %30
  br label %36

36:                                               ; preds = %35, %23
  %37 = load i32, i32* @BUS_PROBE_GENERIC, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %36, %33, %17
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i64 @pci_get_class(i32) #1

declare dso_local i32 @pci_get_vendor(i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @ofw_bus_get_name(i32) #1

declare dso_local i32 @pci_get_device(i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
