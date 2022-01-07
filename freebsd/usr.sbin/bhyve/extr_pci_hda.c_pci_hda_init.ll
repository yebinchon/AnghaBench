; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_hda.c_pci_hda_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_hda.c_pci_hda_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }
%struct.pci_devinst = type { %struct.hda_softc* }
%struct.hda_softc = type { %struct.pci_devinst* }

@PCIR_VENDOR = common dso_local global i32 0, align 4
@INTEL_VENDORID = common dso_local global i32 0, align 4
@PCIR_DEVICE = common dso_local global i32 0, align 4
@HDA_INTEL_82801G = common dso_local global i32 0, align 4
@PCIR_SUBCLASS = common dso_local global i32 0, align 4
@PCIS_MULTIMEDIA_HDA = common dso_local global i32 0, align 4
@PCIR_CLASS = common dso_local global i32 0, align 4
@PCIC_MULTIMEDIA = common dso_local global i32 0, align 4
@PCIR_HDCTL = common dso_local global i32 0, align 4
@PCIBAR_MEM32 = common dso_local global i32 0, align 4
@HDA_LAST_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmctx*, %struct.pci_devinst*, i8*)* @pci_hda_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_hda_init(%struct.vmctx* %0, %struct.pci_devinst* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmctx*, align 8
  %6 = alloca %struct.pci_devinst*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.hda_softc*, align 8
  store %struct.vmctx* %0, %struct.vmctx** %5, align 8
  store %struct.pci_devinst* %1, %struct.pci_devinst** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.hda_softc* null, %struct.hda_softc** %8, align 8
  %9 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %10 = icmp ne %struct.vmctx* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %14 = icmp ne %struct.pci_devinst* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %18 = load i32, i32* @PCIR_VENDOR, align 4
  %19 = load i32, i32* @INTEL_VENDORID, align 4
  %20 = call i32 @pci_set_cfgdata16(%struct.pci_devinst* %17, i32 %18, i32 %19)
  %21 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %22 = load i32, i32* @PCIR_DEVICE, align 4
  %23 = load i32, i32* @HDA_INTEL_82801G, align 4
  %24 = call i32 @pci_set_cfgdata16(%struct.pci_devinst* %21, i32 %22, i32 %23)
  %25 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %26 = load i32, i32* @PCIR_SUBCLASS, align 4
  %27 = load i32, i32* @PCIS_MULTIMEDIA_HDA, align 4
  %28 = call i32 @pci_set_cfgdata8(%struct.pci_devinst* %25, i32 %26, i32 %27)
  %29 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %30 = load i32, i32* @PCIR_CLASS, align 4
  %31 = load i32, i32* @PCIC_MULTIMEDIA, align 4
  %32 = call i32 @pci_set_cfgdata8(%struct.pci_devinst* %29, i32 %30, i32 %31)
  %33 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %34 = load i32, i32* @PCIR_HDCTL, align 4
  %35 = call i32 @pci_set_cfgdata8(%struct.pci_devinst* %33, i32 %34, i32 1)
  %36 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %37 = load i32, i32* @PCIBAR_MEM32, align 4
  %38 = load i32, i32* @HDA_LAST_OFFSET, align 4
  %39 = call i32 @pci_emul_alloc_bar(%struct.pci_devinst* %36, i32 0, i32 %37, i32 %38)
  %40 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %41 = call i32 @pci_lintr_request(%struct.pci_devinst* %40)
  %42 = load i8*, i8** %7, align 8
  %43 = call %struct.hda_softc* @hda_init(i8* %42)
  store %struct.hda_softc* %43, %struct.hda_softc** %8, align 8
  %44 = load %struct.hda_softc*, %struct.hda_softc** %8, align 8
  %45 = icmp ne %struct.hda_softc* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %54

47:                                               ; preds = %3
  %48 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %49 = load %struct.hda_softc*, %struct.hda_softc** %8, align 8
  %50 = getelementptr inbounds %struct.hda_softc, %struct.hda_softc* %49, i32 0, i32 0
  store %struct.pci_devinst* %48, %struct.pci_devinst** %50, align 8
  %51 = load %struct.hda_softc*, %struct.hda_softc** %8, align 8
  %52 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %53 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %52, i32 0, i32 0
  store %struct.hda_softc* %51, %struct.hda_softc** %53, align 8
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %47, %46
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pci_set_cfgdata16(%struct.pci_devinst*, i32, i32) #1

declare dso_local i32 @pci_set_cfgdata8(%struct.pci_devinst*, i32, i32) #1

declare dso_local i32 @pci_emul_alloc_bar(%struct.pci_devinst*, i32, i32, i32) #1

declare dso_local i32 @pci_lintr_request(%struct.pci_devinst*) #1

declare dso_local %struct.hda_softc* @hda_init(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
