; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_host_generic.c_generic_pcie_deactivate_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_host_generic.c_generic_pcie_deactivate_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, %struct.resource*)* @generic_pcie_deactivate_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generic_pcie_deactivate_resource(i32 %0, i32 %1, i32 %2, i32 %3, %struct.resource* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.resource*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.resource* %4, %struct.resource** %11, align 8
  %13 = load %struct.resource*, %struct.resource** %11, align 8
  %14 = call i32 @rman_deactivate_resource(%struct.resource* %13)
  store i32 %14, i32* %12, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %5
  %17 = load i32, i32* %12, align 4
  store i32 %17, i32* %6, align 4
  br label %31

18:                                               ; preds = %5
  %19 = load i32, i32* %9, align 4
  switch i32 %19, label %28 [
    i32 130, label %20
    i32 128, label %20
    i32 129, label %20
  ]

20:                                               ; preds = %18, %18, %18
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @device_get_parent(i32 %21)
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.resource*, %struct.resource** %11, align 8
  %27 = call i32 @BUS_DEACTIVATE_RESOURCE(i32 %22, i32 %23, i32 %24, i32 %25, %struct.resource* %26)
  store i32 %27, i32* %12, align 4
  br label %29

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %28, %20
  %30 = load i32, i32* %12, align 4
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %29, %16
  %32 = load i32, i32* %6, align 4
  ret i32 %32
}

declare dso_local i32 @rman_deactivate_resource(%struct.resource*) #1

declare dso_local i32 @BUS_DEACTIVATE_RESOURCE(i32, i32, i32, i32, %struct.resource*) #1

declare dso_local i32 @device_get_parent(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
