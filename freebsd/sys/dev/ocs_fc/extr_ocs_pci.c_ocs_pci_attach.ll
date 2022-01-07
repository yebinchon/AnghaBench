; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_pci.c_ocs_pci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_pci.c_ocs_pci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocs_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"cannot allocate softc\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ocs_devices = common dso_local global %struct.ocs_softc** null, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"got unexpected ocs instance number %d\0A\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"%02X:%02X:%02X\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Failed to map pci bars\0A\00", align 1
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE = common dso_local global i32 0, align 4
@BUS_SPACE_UNRESTRICTED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"parent DMA tag allocation failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Interrupt allocation failed\0A\00", align 1
@PCIC_SERIALBUS = common dso_local global i32 0, align 4
@PCIS_SERIALBUS_FC = common dso_local global i64 0, align 8
@OCS_XPORT_FC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"unsupported class (%#x : %#x)\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"failed to setup params\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"failed to attach device\0A\00", align 1
@FC_TYPE_FCP = common dso_local global i32 0, align 4
@M_OCS = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ocs_pci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocs_pci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocs_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @device_get_unit(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i64 @device_get_softc(i32 %8)
  %10 = inttoptr i64 %9 to %struct.ocs_softc*
  store %struct.ocs_softc* %10, %struct.ocs_softc** %4, align 8
  %11 = load %struct.ocs_softc*, %struct.ocs_softc** %4, align 8
  %12 = icmp eq %struct.ocs_softc* null, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = call i32 (i32, i8*, ...) @device_printf(i32 %14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENOMEM, align 4
  store i32 %16, i32* %2, align 4
  br label %155

17:                                               ; preds = %1
  %18 = load %struct.ocs_softc*, %struct.ocs_softc** %4, align 8
  %19 = call i32 @memset(%struct.ocs_softc* %18, i32 0, i32 40)
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.ocs_softc**, %struct.ocs_softc*** @ocs_devices, align 8
  %22 = call i32 @ARRAY_SIZE(%struct.ocs_softc** %21)
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %17
  %25 = load %struct.ocs_softc*, %struct.ocs_softc** %4, align 8
  %26 = load %struct.ocs_softc**, %struct.ocs_softc*** @ocs_devices, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.ocs_softc*, %struct.ocs_softc** %26, i64 %28
  store %struct.ocs_softc* %25, %struct.ocs_softc** %29, align 8
  br label %34

30:                                               ; preds = %17
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 (i32, i8*, ...) @device_printf(i32 %31, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %30, %24
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.ocs_softc*, %struct.ocs_softc** %4, align 8
  %37 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load %struct.ocs_softc*, %struct.ocs_softc** %4, align 8
  %40 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @SYS_RES_MEMORY, align 4
  %43 = call i32 @pci_enable_io(i32 %41, i32 %42)
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @pci_enable_busmaster(i32 %44)
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @pci_get_vendor(i32 %46)
  %48 = load %struct.ocs_softc*, %struct.ocs_softc** %4, align 8
  %49 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %48, i32 0, i32 9
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @pci_get_device(i32 %50)
  %52 = load %struct.ocs_softc*, %struct.ocs_softc** %4, align 8
  %53 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %52, i32 0, i32 8
  store i32 %51, i32* %53, align 4
  %54 = load %struct.ocs_softc*, %struct.ocs_softc** %4, align 8
  %55 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @pci_get_bus(i32 %57)
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @pci_get_slot(i32 %59)
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @pci_get_function(i32 %61)
  %63 = call i32 @snprintf(i32 %56, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %58, i32 %60, i32 %62)
  %64 = load i32, i32* %3, align 4
  %65 = load %struct.ocs_softc*, %struct.ocs_softc** %4, align 8
  %66 = call i64 @ocs_map_bars(i32 %64, %struct.ocs_softc* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %34
  %69 = load i32, i32* %3, align 4
  %70 = call i32 (i32, i8*, ...) @device_printf(i32 %69, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %151

71:                                               ; preds = %34
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @bus_get_dma_tag(i32 %72)
  %74 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %75 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %76 = load i32, i32* @BUS_SPACE_MAXSIZE, align 4
  %77 = load i32, i32* @BUS_SPACE_UNRESTRICTED, align 4
  %78 = load i32, i32* @BUS_SPACE_MAXSIZE, align 4
  %79 = load %struct.ocs_softc*, %struct.ocs_softc** %4, align 8
  %80 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %79, i32 0, i32 6
  %81 = call i64 @bus_dma_tag_create(i32 %73, i32 1, i32 0, i32 %74, i32 %75, i32* null, i32* null, i32 %76, i32 %77, i32 %78, i32 0, i32* null, i32* null, i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %71
  %84 = load i32, i32* %3, align 4
  %85 = call i32 (i32, i8*, ...) @device_printf(i32 %84, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %151

86:                                               ; preds = %71
  %87 = load %struct.ocs_softc*, %struct.ocs_softc** %4, align 8
  %88 = call i64 @ocs_intr_alloc(%struct.ocs_softc* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load i32, i32* %3, align 4
  %92 = call i32 (i32, i8*, ...) @device_printf(i32 %91, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %151

93:                                               ; preds = %86
  %94 = load i32, i32* @PCIC_SERIALBUS, align 4
  %95 = load i32, i32* %3, align 4
  %96 = call i32 @pci_get_class(i32 %95)
  %97 = icmp eq i32 %94, %96
  br i1 %97, label %98, label %107

98:                                               ; preds = %93
  %99 = load i64, i64* @PCIS_SERIALBUS_FC, align 8
  %100 = load i32, i32* %3, align 4
  %101 = call i64 @pci_get_subclass(i32 %100)
  %102 = icmp eq i64 %99, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = load i32, i32* @OCS_XPORT_FC, align 4
  %105 = load %struct.ocs_softc*, %struct.ocs_softc** %4, align 8
  %106 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %105, i32 0, i32 5
  store i32 %104, i32* %106, align 4
  br label %114

107:                                              ; preds = %98, %93
  %108 = load i32, i32* %3, align 4
  %109 = load i32, i32* %3, align 4
  %110 = call i32 @pci_get_class(i32 %109)
  %111 = load i32, i32* %3, align 4
  %112 = call i32 @pci_get_class(i32 %111)
  %113 = call i32 (i32, i8*, ...) @device_printf(i32 %108, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %110, i32 %112)
  br label %151

114:                                              ; preds = %103
  %115 = load %struct.ocs_softc*, %struct.ocs_softc** %4, align 8
  %116 = call i64 @ocs_setup_params(%struct.ocs_softc* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %114
  %119 = load %struct.ocs_softc*, %struct.ocs_softc** %4, align 8
  %120 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 4
  %122 = call i32 (i32, i8*, ...) @device_printf(i32 %121, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  br label %151

123:                                              ; preds = %114
  %124 = load %struct.ocs_softc*, %struct.ocs_softc** %4, align 8
  %125 = call i64 @ocs_device_attach(%struct.ocs_softc* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %123
  %128 = load %struct.ocs_softc*, %struct.ocs_softc** %4, align 8
  %129 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = call i32 (i32, i8*, ...) @device_printf(i32 %130, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  br label %138

132:                                              ; preds = %123
  %133 = load i32, i32* @FC_TYPE_FCP, align 4
  %134 = load %struct.ocs_softc*, %struct.ocs_softc** %4, align 8
  %135 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %134, i32 0, i32 3
  store i32 %133, i32* %135, align 4
  %136 = load %struct.ocs_softc*, %struct.ocs_softc** %4, align 8
  %137 = call i32 @ocs_debug_attach(%struct.ocs_softc* %136)
  store i32 0, i32* %2, align 4
  br label %155

138:                                              ; preds = %127
  %139 = load %struct.ocs_softc*, %struct.ocs_softc** %4, align 8
  %140 = load %struct.ocs_softc*, %struct.ocs_softc** %4, align 8
  %141 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @ocs_ramlog_free(%struct.ocs_softc* %139, i32 %142)
  %144 = load %struct.ocs_softc*, %struct.ocs_softc** %4, align 8
  %145 = call i32 @ocs_device_lock_free(%struct.ocs_softc* %144)
  %146 = load %struct.ocs_softc*, %struct.ocs_softc** %4, align 8
  %147 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @M_OCS, align 4
  %150 = call i32 @free(i32 %148, i32 %149)
  br label %151

151:                                              ; preds = %138, %118, %107, %90, %83, %68
  %152 = load %struct.ocs_softc*, %struct.ocs_softc** %4, align 8
  %153 = call i32 @ocs_release_bus(%struct.ocs_softc* %152)
  %154 = load i32, i32* @ENXIO, align 4
  store i32 %154, i32* %2, align 4
  br label %155

155:                                              ; preds = %151, %132, %13
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @memset(%struct.ocs_softc*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.ocs_softc**) #1

declare dso_local i32 @pci_enable_io(i32, i32) #1

declare dso_local i32 @pci_enable_busmaster(i32) #1

declare dso_local i32 @pci_get_vendor(i32) #1

declare dso_local i32 @pci_get_device(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @pci_get_bus(i32) #1

declare dso_local i32 @pci_get_slot(i32) #1

declare dso_local i32 @pci_get_function(i32) #1

declare dso_local i64 @ocs_map_bars(i32, %struct.ocs_softc*) #1

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i64 @ocs_intr_alloc(%struct.ocs_softc*) #1

declare dso_local i32 @pci_get_class(i32) #1

declare dso_local i64 @pci_get_subclass(i32) #1

declare dso_local i64 @ocs_setup_params(%struct.ocs_softc*) #1

declare dso_local i64 @ocs_device_attach(%struct.ocs_softc*) #1

declare dso_local i32 @ocs_debug_attach(%struct.ocs_softc*) #1

declare dso_local i32 @ocs_ramlog_free(%struct.ocs_softc*, i32) #1

declare dso_local i32 @ocs_device_lock_free(%struct.ocs_softc*) #1

declare dso_local i32 @free(i32, i32) #1

declare dso_local i32 @ocs_release_bus(%struct.ocs_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
