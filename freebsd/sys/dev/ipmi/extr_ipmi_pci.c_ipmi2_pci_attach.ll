; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi_pci.c_ipmi2_pci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi_pci.c_ipmi2_pci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_softc = type { i32, i32, i64, i8*, i32**, i64, i32 }

@BT_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"BT interface unsupported\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Unsupported interface: %d\0A\00", align 1
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"couldn't map ports/memory\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"using KSC interface\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Unable to determine alignment\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"using SMIC interface\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ipmi2_pci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipmi2_pci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipmi_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.ipmi_softc* @device_get_softc(i32 %8)
  store %struct.ipmi_softc* %9, %struct.ipmi_softc** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %12 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %11, i32 0, i32 6
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @pci_get_progif(i32 %13)
  switch i32 %14, label %22 [
    i32 129, label %15
    i32 130, label %16
    i32 131, label %17
  ]

15:                                               ; preds = %1
  store i32 128, i32* %6, align 4
  br label %28

16:                                               ; preds = %1
  store i32 132, i32* %6, align 4
  br label %28

17:                                               ; preds = %1
  %18 = load i32, i32* @BT_MODE, align 4
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 (i32, i8*, ...) @device_printf(i32 %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENXIO, align 4
  store i32 %21, i32* %2, align 4
  br label %119

22:                                               ; preds = %1
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @pci_get_progif(i32 %24)
  %26 = call i32 (i32, i8*, ...) @device_printf(i32 %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @ENXIO, align 4
  store i32 %27, i32* %2, align 4
  br label %119

28:                                               ; preds = %16, %15
  %29 = call i64 @PCIR_BAR(i32 0)
  %30 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %31 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %30, i32 0, i32 5
  store i64 %29, i64* %31, align 8
  %32 = load i32, i32* %3, align 4
  %33 = call i64 @PCIR_BAR(i32 0)
  %34 = call i32 @pci_read_config(i32 %32, i64 %33, i32 4)
  %35 = call i64 @PCI_BAR_IO(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* @SYS_RES_IOPORT, align 4
  store i32 %38, i32* %7, align 4
  br label %41

39:                                               ; preds = %28
  %40 = load i32, i32* @SYS_RES_MEMORY, align 4
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %44 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %46 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %45, i32 0, i32 1
  store i32 1, i32* %46, align 4
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %50 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %49, i32 0, i32 5
  %51 = load i32, i32* @RF_ACTIVE, align 4
  %52 = call i8* @bus_alloc_resource_any(i32 %47, i32 %48, i64* %50, i32 %51)
  %53 = bitcast i8* %52 to i32*
  %54 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %55 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %54, i32 0, i32 4
  %56 = load i32**, i32*** %55, align 8
  %57 = getelementptr inbounds i32*, i32** %56, i64 0
  store i32* %53, i32** %57, align 8
  %58 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %59 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %58, i32 0, i32 4
  %60 = load i32**, i32*** %59, align 8
  %61 = getelementptr inbounds i32*, i32** %60, i64 0
  %62 = load i32*, i32** %61, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %41
  %65 = load i32, i32* %3, align 4
  %66 = call i32 (i32, i8*, ...) @device_printf(i32 %65, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i32, i32* @ENXIO, align 4
  store i32 %67, i32* %2, align 4
  br label %119

68:                                               ; preds = %41
  %69 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %70 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %69, i32 0, i32 2
  store i64 0, i64* %70, align 8
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* @SYS_RES_IRQ, align 4
  %73 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %74 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %73, i32 0, i32 2
  %75 = load i32, i32* @RF_SHAREABLE, align 4
  %76 = load i32, i32* @RF_ACTIVE, align 4
  %77 = or i32 %75, %76
  %78 = call i8* @bus_alloc_resource_any(i32 %71, i32 %72, i64* %74, i32 %77)
  %79 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %80 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %79, i32 0, i32 3
  store i8* %78, i8** %80, align 8
  %81 = load i32, i32* %6, align 4
  switch i32 %81, label %108 [
    i32 132, label %82
    i32 128, label %99
  ]

82:                                               ; preds = %68
  %83 = load i32, i32* %3, align 4
  %84 = call i32 (i32, i8*, ...) @device_printf(i32 %83, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %85 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %86 = call i32 @ipmi_kcs_probe_align(%struct.ipmi_softc* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %82
  %89 = load i32, i32* %3, align 4
  %90 = call i32 (i32, i8*, ...) @device_printf(i32 %89, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %91 = load i32, i32* @ENXIO, align 4
  store i32 %91, i32* %5, align 4
  br label %115

92:                                               ; preds = %82
  %93 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %94 = call i32 @ipmi_kcs_attach(%struct.ipmi_softc* %93)
  store i32 %94, i32* %5, align 4
  %95 = load i32, i32* %5, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  br label %115

98:                                               ; preds = %92
  br label %108

99:                                               ; preds = %68
  %100 = load i32, i32* %3, align 4
  %101 = call i32 (i32, i8*, ...) @device_printf(i32 %100, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %102 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %103 = call i32 @ipmi_smic_attach(%struct.ipmi_softc* %102)
  store i32 %103, i32* %5, align 4
  %104 = load i32, i32* %5, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %99
  br label %115

107:                                              ; preds = %99
  br label %108

108:                                              ; preds = %68, %107, %98
  %109 = load i32, i32* %3, align 4
  %110 = call i32 @ipmi_attach(i32 %109)
  store i32 %110, i32* %5, align 4
  %111 = load i32, i32* %5, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  br label %115

114:                                              ; preds = %108
  store i32 0, i32* %2, align 4
  br label %119

115:                                              ; preds = %113, %106, %97, %88
  %116 = load i32, i32* %3, align 4
  %117 = call i32 @ipmi_release_resources(i32 %116)
  %118 = load i32, i32* %5, align 4
  store i32 %118, i32* %2, align 4
  br label %119

119:                                              ; preds = %115, %114, %64, %22, %17
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local %struct.ipmi_softc* @device_get_softc(i32) #1

declare dso_local i32 @pci_get_progif(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @PCIR_BAR(i32) #1

declare dso_local i64 @PCI_BAR_IO(i32) #1

declare dso_local i32 @pci_read_config(i32, i64, i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i32 @ipmi_kcs_probe_align(%struct.ipmi_softc*) #1

declare dso_local i32 @ipmi_kcs_attach(%struct.ipmi_softc*) #1

declare dso_local i32 @ipmi_smic_attach(%struct.ipmi_softc*) #1

declare dso_local i32 @ipmi_attach(i32) #1

declare dso_local i32 @ipmi_release_resources(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
