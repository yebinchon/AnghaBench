; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/viapm/extr_viapm.c_viapm_pro_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/viapm/extr_viapm.c_viapm_pro_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.viapm_softc = type { i32, i32, i8* }

@.str = private unnamed_addr constant [36 x i8] c"VIA VT82C596A Power Management Unit\00", align 1
@VIAPM_TYP_596B = common dso_local global i8* null, align 8
@VIAPM_PRO_BASE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"VIA VT82C596B Power Management Unit\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"VIA VT82C686A Power Management Unit\00", align 1
@VIAPM_TYP_686A = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"VIA VT8233 Power Management Unit\00", align 1
@VIAPM_TYP_UNKNOWN = common dso_local global i8* null, align 8
@VIAPM_8233_BASE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"VIA VT8235 Power Management Unit\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"VIA VT8237 Power Management Unit\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"VIA CX700 Power Management Unit\00", align 1
@VIAPM_PRO_BA_MASK = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"could not set bus resource 0x%x\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"SMBus I/O base at 0x%x\0A\00", align 1
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@VIAPM_BASE_ADDR = common dso_local global i32 0, align 4
@VIAPM_PRO_SMBCTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @viapm_pro_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @viapm_pro_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.viapm_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i64 @device_get_softc(i32 %7)
  %9 = inttoptr i64 %8 to %struct.viapm_softc*
  store %struct.viapm_softc* %9, %struct.viapm_softc** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @pci_get_devid(i32 %10)
  switch i32 %11, label %89 [
    i32 135, label %12
    i32 134, label %17
    i32 133, label %22
    i32 131, label %27
    i32 132, label %27
    i32 130, label %32
    i32 129, label %37
    i32 128, label %42
  ]

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %13 = load i8*, i8** @VIAPM_TYP_596B, align 8
  %14 = load %struct.viapm_softc*, %struct.viapm_softc** %4, align 8
  %15 = getelementptr inbounds %struct.viapm_softc, %struct.viapm_softc* %14, i32 0, i32 2
  store i8* %13, i8** %15, align 8
  %16 = load i32, i32* @VIAPM_PRO_BASE, align 4
  store i32 %16, i32* %5, align 4
  br label %47

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  %18 = load i8*, i8** @VIAPM_TYP_596B, align 8
  %19 = load %struct.viapm_softc*, %struct.viapm_softc** %4, align 8
  %20 = getelementptr inbounds %struct.viapm_softc, %struct.viapm_softc* %19, i32 0, i32 2
  store i8* %18, i8** %20, align 8
  %21 = load i32, i32* @VIAPM_PRO_BASE, align 4
  store i32 %21, i32* %5, align 4
  br label %47

22:                                               ; preds = %1
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  %23 = load i8*, i8** @VIAPM_TYP_686A, align 8
  %24 = load %struct.viapm_softc*, %struct.viapm_softc** %4, align 8
  %25 = getelementptr inbounds %struct.viapm_softc, %struct.viapm_softc* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = load i32, i32* @VIAPM_PRO_BASE, align 4
  store i32 %26, i32* %5, align 4
  br label %47

27:                                               ; preds = %1, %1
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  %28 = load i8*, i8** @VIAPM_TYP_UNKNOWN, align 8
  %29 = load %struct.viapm_softc*, %struct.viapm_softc** %4, align 8
  %30 = getelementptr inbounds %struct.viapm_softc, %struct.viapm_softc* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* @VIAPM_8233_BASE, align 4
  store i32 %31, i32* %5, align 4
  br label %47

32:                                               ; preds = %1
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8** %6, align 8
  %33 = load i8*, i8** @VIAPM_TYP_UNKNOWN, align 8
  %34 = load %struct.viapm_softc*, %struct.viapm_softc** %4, align 8
  %35 = getelementptr inbounds %struct.viapm_softc, %struct.viapm_softc* %34, i32 0, i32 2
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* @VIAPM_8233_BASE, align 4
  store i32 %36, i32* %5, align 4
  br label %47

37:                                               ; preds = %1
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i8** %6, align 8
  %38 = load i8*, i8** @VIAPM_TYP_UNKNOWN, align 8
  %39 = load %struct.viapm_softc*, %struct.viapm_softc** %4, align 8
  %40 = getelementptr inbounds %struct.viapm_softc, %struct.viapm_softc* %39, i32 0, i32 2
  store i8* %38, i8** %40, align 8
  %41 = load i32, i32* @VIAPM_8233_BASE, align 4
  store i32 %41, i32* %5, align 4
  br label %47

42:                                               ; preds = %1
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8** %6, align 8
  %43 = load i8*, i8** @VIAPM_TYP_UNKNOWN, align 8
  %44 = load %struct.viapm_softc*, %struct.viapm_softc** %4, align 8
  %45 = getelementptr inbounds %struct.viapm_softc, %struct.viapm_softc* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  %46 = load i32, i32* @VIAPM_8233_BASE, align 4
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %42, %37, %32, %27, %22, %17, %12
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @pci_read_config(i32 %48, i32 %49, i32 4)
  %51 = load i32, i32* @VIAPM_PRO_BA_MASK, align 4
  %52 = and i32 %50, %51
  %53 = load %struct.viapm_softc*, %struct.viapm_softc** %4, align 8
  %54 = getelementptr inbounds %struct.viapm_softc, %struct.viapm_softc* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.viapm_softc*, %struct.viapm_softc** %4, align 8
  %57 = getelementptr inbounds %struct.viapm_softc, %struct.viapm_softc* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @SYS_RES_IOPORT, align 4
  %60 = load %struct.viapm_softc*, %struct.viapm_softc** %4, align 8
  %61 = getelementptr inbounds %struct.viapm_softc, %struct.viapm_softc* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.viapm_softc*, %struct.viapm_softc** %4, align 8
  %64 = getelementptr inbounds %struct.viapm_softc, %struct.viapm_softc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @bus_set_resource(i32 %58, i32 %59, i32 %62, i32 %65, i32 16)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %47
  %69 = load i32, i32* %3, align 4
  %70 = load %struct.viapm_softc*, %struct.viapm_softc** %4, align 8
  %71 = getelementptr inbounds %struct.viapm_softc, %struct.viapm_softc* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @device_printf(i32 %69, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @ENXIO, align 4
  store i32 %74, i32* %2, align 4
  br label %92

75:                                               ; preds = %47
  %76 = load i32, i32* @bootverbose, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = load i32, i32* %3, align 4
  %80 = load %struct.viapm_softc*, %struct.viapm_softc** %4, align 8
  %81 = getelementptr inbounds %struct.viapm_softc, %struct.viapm_softc* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @device_printf(i32 %79, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %78, %75
  %85 = load i32, i32* %3, align 4
  %86 = load i8*, i8** %6, align 8
  %87 = call i32 @device_set_desc(i32 %85, i8* %86)
  %88 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %88, i32* %2, align 4
  br label %92

89:                                               ; preds = %1
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* @ENXIO, align 4
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %90, %84, %68
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @pci_get_devid(i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @bus_set_resource(i32, i32, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
