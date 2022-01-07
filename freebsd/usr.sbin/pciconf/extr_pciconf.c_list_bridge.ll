; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pciconf/extr_pciconf.c_list_bridge.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pciconf/extr_pciconf.c_list_bridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_conf = type { i32 }

@PCIM_HDRTYPE = common dso_local global i32 0, align 4
@PCIR_SECBUS_1 = common dso_local global i32 0, align 4
@PCIR_SUBBUS_1 = common dso_local global i32 0, align 4
@PCIR_SECBUS_2 = common dso_local global i32 0, align 4
@PCIR_SUBBUS_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.pci_conf*)* @list_bridge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_bridge(i32 %0, %struct.pci_conf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_conf*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.pci_conf* %1, %struct.pci_conf** %4, align 8
  %5 = load %struct.pci_conf*, %struct.pci_conf** %4, align 8
  %6 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @PCIM_HDRTYPE, align 4
  %9 = and i32 %7, %8
  switch i32 %9, label %28 [
    i32 129, label %10
    i32 128, label %19
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.pci_conf*, %struct.pci_conf** %4, align 8
  %13 = load i32, i32* @PCIR_SECBUS_1, align 4
  %14 = load i32, i32* @PCIR_SUBBUS_1, align 4
  %15 = call i32 @print_bus_range(i32 %11, %struct.pci_conf* %12, i32 %13, i32 %14)
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.pci_conf*, %struct.pci_conf** %4, align 8
  %18 = call i32 @print_bridge_windows(i32 %16, %struct.pci_conf* %17)
  br label %28

19:                                               ; preds = %2
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.pci_conf*, %struct.pci_conf** %4, align 8
  %22 = load i32, i32* @PCIR_SECBUS_2, align 4
  %23 = load i32, i32* @PCIR_SUBBUS_2, align 4
  %24 = call i32 @print_bus_range(i32 %20, %struct.pci_conf* %21, i32 %22, i32 %23)
  %25 = load i32, i32* %3, align 4
  %26 = load %struct.pci_conf*, %struct.pci_conf** %4, align 8
  %27 = call i32 @print_cardbus_windows(i32 %25, %struct.pci_conf* %26)
  br label %28

28:                                               ; preds = %2, %19, %10
  ret void
}

declare dso_local i32 @print_bus_range(i32, %struct.pci_conf*, i32, i32) #1

declare dso_local i32 @print_bridge_windows(i32, %struct.pci_conf*) #1

declare dso_local i32 @print_cardbus_windows(i32, %struct.pci_conf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
