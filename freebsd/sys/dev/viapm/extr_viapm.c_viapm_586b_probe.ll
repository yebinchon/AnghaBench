; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/viapm/extr_viapm.c_viapm_586b_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/viapm/extr_viapm.c_viapm_586b_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.viapm_softc = type { i32, i32, i32 }

@VIAPM_586B_REVID = common dso_local global i32 0, align 4
@VIAPM_TYP_586B_3040E = common dso_local global i32 0, align 4
@VIAPM_586B_3040E_BASE = common dso_local global i32 0, align 4
@VIAPM_586B_3040E_ACTIV = common dso_local global i32 0, align 4
@VIAPM_TYP_586B_3040F = common dso_local global i32 0, align 4
@VIAPM_586B_3040F_BASE = common dso_local global i32 0, align 4
@VIAPM_586B_3040F_ACTIV = common dso_local global i32 0, align 4
@VIAPM_586B_BA_MASK = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"could not set bus resource\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"VIA VT82C586B Power Management Unit\00", align 1
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @viapm_586b_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @viapm_586b_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.viapm_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i64 @device_get_softc(i32 %8)
  %10 = inttoptr i64 %9 to %struct.viapm_softc*
  store %struct.viapm_softc* %10, %struct.viapm_softc** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @pci_get_devid(i32 %11)
  switch i32 %12, label %79 [
    i32 128, label %13
  ]

13:                                               ; preds = %1
  %14 = load %struct.viapm_softc*, %struct.viapm_softc** %4, align 8
  %15 = call i32 @bzero(%struct.viapm_softc* %14, i32 12)
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @VIAPM_586B_REVID, align 4
  %18 = call i32 @pci_read_config(i32 %16, i32 %17, i32 1)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %36 [
    i32 131, label %20
    i32 130, label %35
    i32 129, label %35
  ]

20:                                               ; preds = %13
  %21 = load i32, i32* @VIAPM_TYP_586B_3040E, align 4
  %22 = load %struct.viapm_softc*, %struct.viapm_softc** %4, align 8
  %23 = getelementptr inbounds %struct.viapm_softc, %struct.viapm_softc* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @VIAPM_586B_3040E_BASE, align 4
  %25 = load %struct.viapm_softc*, %struct.viapm_softc** %4, align 8
  %26 = getelementptr inbounds %struct.viapm_softc, %struct.viapm_softc* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @VIAPM_586B_3040E_ACTIV, align 4
  %29 = call i32 @pci_read_config(i32 %27, i32 %28, i32 2)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @VIAPM_586B_3040E_ACTIV, align 4
  %32 = load i32, i32* %6, align 4
  %33 = or i32 %32, 1
  %34 = call i32 @pci_write_config(i32 %30, i32 %31, i32 %33, i32 2)
  br label %51

35:                                               ; preds = %13, %13
  br label %36

36:                                               ; preds = %13, %35
  %37 = load i32, i32* @VIAPM_TYP_586B_3040F, align 4
  %38 = load %struct.viapm_softc*, %struct.viapm_softc** %4, align 8
  %39 = getelementptr inbounds %struct.viapm_softc, %struct.viapm_softc* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @VIAPM_586B_3040F_BASE, align 4
  %41 = load %struct.viapm_softc*, %struct.viapm_softc** %4, align 8
  %42 = getelementptr inbounds %struct.viapm_softc, %struct.viapm_softc* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @VIAPM_586B_3040F_ACTIV, align 4
  %45 = call i32 @pci_read_config(i32 %43, i32 %44, i32 1)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @VIAPM_586B_3040F_ACTIV, align 4
  %48 = load i32, i32* %7, align 4
  %49 = or i32 %48, 128
  %50 = call i32 @pci_write_config(i32 %46, i32 %47, i32 %49, i32 1)
  br label %51

51:                                               ; preds = %36, %20
  %52 = load i32, i32* %3, align 4
  %53 = load %struct.viapm_softc*, %struct.viapm_softc** %4, align 8
  %54 = getelementptr inbounds %struct.viapm_softc, %struct.viapm_softc* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @pci_read_config(i32 %52, i32 %55, i32 4)
  %57 = load i32, i32* @VIAPM_586B_BA_MASK, align 4
  %58 = and i32 %56, %57
  %59 = load %struct.viapm_softc*, %struct.viapm_softc** %4, align 8
  %60 = getelementptr inbounds %struct.viapm_softc, %struct.viapm_softc* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @SYS_RES_IOPORT, align 4
  %63 = load %struct.viapm_softc*, %struct.viapm_softc** %4, align 8
  %64 = getelementptr inbounds %struct.viapm_softc, %struct.viapm_softc* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.viapm_softc*, %struct.viapm_softc** %4, align 8
  %67 = getelementptr inbounds %struct.viapm_softc, %struct.viapm_softc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @bus_set_resource(i32 %61, i32 %62, i32 %65, i32 %68, i32 256)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %51
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @device_printf(i32 %72, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %74 = load i32, i32* @ENXIO, align 4
  store i32 %74, i32* %2, align 4
  br label %82

75:                                               ; preds = %51
  %76 = load i32, i32* %3, align 4
  %77 = call i32 @device_set_desc(i32 %76, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %78 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %78, i32* %2, align 4
  br label %82

79:                                               ; preds = %1
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* @ENXIO, align 4
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %80, %75, %71
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @pci_get_devid(i32) #1

declare dso_local i32 @bzero(%struct.viapm_softc*, i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @bus_set_resource(i32, i32, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
