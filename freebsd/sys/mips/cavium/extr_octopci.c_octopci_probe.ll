; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_octopci.c_octopci_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_octopci.c_octopci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@OCTEON_FEATURE_PCIE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Cavium Octeon PCIe bridge\00", align 1
@CVMX_BOOTINFO_CFG_FLAG_PCI_HOST = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Cavium Octeon PCI bridge\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @octopci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octopci_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* @OCTEON_FEATURE_PCIE, align 4
  %5 = call i64 @octeon_has_feature(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @device_set_desc(i32 %8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %28

10:                                               ; preds = %1
  %11 = call %struct.TYPE_2__* (...) @cvmx_sysinfo_get()
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @CVMX_BOOTINFO_CFG_FLAG_PCI_HOST, align 4
  %15 = and i32 %13, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = load i32, i32* @ENXIO, align 4
  store i32 %18, i32* %2, align 4
  br label %28

19:                                               ; preds = %10
  %20 = load i32, i32* %3, align 4
  %21 = call i64 @device_get_unit(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @ENXIO, align 4
  store i32 %24, i32* %2, align 4
  br label %28

25:                                               ; preds = %19
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @device_set_desc(i32 %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %25, %23, %17, %7
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i64 @octeon_has_feature(i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

declare dso_local %struct.TYPE_2__* @cvmx_sysinfo_get(...) #1

declare dso_local i64 @device_get_unit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
