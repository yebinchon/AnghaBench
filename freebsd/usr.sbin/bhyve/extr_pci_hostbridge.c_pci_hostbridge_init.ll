; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_hostbridge.c_pci_hostbridge_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_hostbridge.c_pci_hostbridge_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }
%struct.pci_devinst = type { i32 }

@PCIR_VENDOR = common dso_local global i32 0, align 4
@PCIR_DEVICE = common dso_local global i32 0, align 4
@PCIR_HDRTYPE = common dso_local global i32 0, align 4
@PCIM_HDRTYPE_NORMAL = common dso_local global i32 0, align 4
@PCIR_CLASS = common dso_local global i32 0, align 4
@PCIC_BRIDGE = common dso_local global i32 0, align 4
@PCIR_SUBCLASS = common dso_local global i32 0, align 4
@PCIS_BRIDGE_HOST = common dso_local global i32 0, align 4
@PCIEM_TYPE_ROOT_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmctx*, %struct.pci_devinst*, i8*)* @pci_hostbridge_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_hostbridge_init(%struct.vmctx* %0, %struct.pci_devinst* %1, i8* %2) #0 {
  %4 = alloca %struct.vmctx*, align 8
  %5 = alloca %struct.pci_devinst*, align 8
  %6 = alloca i8*, align 8
  store %struct.vmctx* %0, %struct.vmctx** %4, align 8
  store %struct.pci_devinst* %1, %struct.pci_devinst** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %8 = load i32, i32* @PCIR_VENDOR, align 4
  %9 = call i32 @pci_set_cfgdata16(%struct.pci_devinst* %7, i32 %8, i32 4725)
  %10 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %11 = load i32, i32* @PCIR_DEVICE, align 4
  %12 = call i32 @pci_set_cfgdata16(%struct.pci_devinst* %10, i32 %11, i32 4725)
  %13 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %14 = load i32, i32* @PCIR_HDRTYPE, align 4
  %15 = load i32, i32* @PCIM_HDRTYPE_NORMAL, align 4
  %16 = call i32 @pci_set_cfgdata8(%struct.pci_devinst* %13, i32 %14, i32 %15)
  %17 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %18 = load i32, i32* @PCIR_CLASS, align 4
  %19 = load i32, i32* @PCIC_BRIDGE, align 4
  %20 = call i32 @pci_set_cfgdata8(%struct.pci_devinst* %17, i32 %18, i32 %19)
  %21 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %22 = load i32, i32* @PCIR_SUBCLASS, align 4
  %23 = load i32, i32* @PCIS_BRIDGE_HOST, align 4
  %24 = call i32 @pci_set_cfgdata8(%struct.pci_devinst* %21, i32 %22, i32 %23)
  %25 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %26 = load i32, i32* @PCIEM_TYPE_ROOT_PORT, align 4
  %27 = call i32 @pci_emul_add_pciecap(%struct.pci_devinst* %25, i32 %26)
  ret i32 0
}

declare dso_local i32 @pci_set_cfgdata16(%struct.pci_devinst*, i32, i32) #1

declare dso_local i32 @pci_set_cfgdata8(%struct.pci_devinst*, i32, i32) #1

declare dso_local i32 @pci_emul_add_pciecap(%struct.pci_devinst*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
