; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/pvscsi/extr_pvscsi.c_pvscsi_setup_interrupts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/pvscsi/extr_pvscsi.c_pvscsi_setup_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvscsi_softc = type { i32, i32, i32, i32, i32* }

@.str = private unnamed_addr constant [9 x i8] c"use_msix\00", align 1
@pvscsi_use_msix = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"use_msi\00", align 1
@pvscsi_use_msi = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"Interrupt: MSI-X\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Interrupt: MSI\0A\00", align 1
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"Interrupt: INT\0A\00", align 1
@RF_SHAREABLE = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"IRQ allocation failed\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@INTR_TYPE_CAM = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@pvscsi_intr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"IRQ handler setup failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvscsi_softc*)* @pvscsi_setup_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvscsi_setup_interrupts(%struct.pvscsi_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pvscsi_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pvscsi_softc* %0, %struct.pvscsi_softc** %3, align 8
  %9 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %3, align 8
  %10 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %9, i32 0, i32 0
  store i32 0, i32* %10, align 8
  %11 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %3, align 8
  %12 = load i32, i32* @pvscsi_use_msix, align 4
  %13 = call i32 @pvscsi_get_tunable(%struct.pvscsi_softc* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %3, align 8
  %15 = load i32, i32* @pvscsi_use_msi, align 4
  %16 = call i32 @pvscsi_get_tunable(%struct.pvscsi_softc* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %47

19:                                               ; preds = %1
  %20 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %3, align 8
  %21 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @pci_msix_count(i32 %22)
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %47

25:                                               ; preds = %19
  store i32 1, i32* %8, align 4
  %26 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %3, align 8
  %27 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @pci_alloc_msix(i32 %28, i32* %8)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %25
  %32 = load i32, i32* %8, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %3, align 8
  %36 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %3, align 8
  %38 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @device_printf(i32 %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %46

41:                                               ; preds = %31, %25
  %42 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %3, align 8
  %43 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @pci_release_msi(i32 %44)
  br label %46

46:                                               ; preds = %41, %34
  br label %47

47:                                               ; preds = %46, %19, %1
  %48 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %3, align 8
  %49 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %83

52:                                               ; preds = %47
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %83

55:                                               ; preds = %52
  %56 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %3, align 8
  %57 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @pci_msi_count(i32 %58)
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %83

61:                                               ; preds = %55
  store i32 1, i32* %8, align 4
  %62 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %3, align 8
  %63 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @pci_alloc_msi(i32 %64, i32* %8)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %61
  %68 = load i32, i32* %8, align 4
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %77

70:                                               ; preds = %67
  %71 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %3, align 8
  %72 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  %73 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %3, align 8
  %74 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @device_printf(i32 %75, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %82

77:                                               ; preds = %67, %61
  %78 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %3, align 8
  %79 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @pci_release_msi(i32 %80)
  br label %82

82:                                               ; preds = %77, %70
  br label %83

83:                                               ; preds = %82, %55, %52, %47
  %84 = load i32, i32* @RF_ACTIVE, align 4
  store i32 %84, i32* %5, align 4
  %85 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %3, align 8
  %86 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %83
  %90 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %3, align 8
  %91 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %90, i32 0, i32 1
  store i32 1, i32* %91, align 4
  br label %102

92:                                               ; preds = %83
  %93 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %3, align 8
  %94 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @device_printf(i32 %95, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %97 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %3, align 8
  %98 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %97, i32 0, i32 1
  store i32 0, i32* %98, align 4
  %99 = load i32, i32* @RF_SHAREABLE, align 4
  %100 = load i32, i32* %5, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %92, %89
  %103 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %3, align 8
  %104 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @SYS_RES_IRQ, align 4
  %107 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %3, align 8
  %108 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %107, i32 0, i32 1
  %109 = load i32, i32* %5, align 4
  %110 = call i32* @bus_alloc_resource_any(i32 %105, i32 %106, i32* %108, i32 %109)
  %111 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %3, align 8
  %112 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %111, i32 0, i32 4
  store i32* %110, i32** %112, align 8
  %113 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %3, align 8
  %114 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %113, i32 0, i32 4
  %115 = load i32*, i32** %114, align 8
  %116 = icmp eq i32* %115, null
  br i1 %116, label %117, label %133

117:                                              ; preds = %102
  %118 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %3, align 8
  %119 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @device_printf(i32 %120, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %122 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %3, align 8
  %123 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %117
  %127 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %3, align 8
  %128 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @pci_release_msi(i32 %129)
  br label %131

131:                                              ; preds = %126, %117
  %132 = load i32, i32* @ENXIO, align 4
  store i32 %132, i32* %2, align 4
  br label %159

133:                                              ; preds = %102
  %134 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %3, align 8
  %135 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %3, align 8
  %138 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %137, i32 0, i32 4
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* @INTR_TYPE_CAM, align 4
  %141 = load i32, i32* @INTR_MPSAFE, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* @pvscsi_intr, align 4
  %144 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %3, align 8
  %145 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %3, align 8
  %146 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %145, i32 0, i32 3
  %147 = call i32 @bus_setup_intr(i32 %136, i32* %139, i32 %142, i32* null, i32 %143, %struct.pvscsi_softc* %144, i32* %146)
  store i32 %147, i32* %4, align 4
  %148 = load i32, i32* %4, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %158

150:                                              ; preds = %133
  %151 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %3, align 8
  %152 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @device_printf(i32 %153, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %155 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %3, align 8
  %156 = call i32 @pvscsi_free_interrupts(%struct.pvscsi_softc* %155)
  %157 = load i32, i32* %4, align 4
  store i32 %157, i32* %2, align 4
  br label %159

158:                                              ; preds = %133
  store i32 0, i32* %2, align 4
  br label %159

159:                                              ; preds = %158, %150, %131
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local i32 @pvscsi_get_tunable(%struct.pvscsi_softc*, i8*, i32) #1

declare dso_local i64 @pci_msix_count(i32) #1

declare dso_local i64 @pci_alloc_msix(i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @pci_release_msi(i32) #1

declare dso_local i64 @pci_msi_count(i32) #1

declare dso_local i64 @pci_alloc_msi(i32, i32*) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.pvscsi_softc*, i32*) #1

declare dso_local i32 @pvscsi_free_interrupts(%struct.pvscsi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
