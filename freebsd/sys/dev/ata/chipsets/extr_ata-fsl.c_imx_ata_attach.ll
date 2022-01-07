; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-fsl.c_imx_ata_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-fsl.c_imx_ata_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { i32, i32, i64, i32, i32, i64, i32, i32, i32*, i32 }

@ata_pci_ch_attach = common dso_local global i32 0, align 4
@ata_pci_ch_detach = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@imx_ata_intr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to setup interrupt\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@imx_ata_ch_attach = common dso_local global i32 0, align 4
@imx_ata_setmode = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"ata\00", align 1
@ata_devclass = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"failed to add ata child device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @imx_ata_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_ata_attach(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ata_pci_controller*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call %struct.ata_pci_controller* @device_get_softc(i32* %7)
  store %struct.ata_pci_controller* %8, %struct.ata_pci_controller** %4, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i64 @ata_legacy(i32* %9)
  %11 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %12 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %11, i32 0, i32 2
  store i64 %10, i64* %12, align 8
  %13 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %14 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %16 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %15, i32 0, i32 1
  store i32 -1, i32* %16, align 4
  %17 = load i32, i32* @ata_pci_ch_attach, align 4
  %18 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %19 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @ata_pci_ch_detach, align 4
  %21 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %22 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %21, i32 0, i32 9
  store i32 %20, i32* %22, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %25 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %24, i32 0, i32 8
  store i32* %23, i32** %25, align 8
  %26 = load i32, i32* @SYS_RES_MEMORY, align 4
  %27 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %28 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %27, i32 0, i32 6
  store i32 %26, i32* %28, align 8
  %29 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %30 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %29, i32 0, i32 5
  store i64 0, i64* %30, align 8
  %31 = load i32*, i32** %3, align 8
  %32 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %33 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %36 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %35, i32 0, i32 5
  %37 = load i32, i32* @RF_ACTIVE, align 4
  %38 = call i32 @bus_alloc_resource_any(i32* %31, i32 %34, i64* %36, i32 %37)
  %39 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %40 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %39, i32 0, i32 7
  store i32 %38, i32* %40, align 4
  %41 = load i32*, i32** %3, align 8
  %42 = load i32, i32* @imx_ata_intr, align 4
  %43 = call i64 @ata_setup_interrupt(i32* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %1
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @device_printf(i32* %46, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @ENXIO, align 4
  store i32 %48, i32* %2, align 4
  br label %88

49:                                               ; preds = %1
  %50 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %51 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  %52 = load i32, i32* @imx_ata_ch_attach, align 4
  %53 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %54 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @imx_ata_setmode, align 4
  %56 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %57 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 8
  store i32 0, i32* %6, align 4
  %58 = load i32*, i32** %3, align 8
  %59 = load i32, i32* %6, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %49
  %62 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %63 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32, i32* %6, align 4
  br label %71

68:                                               ; preds = %61, %49
  %69 = load i32, i32* @ata_devclass, align 4
  %70 = call i32 @devclass_find_free_unit(i32 %69, i32 2)
  br label %71

71:                                               ; preds = %68, %66
  %72 = phi i32 [ %67, %66 ], [ %70, %68 ]
  %73 = call i32* @device_add_child(i32* %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  store i32* %73, i32** %5, align 8
  %74 = load i32*, i32** %5, align 8
  %75 = icmp eq i32* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i32*, i32** %3, align 8
  %78 = call i32 @device_printf(i32* %77, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %85

79:                                               ; preds = %71
  %80 = load i32*, i32** %5, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = inttoptr i64 %82 to i8*
  %84 = call i32 @device_set_ivars(i32* %80, i8* %83)
  br label %85

85:                                               ; preds = %79, %76
  %86 = load i32*, i32** %3, align 8
  %87 = call i32 @bus_generic_attach(i32* %86)
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %85, %45
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local %struct.ata_pci_controller* @device_get_softc(i32*) #1

declare dso_local i64 @ata_legacy(i32*) #1

declare dso_local i32 @bus_alloc_resource_any(i32*, i32, i64*, i32) #1

declare dso_local i64 @ata_setup_interrupt(i32*, i32) #1

declare dso_local i32 @device_printf(i32*, i8*) #1

declare dso_local i32* @device_add_child(i32*, i8*, i32) #1

declare dso_local i32 @devclass_find_free_unit(i32, i32) #1

declare dso_local i32 @device_set_ivars(i32*, i8*) #1

declare dso_local i32 @bus_generic_attach(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
