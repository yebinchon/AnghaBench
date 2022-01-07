; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmd/extr_vmd.c_vmd_release_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmd/extr_vmd.c_vmd_release_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }

@PCI_RES_BUS = common dso_local global i32 0, align 4
@PCI_DOMAINMAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, %struct.resource*)* @vmd_release_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmd_release_resource(i32 %0, i32 %1, i32 %2, i32 %3, %struct.resource* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.resource*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.resource* %4, %struct.resource** %11, align 8
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* @PCI_RES_BUS, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %5
  %16 = load i64, i64* @PCI_DOMAINMAX, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i64 @device_get_unit(i32 %17)
  %19 = sub nsw i64 %16, %18
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load %struct.resource*, %struct.resource** %11, align 8
  %23 = call i32 @pci_domain_release_bus(i64 %19, i32 %20, i32 %21, %struct.resource* %22)
  store i32 %23, i32* %6, align 4
  br label %31

24:                                               ; preds = %5
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.resource*, %struct.resource** %11, align 8
  %30 = call i32 @pcib_release_resource(i32 %25, i32 %26, i32 %27, i32 %28, %struct.resource* %29)
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %24, %15
  %32 = load i32, i32* %6, align 4
  ret i32 %32
}

declare dso_local i32 @pci_domain_release_bus(i64, i32, i32, %struct.resource*) #1

declare dso_local i64 @device_get_unit(i32) #1

declare dso_local i32 @pcib_release_resource(i32, i32, i32, i32, %struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
