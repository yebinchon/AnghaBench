; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/viapm/extr_viapm.c_viapm_pro_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/viapm/extr_viapm.c_viapm_pro_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.viapm_softc = type { i32, i64, i64, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"viapm\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"could not allocate bus space\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@VIAPM_PRO_REVID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"SMBus revision code 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"smbus\00", align 1
@SMBSCTRL = common dso_local global i32 0, align 4
@SMBSCTRL_ENABLE = common dso_local global i32 0, align 4
@VIAPM_PRO_SMBCTRL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@PCIC_BRIDGE = common dso_local global i64 0, align 8
@PCIS_BRIDGE_ISA = common dso_local global i64 0, align 8
@RF_SHAREABLE = common dso_local global i32 0, align 4
@SMBHCTRL = common dso_local global i32 0, align 4
@SMBHCTRL_ENABLE = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@viasmb_intr = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @viapm_pro_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @viapm_pro_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.viapm_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @device_get_softc(i32 %6)
  %8 = inttoptr i64 %7 to %struct.viapm_softc*
  store %struct.viapm_softc* %8, %struct.viapm_softc** %4, align 8
  %9 = load %struct.viapm_softc*, %struct.viapm_softc** %4, align 8
  %10 = getelementptr inbounds %struct.viapm_softc, %struct.viapm_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @device_get_nameunit(i32 %11)
  %13 = load i32, i32* @MTX_DEF, align 4
  %14 = call i32 @mtx_init(i32* %10, i32 %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @SYS_RES_IOPORT, align 4
  %17 = load %struct.viapm_softc*, %struct.viapm_softc** %4, align 8
  %18 = getelementptr inbounds %struct.viapm_softc, %struct.viapm_softc* %17, i32 0, i32 4
  %19 = load i32, i32* @RF_ACTIVE, align 4
  %20 = call i64 @bus_alloc_resource_any(i32 %15, i32 %16, i64* %18, i32 %19)
  %21 = load %struct.viapm_softc*, %struct.viapm_softc** %4, align 8
  %22 = getelementptr inbounds %struct.viapm_softc, %struct.viapm_softc* %21, i32 0, i32 3
  store i64 %20, i64* %22, align 8
  %23 = icmp ne i64 %20, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* %3, align 4
  %26 = call i32 (i32, i8*, ...) @device_printf(i32 %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %59

27:                                               ; preds = %1
  %28 = load i64, i64* @bootverbose, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @VIAPM_PRO_REVID, align 4
  %33 = call i32 @pci_read_config(i32 %31, i32 %32, i32 1)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 (i32, i8*, ...) @device_printf(i32 %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %30, %27
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @device_add_child(i32 %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 -1)
  %40 = load %struct.viapm_softc*, %struct.viapm_softc** %4, align 8
  %41 = getelementptr inbounds %struct.viapm_softc, %struct.viapm_softc* %40, i32 0, i32 5
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @bus_generic_attach(i32 %42)
  %44 = load i32, i32* @SMBSCTRL, align 4
  %45 = load i32, i32* @SMBSCTRL, align 4
  %46 = call i32 @VIAPM_INB(i32 %45)
  %47 = load i32, i32* @SMBSCTRL_ENABLE, align 4
  %48 = xor i32 %47, -1
  %49 = and i32 %46, %48
  %50 = call i32 @VIAPM_OUTB(i32 %44, i32 %49)
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @VIAPM_PRO_SMBCTRL, align 4
  %53 = call i32 @pci_read_config(i32 %51, i32 %52, i32 1)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @VIAPM_PRO_SMBCTRL, align 4
  %56 = load i32, i32* %5, align 4
  %57 = or i32 %56, 1
  %58 = call i32 @pci_write_config(i32 %54, i32 %55, i32 %57, i32 1)
  store i32 0, i32* %2, align 4
  br label %79

59:                                               ; preds = %24
  %60 = load %struct.viapm_softc*, %struct.viapm_softc** %4, align 8
  %61 = getelementptr inbounds %struct.viapm_softc, %struct.viapm_softc* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %59
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @SYS_RES_IOPORT, align 4
  %67 = load %struct.viapm_softc*, %struct.viapm_softc** %4, align 8
  %68 = getelementptr inbounds %struct.viapm_softc, %struct.viapm_softc* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.viapm_softc*, %struct.viapm_softc** %4, align 8
  %71 = getelementptr inbounds %struct.viapm_softc, %struct.viapm_softc* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @bus_release_resource(i32 %65, i32 %66, i64 %69, i64 %72)
  br label %74

74:                                               ; preds = %64, %59
  %75 = load %struct.viapm_softc*, %struct.viapm_softc** %4, align 8
  %76 = getelementptr inbounds %struct.viapm_softc, %struct.viapm_softc* %75, i32 0, i32 0
  %77 = call i32 @mtx_destroy(i32* %76)
  %78 = load i32, i32* @ENXIO, align 4
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %74, %37
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i64 @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

declare dso_local i32 @VIAPM_OUTB(i32, i32) #1

declare dso_local i32 @VIAPM_INB(i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i64, i64) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
