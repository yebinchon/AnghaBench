; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pciconf/extr_pciconf.c_print_cardbus_mem_window.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pciconf/extr_pciconf.c_print_cardbus_mem_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_conf = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"Prefetchable Memory\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.pci_conf*, i32, i32, i32)* @print_cardbus_mem_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_cardbus_mem_window(i32 %0, %struct.pci_conf* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.pci_conf* %1, %struct.pci_conf** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* %10, align 4
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.pci_conf*, %struct.pci_conf** %7, align 8
  %18 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %17, i32 0, i32 0
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @read_config(i32 %16, i32* %18, i32 %19, i32 4)
  %21 = call i32 @PCI_CBBMEMBASE(i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.pci_conf*, %struct.pci_conf** %7, align 8
  %24 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %23, i32 0, i32 0
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @read_config(i32 %22, i32* %24, i32 %25, i32 4)
  %27 = call i32 @PCI_CBBMEMLIMIT(i32 %26)
  %28 = call i32 @print_window(i32 %11, i8* %15, i32 32, i32 %21, i32 %27)
  ret void
}

declare dso_local i32 @print_window(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @PCI_CBBMEMBASE(i32) #1

declare dso_local i32 @read_config(i32, i32*, i32, i32) #1

declare dso_local i32 @PCI_CBBMEMLIMIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
