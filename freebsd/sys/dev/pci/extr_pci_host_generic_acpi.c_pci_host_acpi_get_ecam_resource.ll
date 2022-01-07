; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_host_generic_acpi.c_pci_host_acpi_get_ecam_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_host_generic_acpi.c_pci_host_acpi_get_ecam_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.generic_pcie_acpi_softc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32, i32 }
%struct.acpi_device = type { %struct.resource_list }
%struct.resource_list = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i64, i32, i32, i32 }

@ACPI_SIG_MCFG = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"MCFG exists, but does not have bus %d-%d\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"_CBA\00", align 1
@PCIE_BUS_SHIFT = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"ECAM for bus %d-%d at mem %jx-%jx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pci_host_acpi_get_ecam_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_host_acpi_get_ecam_resource(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.generic_pcie_acpi_softc*, align 8
  %5 = alloca %struct.acpi_device*, align 8
  %6 = alloca %struct.resource_list*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call %struct.generic_pcie_acpi_softc* @device_get_softc(i32 %17)
  store %struct.generic_pcie_acpi_softc* %18, %struct.generic_pcie_acpi_softc** %4, align 8
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @acpi_get_handle(i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* @ACPI_SIG_MCFG, align 4
  %22 = call i32 @AcpiGetTable(i32 %21, i32 1, %struct.TYPE_6__** %7)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = call i64 @ACPI_SUCCESS(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %109

26:                                               ; preds = %1
  %27 = load i32, i32* @FALSE, align 4
  store i32 %27, i32* %15, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %29 = bitcast %struct.TYPE_6__* %28 to i8*
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %29, i64 %33
  %35 = bitcast i8* %34 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %35, %struct.TYPE_7__** %9, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %37 = bitcast %struct.TYPE_6__* %36 to i32*
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = bitcast i32* %38 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %39, %struct.TYPE_7__** %8, align 8
  br label %40

40:                                               ; preds = %82, %26
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %43 = icmp ult %struct.TYPE_7__* %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32, i32* %15, align 4
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  br label %48

48:                                               ; preds = %44, %40
  %49 = phi i1 [ false, %40 ], [ %47, %44 ]
  br i1 %49, label %50, label %83

50:                                               ; preds = %48
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.generic_pcie_acpi_softc*, %struct.generic_pcie_acpi_softc** %4, align 8
  %55 = getelementptr inbounds %struct.generic_pcie_acpi_softc, %struct.generic_pcie_acpi_softc* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %53, %57
  br i1 %58, label %59, label %79

59:                                               ; preds = %50
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.generic_pcie_acpi_softc*, %struct.generic_pcie_acpi_softc** %4, align 8
  %64 = getelementptr inbounds %struct.generic_pcie_acpi_softc, %struct.generic_pcie_acpi_softc* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = icmp sle i32 %62, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %59
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.generic_pcie_acpi_softc*, %struct.generic_pcie_acpi_softc** %4, align 8
  %73 = getelementptr inbounds %struct.generic_pcie_acpi_softc, %struct.generic_pcie_acpi_softc* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = icmp sge i32 %71, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %68
  %78 = load i32, i32* @TRUE, align 4
  store i32 %78, i32* %15, align 4
  br label %82

79:                                               ; preds = %68, %59, %50
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 1
  store %struct.TYPE_7__* %81, %struct.TYPE_7__** %8, align 8
  br label %82

82:                                               ; preds = %79, %77
  br label %40

83:                                               ; preds = %48
  %84 = load i32, i32* %15, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %83
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.generic_pcie_acpi_softc*, %struct.generic_pcie_acpi_softc** %4, align 8
  %91 = getelementptr inbounds %struct.generic_pcie_acpi_softc, %struct.generic_pcie_acpi_softc* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 2
  store i32 %89, i32* %92, align 4
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  store i32 %95, i32* %12, align 4
  br label %108

96:                                               ; preds = %83
  %97 = load i32, i32* %3, align 4
  %98 = load %struct.generic_pcie_acpi_softc*, %struct.generic_pcie_acpi_softc** %4, align 8
  %99 = getelementptr inbounds %struct.generic_pcie_acpi_softc, %struct.generic_pcie_acpi_softc* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.generic_pcie_acpi_softc*, %struct.generic_pcie_acpi_softc** %4, align 8
  %103 = getelementptr inbounds %struct.generic_pcie_acpi_softc, %struct.generic_pcie_acpi_softc* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = call i32 (i32, i8*, i32, i32, ...) @device_printf(i32 %97, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %101, i32 %105)
  %107 = load i32, i32* @ENXIO, align 4
  store i32 %107, i32* %2, align 4
  br label %171

108:                                              ; preds = %86
  br label %123

109:                                              ; preds = %1
  %110 = load i32, i32* %10, align 4
  %111 = call i32 @acpi_GetInteger(i32 %110, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %16)
  store i32 %111, i32* %11, align 4
  %112 = load i32, i32* %11, align 4
  %113 = call i64 @ACPI_SUCCESS(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %109
  %116 = load i32, i32* %16, align 4
  store i32 %116, i32* %12, align 4
  %117 = load %struct.generic_pcie_acpi_softc*, %struct.generic_pcie_acpi_softc** %4, align 8
  %118 = getelementptr inbounds %struct.generic_pcie_acpi_softc, %struct.generic_pcie_acpi_softc* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 2
  store i32 255, i32* %119, align 4
  br label %122

120:                                              ; preds = %109
  %121 = load i32, i32* @ENXIO, align 4
  store i32 %121, i32* %2, align 4
  br label %171

122:                                              ; preds = %115
  br label %123

123:                                              ; preds = %122, %108
  %124 = load i32, i32* %3, align 4
  %125 = call %struct.acpi_device* @device_get_ivars(i32 %124)
  store %struct.acpi_device* %125, %struct.acpi_device** %5, align 8
  %126 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %127 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %126, i32 0, i32 0
  store %struct.resource_list* %127, %struct.resource_list** %6, align 8
  %128 = load i32, i32* %12, align 4
  %129 = load %struct.generic_pcie_acpi_softc*, %struct.generic_pcie_acpi_softc** %4, align 8
  %130 = getelementptr inbounds %struct.generic_pcie_acpi_softc, %struct.generic_pcie_acpi_softc* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @PCIE_BUS_SHIFT, align 4
  %134 = shl i32 %132, %133
  %135 = add nsw i32 %128, %134
  store i32 %135, i32* %13, align 4
  %136 = load i32, i32* %12, align 4
  %137 = load %struct.generic_pcie_acpi_softc*, %struct.generic_pcie_acpi_softc** %4, align 8
  %138 = getelementptr inbounds %struct.generic_pcie_acpi_softc, %struct.generic_pcie_acpi_softc* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %140, 1
  %142 = load i32, i32* @PCIE_BUS_SHIFT, align 4
  %143 = shl i32 %141, %142
  %144 = add nsw i32 %136, %143
  %145 = sub nsw i32 %144, 1
  store i32 %145, i32* %14, align 4
  %146 = load %struct.resource_list*, %struct.resource_list** %6, align 8
  %147 = load i32, i32* @SYS_RES_MEMORY, align 4
  %148 = load i32, i32* %13, align 4
  %149 = load i32, i32* %14, align 4
  %150 = load i32, i32* %14, align 4
  %151 = load i32, i32* %13, align 4
  %152 = sub nsw i32 %150, %151
  %153 = add nsw i32 %152, 1
  %154 = call i32 @resource_list_add(%struct.resource_list* %146, i32 %147, i32 0, i32 %148, i32 %149, i32 %153)
  %155 = load i64, i64* @bootverbose, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %170

157:                                              ; preds = %123
  %158 = load i32, i32* %3, align 4
  %159 = load %struct.generic_pcie_acpi_softc*, %struct.generic_pcie_acpi_softc** %4, align 8
  %160 = getelementptr inbounds %struct.generic_pcie_acpi_softc, %struct.generic_pcie_acpi_softc* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.generic_pcie_acpi_softc*, %struct.generic_pcie_acpi_softc** %4, align 8
  %164 = getelementptr inbounds %struct.generic_pcie_acpi_softc, %struct.generic_pcie_acpi_softc* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* %13, align 4
  %168 = load i32, i32* %14, align 4
  %169 = call i32 (i32, i8*, i32, i32, ...) @device_printf(i32 %158, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %162, i32 %166, i32 %167, i32 %168)
  br label %170

170:                                              ; preds = %157, %123
  store i32 0, i32* %2, align 4
  br label %171

171:                                              ; preds = %170, %120, %96
  %172 = load i32, i32* %2, align 4
  ret i32 %172
}

declare dso_local %struct.generic_pcie_acpi_softc* @device_get_softc(i32) #1

declare dso_local i32 @acpi_get_handle(i32) #1

declare dso_local i32 @AcpiGetTable(i32, i32, %struct.TYPE_6__**) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @acpi_GetInteger(i32, i8*, i32*) #1

declare dso_local %struct.acpi_device* @device_get_ivars(i32) #1

declare dso_local i32 @resource_list_add(%struct.resource_list*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
