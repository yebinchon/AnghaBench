; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ichwd/extr_ichwd.c_ichwd_smb_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ichwd/extr_ichwd.c_ichwd_smb_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ichwd_softc = type { i32, i32, i32, i32*, i32*, i32*, i32, i32 }
%struct.ichwd_device = type { i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"unable to reserve TCO registers\0A\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"unable to reserve hidden P2SB registers\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"unable to find Power Management device\0A\00", align 1
@ICH_PMBASE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"ACPI base address is not set\0A\00", align 1
@SMI_BASE = common dso_local global i64 0, align 8
@SMI_LEN = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [33 x i8] c"unable to reserve SMI registers\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ichwd_smb_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ichwd_smb_attach(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ichwd_softc*, align 8
  %5 = alloca %struct.ichwd_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call %struct.ichwd_softc* @device_get_softc(i32* %10)
  store %struct.ichwd_softc* %11, %struct.ichwd_softc** %4, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i32* @device_get_parent(i32* %12)
  %14 = call i32* @ichwd_find_smb_dev(i32* %13, %struct.ichwd_device** %5)
  store i32* %14, i32** %8, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @ENXIO, align 4
  store i32 %18, i32* %2, align 4
  br label %133

19:                                               ; preds = %1
  %20 = load %struct.ichwd_device*, %struct.ichwd_device** %5, align 8
  %21 = getelementptr inbounds %struct.ichwd_device, %struct.ichwd_device* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ichwd_softc*, %struct.ichwd_softc** %4, align 8
  %24 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %23, i32 0, i32 7
  store i32 %22, i32* %24, align 4
  %25 = load %struct.ichwd_device*, %struct.ichwd_device** %5, align 8
  %26 = getelementptr inbounds %struct.ichwd_device, %struct.ichwd_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ichwd_softc*, %struct.ichwd_softc** %4, align 8
  %29 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %28, i32 0, i32 6
  store i32 %27, i32* %29, align 8
  %30 = load %struct.ichwd_softc*, %struct.ichwd_softc** %4, align 8
  %31 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* @SYS_RES_IOPORT, align 4
  %34 = load %struct.ichwd_softc*, %struct.ichwd_softc** %4, align 8
  %35 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %34, i32 0, i32 0
  %36 = load i32, i32* @RF_ACTIVE, align 4
  %37 = load i32, i32* @RF_SHAREABLE, align 4
  %38 = or i32 %36, %37
  %39 = call i8* @bus_alloc_resource_any(i32* %32, i32 %33, i32* %35, i32 %38)
  %40 = bitcast i8* %39 to i32*
  %41 = load %struct.ichwd_softc*, %struct.ichwd_softc** %4, align 8
  %42 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %41, i32 0, i32 5
  store i32* %40, i32** %42, align 8
  %43 = load %struct.ichwd_softc*, %struct.ichwd_softc** %4, align 8
  %44 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %43, i32 0, i32 5
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %19
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @device_printf(i32* %48, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @ENXIO, align 4
  store i32 %50, i32* %2, align 4
  br label %133

51:                                               ; preds = %19
  %52 = load %struct.ichwd_softc*, %struct.ichwd_softc** %4, align 8
  %53 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %52, i32 0, i32 1
  store i32 1, i32* %53, align 4
  %54 = load i32*, i32** %3, align 8
  %55 = load i32, i32* @SYS_RES_MEMORY, align 4
  %56 = load %struct.ichwd_softc*, %struct.ichwd_softc** %4, align 8
  %57 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %56, i32 0, i32 1
  %58 = load i32, i32* @RF_ACTIVE, align 4
  %59 = load i32, i32* @RF_SHAREABLE, align 4
  %60 = or i32 %58, %59
  %61 = call i8* @bus_alloc_resource_any(i32* %54, i32 %55, i32* %57, i32 %60)
  %62 = bitcast i8* %61 to i32*
  %63 = load %struct.ichwd_softc*, %struct.ichwd_softc** %4, align 8
  %64 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %63, i32 0, i32 4
  store i32* %62, i32** %64, align 8
  %65 = load %struct.ichwd_softc*, %struct.ichwd_softc** %4, align 8
  %66 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %65, i32 0, i32 4
  %67 = load i32*, i32** %66, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %73

69:                                               ; preds = %51
  %70 = load i32*, i32** %3, align 8
  %71 = call i32 @device_printf(i32* %70, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i32, i32* @ENXIO, align 4
  store i32 %72, i32* %2, align 4
  br label %133

73:                                               ; preds = %51
  %74 = load i32*, i32** %3, align 8
  %75 = call i32* @device_get_parent(i32* %74)
  %76 = call i32* @device_get_parent(i32* %75)
  store i32* %76, i32** %6, align 8
  %77 = load i32*, i32** %6, align 8
  %78 = call i32 @pci_get_domain(i32* %77)
  %79 = load i32*, i32** %6, align 8
  %80 = call i32 @pci_get_bus(i32* %79)
  %81 = call i32* @pci_find_dbsf(i32 %78, i32 %80, i32 31, i32 2)
  store i32* %81, i32** %7, align 8
  %82 = load i32*, i32** %7, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %88

84:                                               ; preds = %73
  %85 = load i32*, i32** %3, align 8
  %86 = call i32 @device_printf(i32* %85, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %87 = load i32, i32* @ENXIO, align 4
  store i32 %87, i32* %2, align 4
  br label %133

88:                                               ; preds = %73
  %89 = load i32*, i32** %7, align 8
  %90 = load i32, i32* @ICH_PMBASE, align 4
  %91 = call i32 @pci_read_config(i32* %89, i32 %90, i32 4)
  %92 = and i32 %91, -256
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %88
  %96 = load i32*, i32** %3, align 8
  %97 = call i32 @device_printf(i32* %96, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %98 = load i32, i32* @ENXIO, align 4
  store i32 %98, i32* %2, align 4
  br label %133

99:                                               ; preds = %88
  %100 = load %struct.ichwd_softc*, %struct.ichwd_softc** %4, align 8
  %101 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %100, i32 0, i32 2
  store i32 2, i32* %101, align 8
  %102 = load i32*, i32** %3, align 8
  %103 = load i32, i32* @SYS_RES_IOPORT, align 4
  %104 = load %struct.ichwd_softc*, %struct.ichwd_softc** %4, align 8
  %105 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %104, i32 0, i32 2
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = load i64, i64* @SMI_BASE, align 8
  %109 = add nsw i64 %107, %108
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = load i64, i64* @SMI_BASE, align 8
  %113 = add nsw i64 %111, %112
  %114 = load i64, i64* @SMI_LEN, align 8
  %115 = add nsw i64 %113, %114
  %116 = sub nsw i64 %115, 1
  %117 = load i64, i64* @SMI_LEN, align 8
  %118 = load i32, i32* @RF_ACTIVE, align 4
  %119 = load i32, i32* @RF_SHAREABLE, align 4
  %120 = or i32 %118, %119
  %121 = call i32* @bus_alloc_resource(i32* %102, i32 %103, i32* %105, i64 %109, i64 %116, i64 %117, i32 %120)
  %122 = load %struct.ichwd_softc*, %struct.ichwd_softc** %4, align 8
  %123 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %122, i32 0, i32 3
  store i32* %121, i32** %123, align 8
  %124 = load %struct.ichwd_softc*, %struct.ichwd_softc** %4, align 8
  %125 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %124, i32 0, i32 3
  %126 = load i32*, i32** %125, align 8
  %127 = icmp eq i32* %126, null
  br i1 %127, label %128, label %132

128:                                              ; preds = %99
  %129 = load i32*, i32** %3, align 8
  %130 = call i32 @device_printf(i32* %129, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %131 = load i32, i32* @ENXIO, align 4
  store i32 %131, i32* %2, align 4
  br label %133

132:                                              ; preds = %99
  store i32 0, i32* %2, align 4
  br label %133

133:                                              ; preds = %132, %128, %95, %84, %69, %47, %17
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local %struct.ichwd_softc* @device_get_softc(i32*) #1

declare dso_local i32* @ichwd_find_smb_dev(i32*, %struct.ichwd_device**) #1

declare dso_local i32* @device_get_parent(i32*) #1

declare dso_local i8* @bus_alloc_resource_any(i32*, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32*, i8*) #1

declare dso_local i32* @pci_find_dbsf(i32, i32, i32, i32) #1

declare dso_local i32 @pci_get_domain(i32*) #1

declare dso_local i32 @pci_get_bus(i32*) #1

declare dso_local i32 @pci_read_config(i32*, i32, i32) #1

declare dso_local i32* @bus_alloc_resource(i32*, i32, i32*, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
