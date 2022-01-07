; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_schizo.c_schizo_setup_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_schizo.c_schizo_setup_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.schizo_softc = type { i64, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"pci-req-removal\00", align 1
@STX_PCI_CTRL = common dso_local global i32 0, align 4
@STX_PCI_CTRL_ARB_PARK = common dso_local global i32 0, align 4
@SCHIZO_MODE_XMS = common dso_local global i64 0, align 8
@SCHIZO_FLAGS_XMODE = common dso_local global i32 0, align 4
@PCIR_HDRTYPE = common dso_local global i64 0, align 8
@PCIM_HDRTYPE = common dso_local global i32 0, align 4
@PCIM_HDRTYPE_BRIDGE = common dso_local global i32 0, align 4
@PCIY_PCIX = common dso_local global i32 0, align 4
@PCIXR_COMMAND = common dso_local global i64 0, align 8
@XMS_PCI_X_DIAG_BUGCNTL_SHIFT = common dso_local global i32 0, align 4
@XMS_PCI_X_DIAG = common dso_local global i32 0, align 4
@XMS_PCI_X_DIAG_BUGCNTL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @schizo_setup_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @schizo_setup_device(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.schizo_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.schizo_softc* @device_get_softc(i32 %8)
  store %struct.schizo_softc* %9, %struct.schizo_softc** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @ofw_bus_get_node(i32 %10)
  %12 = call i64 @OF_getproplen(i32 %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %13 = icmp sge i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load %struct.schizo_softc*, %struct.schizo_softc** %5, align 8
  %16 = load i32, i32* @STX_PCI_CTRL, align 4
  %17 = load %struct.schizo_softc*, %struct.schizo_softc** %5, align 8
  %18 = load i32, i32* @STX_PCI_CTRL, align 4
  %19 = call i32 @SCHIZO_PCI_READ_8(%struct.schizo_softc* %17, i32 %18)
  %20 = load i32, i32* @STX_PCI_CTRL_ARB_PARK, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %19, %21
  %23 = call i32 @SCHIZO_PCI_SET(%struct.schizo_softc* %15, i32 %16, i32 %22)
  br label %24

24:                                               ; preds = %14, %2
  %25 = load %struct.schizo_softc*, %struct.schizo_softc** %5, align 8
  %26 = getelementptr inbounds %struct.schizo_softc, %struct.schizo_softc* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SCHIZO_MODE_XMS, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %96

30:                                               ; preds = %24
  %31 = load %struct.schizo_softc*, %struct.schizo_softc** %5, align 8
  %32 = getelementptr inbounds %struct.schizo_softc, %struct.schizo_softc* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @SCHIZO_FLAGS_XMODE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %64

37:                                               ; preds = %30
  %38 = load i32, i32* %4, align 4
  %39 = load i64, i64* @PCIR_HDRTYPE, align 8
  %40 = call i32 @pci_read_config(i32 %38, i64 %39, i32 1)
  %41 = load i32, i32* @PCIM_HDRTYPE, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* @PCIM_HDRTYPE_BRIDGE, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %64

45:                                               ; preds = %37
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @PCIY_PCIX, align 4
  %48 = call i64 @pci_find_cap(i32 %46, i32 %47, i32* %7)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %45
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* @PCIXR_COMMAND, align 8
  %55 = add nsw i64 %53, %54
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* @PCIXR_COMMAND, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @pci_read_config(i32 %56, i64 %60, i32 2)
  %62 = and i32 %61, 124
  %63 = call i32 @pci_write_config(i32 %51, i64 %55, i32 %62, i32 2)
  br label %64

64:                                               ; preds = %50, %45, %37, %30
  %65 = load %struct.schizo_softc*, %struct.schizo_softc** %5, align 8
  %66 = getelementptr inbounds %struct.schizo_softc, %struct.schizo_softc* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = icmp sge i32 %67, 4
  br i1 %68, label %69, label %95

69:                                               ; preds = %64
  %70 = load %struct.schizo_softc*, %struct.schizo_softc** %5, align 8
  %71 = getelementptr inbounds %struct.schizo_softc, %struct.schizo_softc* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @SCHIZO_FLAGS_XMODE, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i64 160, i64 255
  %78 = load i32, i32* @XMS_PCI_X_DIAG_BUGCNTL_SHIFT, align 4
  %79 = zext i32 %78 to i64
  %80 = shl i64 %77, %79
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %6, align 4
  %82 = load %struct.schizo_softc*, %struct.schizo_softc** %5, align 8
  %83 = load i32, i32* @XMS_PCI_X_DIAG, align 4
  %84 = call i32 @SCHIZO_PCI_READ_8(%struct.schizo_softc* %82, i32 %83)
  %85 = load i32, i32* @XMS_PCI_X_DIAG_BUGCNTL_MASK, align 4
  %86 = and i32 %84, %85
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %69
  %90 = load %struct.schizo_softc*, %struct.schizo_softc** %5, align 8
  %91 = load i32, i32* @XMS_PCI_X_DIAG, align 4
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @SCHIZO_PCI_SET(%struct.schizo_softc* %90, i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %89, %69
  br label %95

95:                                               ; preds = %94, %64
  br label %96

96:                                               ; preds = %95, %24
  ret void
}

declare dso_local %struct.schizo_softc* @device_get_softc(i32) #1

declare dso_local i64 @OF_getproplen(i32, i8*) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @SCHIZO_PCI_SET(%struct.schizo_softc*, i32, i32) #1

declare dso_local i32 @SCHIZO_PCI_READ_8(%struct.schizo_softc*, i32) #1

declare dso_local i32 @pci_read_config(i32, i64, i32) #1

declare dso_local i64 @pci_find_cap(i32, i32, i32*) #1

declare dso_local i32 @pci_write_config(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
