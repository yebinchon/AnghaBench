; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pci/extr_bhnd_pci.c_bhnd_pci_get_resource_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pci/extr_bhnd_pci.c_bhnd_pci_get_resource_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource_list = type { i32 }
%struct.bhnd_pci_devinfo = type { %struct.resource_list }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resource_list* (i64, i64)* @bhnd_pci_get_resource_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resource_list* @bhnd_pci_get_resource_list(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.resource_list*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.bhnd_pci_devinfo*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = call i64 @device_get_parent(i64 %7)
  %9 = load i64, i64* %4, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store %struct.resource_list* null, %struct.resource_list** %3, align 8
  br label %17

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  %14 = call %struct.bhnd_pci_devinfo* @device_get_ivars(i64 %13)
  store %struct.bhnd_pci_devinfo* %14, %struct.bhnd_pci_devinfo** %6, align 8
  %15 = load %struct.bhnd_pci_devinfo*, %struct.bhnd_pci_devinfo** %6, align 8
  %16 = getelementptr inbounds %struct.bhnd_pci_devinfo, %struct.bhnd_pci_devinfo* %15, i32 0, i32 0
  store %struct.resource_list* %16, %struct.resource_list** %3, align 8
  br label %17

17:                                               ; preds = %12, %11
  %18 = load %struct.resource_list*, %struct.resource_list** %3, align 8
  ret %struct.resource_list* %18
}

declare dso_local i64 @device_get_parent(i64) #1

declare dso_local %struct.bhnd_pci_devinfo* @device_get_ivars(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
