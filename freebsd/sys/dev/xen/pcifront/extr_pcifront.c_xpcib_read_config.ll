; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/pcifront/extr_pcifront.c_xpcib_read_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/pcifront/extr_pcifront.c_xpcib_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpcib_softc = type { i32, i32, i32 }
%struct.xen_pci_op = type { i32, i32, i32, i32, i32, i32, i32 }

@XEN_PCI_OP_conf_read = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"read config (b=%d, s=%d, f=%d, reg=%d, len=%d, val=%x, err=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32)* @xpcib_read_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xpcib_read_config(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.xpcib_softc*, align 8
  %14 = alloca %struct.xen_pci_op, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @device_get_softc(i32 %16)
  %18 = inttoptr i64 %17 to %struct.xpcib_softc*
  store %struct.xpcib_softc* %18, %struct.xpcib_softc** %13, align 8
  %19 = getelementptr inbounds %struct.xen_pci_op, %struct.xen_pci_op* %14, i32 0, i32 0
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds %struct.xen_pci_op, %struct.xen_pci_op* %14, i32 0, i32 1
  %22 = load i32, i32* %12, align 4
  store i32 %22, i32* %21, align 4
  %23 = getelementptr inbounds %struct.xen_pci_op, %struct.xen_pci_op* %14, i32 0, i32 2
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds %struct.xen_pci_op, %struct.xen_pci_op* %14, i32 0, i32 3
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @PCI_DEVFN(i32 %25, i32 %26)
  store i32 %27, i32* %24, align 4
  %28 = getelementptr inbounds %struct.xen_pci_op, %struct.xen_pci_op* %14, i32 0, i32 4
  %29 = load %struct.xpcib_softc*, %struct.xpcib_softc** %13, align 8
  %30 = getelementptr inbounds %struct.xpcib_softc, %struct.xpcib_softc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %28, align 4
  %32 = getelementptr inbounds %struct.xen_pci_op, %struct.xen_pci_op* %14, i32 0, i32 5
  %33 = load %struct.xpcib_softc*, %struct.xpcib_softc** %13, align 8
  %34 = getelementptr inbounds %struct.xpcib_softc, %struct.xpcib_softc* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %32, align 4
  %36 = getelementptr inbounds %struct.xen_pci_op, %struct.xen_pci_op* %14, i32 0, i32 6
  %37 = load i32, i32* @XEN_PCI_OP_conf_read, align 4
  store i32 %37, i32* %36, align 4
  %38 = load %struct.xpcib_softc*, %struct.xpcib_softc** %13, align 8
  %39 = getelementptr inbounds %struct.xpcib_softc, %struct.xpcib_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @do_pci_op(i32 %40, %struct.xen_pci_op* %14)
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %12, align 4
  %47 = getelementptr inbounds %struct.xen_pci_op, %struct.xen_pci_op* %14, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %15, align 4
  %50 = call i32 @DPRINTF(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43, i32 %44, i32 %45, i32 %46, i32 %48, i32 %49)
  %51 = load i32, i32* %15, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %6
  %54 = getelementptr inbounds %struct.xen_pci_op, %struct.xen_pci_op* %14, i32 0, i32 2
  store i32 -1, i32* %54, align 4
  br label %55

55:                                               ; preds = %53, %6
  %56 = getelementptr inbounds %struct.xen_pci_op, %struct.xen_pci_op* %14, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  ret i32 %57
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @PCI_DEVFN(i32, i32) #1

declare dso_local i32 @do_pci_op(i32, %struct.xen_pci_op*) #1

declare dso_local i32 @DPRINTF(i8*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
