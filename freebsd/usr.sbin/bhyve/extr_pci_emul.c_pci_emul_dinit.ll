; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_emul.c_pci_emul_dinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_emul.c_pci_emul_dinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }
%struct.pci_devinst = type { %struct.pci_emul_dsoftc* }
%struct.pci_emul_dsoftc = type { i32 }

@PCIR_DEVICE = common dso_local global i32 0, align 4
@PCIR_VENDOR = common dso_local global i32 0, align 4
@PCIR_CLASS = common dso_local global i32 0, align 4
@PCI_EMUL_MSI_MSGS = common dso_local global i32 0, align 4
@PCIBAR_IO = common dso_local global i32 0, align 4
@DIOSZ = common dso_local global i32 0, align 4
@PCIBAR_MEM32 = common dso_local global i32 0, align 4
@DMEMSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmctx*, %struct.pci_devinst*, i8*)* @pci_emul_dinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_emul_dinit(%struct.vmctx* %0, %struct.pci_devinst* %1, i8* %2) #0 {
  %4 = alloca %struct.vmctx*, align 8
  %5 = alloca %struct.pci_devinst*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_emul_dsoftc*, align 8
  store %struct.vmctx* %0, %struct.vmctx** %4, align 8
  store %struct.pci_devinst* %1, %struct.pci_devinst** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = call %struct.pci_emul_dsoftc* @calloc(i32 1, i32 4)
  store %struct.pci_emul_dsoftc* %9, %struct.pci_emul_dsoftc** %8, align 8
  %10 = load %struct.pci_emul_dsoftc*, %struct.pci_emul_dsoftc** %8, align 8
  %11 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %12 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %11, i32 0, i32 0
  store %struct.pci_emul_dsoftc* %10, %struct.pci_emul_dsoftc** %12, align 8
  %13 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %14 = load i32, i32* @PCIR_DEVICE, align 4
  %15 = call i32 @pci_set_cfgdata16(%struct.pci_devinst* %13, i32 %14, i32 1)
  %16 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %17 = load i32, i32* @PCIR_VENDOR, align 4
  %18 = call i32 @pci_set_cfgdata16(%struct.pci_devinst* %16, i32 %17, i32 4317)
  %19 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %20 = load i32, i32* @PCIR_CLASS, align 4
  %21 = call i32 @pci_set_cfgdata8(%struct.pci_devinst* %19, i32 %20, i32 2)
  %22 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %23 = load i32, i32* @PCI_EMUL_MSI_MSGS, align 4
  %24 = call i32 @pci_emul_add_msicap(%struct.pci_devinst* %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %30 = load i32, i32* @PCIBAR_IO, align 4
  %31 = load i32, i32* @DIOSZ, align 4
  %32 = call i32 @pci_emul_alloc_bar(%struct.pci_devinst* %29, i32 0, i32 %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %38 = load i32, i32* @PCIBAR_MEM32, align 4
  %39 = load i32, i32* @DMEMSZ, align 4
  %40 = call i32 @pci_emul_alloc_bar(%struct.pci_devinst* %37, i32 1, i32 %38, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %46 = load i32, i32* @PCIBAR_MEM32, align 4
  %47 = load i32, i32* @DMEMSZ, align 4
  %48 = call i32 @pci_emul_alloc_bar(%struct.pci_devinst* %45, i32 2, i32 %46, i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp eq i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  ret i32 0
}

declare dso_local %struct.pci_emul_dsoftc* @calloc(i32, i32) #1

declare dso_local i32 @pci_set_cfgdata16(%struct.pci_devinst*, i32, i32) #1

declare dso_local i32 @pci_set_cfgdata8(%struct.pci_devinst*, i32, i32) #1

declare dso_local i32 @pci_emul_add_msicap(%struct.pci_devinst*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pci_emul_alloc_bar(%struct.pci_devinst*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
