; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/intpm/extr_intpm.c_sb8xx_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/intpm/extr_intpm.c_sb8xx_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intsmb_softc = type { i32, i32, i32* }
%struct.resource = type { i32 }

@sb8xx_attach.AMDSB_SMBIO_WIDTH = internal constant i32 16, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@AMDSB_PMIO_INDEX = common dso_local global i32 0, align 4
@AMDSB_PMIO_WIDTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"bus_set_resource for PM IO failed\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"bus_alloc_resource for PM IO failed\0A\00", align 1
@AMDSB_SMBUS_DEVID = common dso_local global i64 0, align 8
@AMDFCH_SMBUS_DEVID = common dso_local global i64 0, align 8
@AMDFCH41_SMBUS_REVID = common dso_local global i64 0, align 8
@AMDCZ_SMBUS_DEVID = common dso_local global i64 0, align 8
@AMDCZ49_SMBUS_REVID = common dso_local global i64 0, align 8
@AMDSB8_PM_SMBUS_EN = common dso_local global i64 0, align 8
@AMDSB8_SMBUS_EN = common dso_local global i32 0, align 4
@AMDSB8_SMBUS_ADDR_MASK = common dso_local global i32 0, align 4
@AMDFCH41_PM_DECODE_EN0 = common dso_local global i64 0, align 8
@AMDFCH41_SMBUS_EN = common dso_local global i32 0, align 4
@AMDFCH41_PM_DECODE_EN1 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"SB8xx/SB9xx/FCH SMBus not enabled\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"bus_set_resource for SMBus IO failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Could not allocate I/O space\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @sb8xx_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sb8xx_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.intsmb_softc*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call %struct.intsmb_softc* @device_get_softc(i32 %12)
  store %struct.intsmb_softc* %13, %struct.intsmb_softc** %4, align 8
  store i32 0, i32* %9, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @SYS_RES_IOPORT, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @AMDSB_PMIO_INDEX, align 4
  %18 = load i32, i32* @AMDSB_PMIO_WIDTH, align 4
  %19 = call i32 @bus_set_resource(i32 %14, i32 %15, i32 %16, i32 %17, i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @device_printf(i32 %23, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENXIO, align 4
  store i32 %25, i32* %2, align 4
  br label %149

26:                                               ; preds = %1
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @SYS_RES_IOPORT, align 4
  %29 = load i32, i32* @RF_ACTIVE, align 4
  %30 = call i8* @bus_alloc_resource_any(i32 %27, i32 %28, i32* %9, i32 %29)
  %31 = bitcast i8* %30 to %struct.resource*
  store %struct.resource* %31, %struct.resource** %5, align 8
  %32 = load %struct.resource*, %struct.resource** %5, align 8
  %33 = icmp eq %struct.resource* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %26
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @device_printf(i32 %35, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @ENXIO, align 4
  store i32 %37, i32* %2, align 4
  br label %149

38:                                               ; preds = %26
  %39 = load i32, i32* %3, align 4
  %40 = call i64 @pci_get_devid(i32 %39)
  store i64 %40, i64* %6, align 8
  %41 = load i32, i32* %3, align 4
  %42 = call i64 @pci_get_revid(i32 %41)
  store i64 %42, i64* %7, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* @AMDSB_SMBUS_DEVID, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %62, label %46

46:                                               ; preds = %38
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* @AMDFCH_SMBUS_DEVID, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* @AMDFCH41_SMBUS_REVID, align 8
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %62, label %54

54:                                               ; preds = %50, %46
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* @AMDCZ_SMBUS_DEVID, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %82

58:                                               ; preds = %54
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* @AMDCZ49_SMBUS_REVID, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %62, label %82

62:                                               ; preds = %58, %50, %38
  %63 = load %struct.resource*, %struct.resource** %5, align 8
  %64 = load i64, i64* @AMDSB8_PM_SMBUS_EN, align 8
  %65 = add nsw i64 %64, 1
  %66 = call i32 @amd_pmio_read(%struct.resource* %63, i64 %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = shl i32 %67, 8
  store i32 %68, i32* %8, align 4
  %69 = load %struct.resource*, %struct.resource** %5, align 8
  %70 = load i64, i64* @AMDSB8_PM_SMBUS_EN, align 8
  %71 = call i32 @amd_pmio_read(%struct.resource* %69, i64 %70)
  %72 = load i32, i32* %8, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @AMDSB8_SMBUS_EN, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* @AMDSB8_SMBUS_ADDR_MASK, align 4
  %80 = load i32, i32* %8, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %8, align 4
  br label %96

82:                                               ; preds = %58, %54
  %83 = load %struct.resource*, %struct.resource** %5, align 8
  %84 = load i64, i64* @AMDFCH41_PM_DECODE_EN0, align 8
  %85 = call i32 @amd_pmio_read(%struct.resource* %83, i64 %84)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @AMDFCH41_SMBUS_EN, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %11, align 4
  %91 = load %struct.resource*, %struct.resource** %5, align 8
  %92 = load i64, i64* @AMDFCH41_PM_DECODE_EN1, align 8
  %93 = call i32 @amd_pmio_read(%struct.resource* %91, i64 %92)
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = shl i32 %94, 8
  store i32 %95, i32* %8, align 4
  br label %96

96:                                               ; preds = %82, %62
  %97 = load i32, i32* %3, align 4
  %98 = load i32, i32* @SYS_RES_IOPORT, align 4
  %99 = load i32, i32* %9, align 4
  %100 = load %struct.resource*, %struct.resource** %5, align 8
  %101 = call i32 @bus_release_resource(i32 %97, i32 %98, i32 %99, %struct.resource* %100)
  %102 = load i32, i32* %3, align 4
  %103 = load i32, i32* @SYS_RES_IOPORT, align 4
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @bus_delete_resource(i32 %102, i32 %103, i32 %104)
  %106 = load i32, i32* %11, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %96
  %109 = load i32, i32* %3, align 4
  %110 = call i32 @device_printf(i32 %109, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %111 = load i32, i32* @ENXIO, align 4
  store i32 %111, i32* %2, align 4
  br label %149

112:                                              ; preds = %96
  %113 = load %struct.intsmb_softc*, %struct.intsmb_softc** %4, align 8
  %114 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %113, i32 0, i32 0
  store i32 0, i32* %114, align 8
  %115 = load i32, i32* %3, align 4
  %116 = load i32, i32* @SYS_RES_IOPORT, align 4
  %117 = load %struct.intsmb_softc*, %struct.intsmb_softc** %4, align 8
  %118 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @bus_set_resource(i32 %115, i32 %116, i32 %119, i32 %120, i32 16)
  store i32 %121, i32* %10, align 4
  %122 = load i32, i32* %10, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %112
  %125 = load i32, i32* %3, align 4
  %126 = call i32 @device_printf(i32 %125, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %127 = load i32, i32* @ENXIO, align 4
  store i32 %127, i32* %2, align 4
  br label %149

128:                                              ; preds = %112
  %129 = load i32, i32* %3, align 4
  %130 = load i32, i32* @SYS_RES_IOPORT, align 4
  %131 = load %struct.intsmb_softc*, %struct.intsmb_softc** %4, align 8
  %132 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %131, i32 0, i32 0
  %133 = load i32, i32* @RF_ACTIVE, align 4
  %134 = call i8* @bus_alloc_resource_any(i32 %129, i32 %130, i32* %132, i32 %133)
  %135 = bitcast i8* %134 to i32*
  %136 = load %struct.intsmb_softc*, %struct.intsmb_softc** %4, align 8
  %137 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %136, i32 0, i32 2
  store i32* %135, i32** %137, align 8
  %138 = load %struct.intsmb_softc*, %struct.intsmb_softc** %4, align 8
  %139 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %138, i32 0, i32 2
  %140 = load i32*, i32** %139, align 8
  %141 = icmp eq i32* %140, null
  br i1 %141, label %142, label %146

142:                                              ; preds = %128
  %143 = load i32, i32* %3, align 4
  %144 = call i32 @device_printf(i32 %143, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %145 = load i32, i32* @ENXIO, align 4
  store i32 %145, i32* %2, align 4
  br label %149

146:                                              ; preds = %128
  %147 = load %struct.intsmb_softc*, %struct.intsmb_softc** %4, align 8
  %148 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %147, i32 0, i32 1
  store i32 1, i32* %148, align 4
  store i32 0, i32* %2, align 4
  br label %149

149:                                              ; preds = %146, %142, %124, %108, %34, %22
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local %struct.intsmb_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_set_resource(i32, i32, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i64 @pci_get_devid(i32) #1

declare dso_local i64 @pci_get_revid(i32) #1

declare dso_local i32 @amd_pmio_read(%struct.resource*, i64) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, %struct.resource*) #1

declare dso_local i32 @bus_delete_resource(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
